import 'package:firebase_database/firebase_database.dart';
import 'package:sebartv/domain/models/models.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MovieRepository {
  final FirebaseDatabase _database;

  MovieRepository({FirebaseDatabase? database})
      : _database = database ?? FirebaseDatabase.instance;

  String _getExactSection(String section) {
    final s = section.toLowerCase();
    if (s.contains("subtitled")) return "subtitled_movies1";
    if (s.contains("series")) return "series1";
    if (s.contains("local") || s.contains("channel")) return "local_channels1";
    if (s.contains("movies")) return "movies1";
    return "subtitled_movies1";
  }

  Future<Movie?> getMovieDetail(int movieId, String section) async {
    try {
      final exactSection = _getExactSection(section);
      final snapshot = await _database.ref().child(exactSection).child(movieId.toString()).get();
      
      if (snapshot.exists) {
        final data = snapshot.value as Map<dynamic, dynamic>?;
        if (data == null) return null;
        return _parseMovieFromMap(snapshot.key ?? "0", data, exactSection);
      }
      return null;
    } catch (e) {
      print("Error fetching movie detail: $e");
      return null;
    }
  }

  Future<bool> incrementMovieViews(int movieId, String section) async {
    try {
      final exactSection = _getExactSection(section);
      final ref = _database.ref().child(exactSection).child(movieId.toString());
      final snapshot = await ref.get();
      
      if (snapshot.exists) {
        await ref.child("views").set(ServerValue.increment(1));
        return true;
      }
      return false;
    } catch (e) {
      return false;
    }
  }

  Future<Map<String, dynamic>> getMovies(int limit, String? lastKey, String section) async {
    try {
      final exactSection = _getExactSection(section);
      Query query = _database.ref().child(exactSection).orderByKey();

      if (lastKey != null) {
        query = query.endAt(lastKey).limitToLast(limit + 1);
      } else {
        query = query.limitToLast(limit);
      }

      final snapshot = await query.once();
      List<Movie> movieList = [];
      String? newLastKey;

      if (snapshot.snapshot.exists) {
        final children = snapshot.snapshot.children.toList();
        for (var child in children) {
          if (lastKey != null && child.key == lastKey) {
            continue;
          }
          if (newLastKey == null) {
            newLastKey = child.key;
          }

          final dataMap = child.value as Map<dynamic, dynamic>?;
          if (dataMap == null) continue;

          final movie = _parseMovieFromMap(child.key ?? "0", dataMap, exactSection);
          if (movie.title.isNotEmpty) {
            movieList.add(movie);
          }
        }
      }
      return {
        'movies': movieList.reversed.toList(),
        'lastKey': newLastKey,
      };
    } catch (e) {
      print("Error parsing movies: $e");
      return {
        'movies': <Movie>[],
        'lastKey': null,
      };
    }
  }

  Future<List<Movie>> searchMovies(String query) async {
    if (query.isEmpty) return [];
    try {
      final snapshot1 = await _database.ref().child('movies1').orderByChild('name')
          .startAt(query).endAt('$query\uf8ff').once();
      final snapshot2 = await _database.ref().child('series1').orderByChild('name')
          .startAt(query).endAt('$query\uf8ff').once();

      List<Movie> results = [];
      
      void processSnapshot(DataSnapshot snapshot, String exactSection) {
        if (snapshot.exists) {
          for (var child in snapshot.children) {
            final dataMap = child.value as Map<dynamic, dynamic>?;
            if (dataMap != null) {
              final movie = _parseMovieFromMap(child.key ?? "0", dataMap, exactSection);
              if (movie.title.isNotEmpty) {
                results.add(movie);
              }
            }
          }
        }
      }

      processSnapshot(snapshot1.snapshot, 'movies1');
      processSnapshot(snapshot2.snapshot, 'series1');

      return results;
    } catch (e) {
      print("Error searching movies: $e");
      return [];
    }
  }

  Movie _parseMovieFromMap(String key, Map<dynamic, dynamic> data, String path) {
    // Sources
    List<Source> sources = [];
    if (data['sources'] is List) {
      for (var item in data['sources']) {
        if (item is Map) {
          sources.add(Source(
            id: int.tryParse(item['id']?.toString() ?? '0') ?? 0,
            url: item['url']?.toString() ?? '',
            quality: item['quality']?.toString() ?? 'Auto',
          ));
        }
      }
    }

    // Seasons
    List<Season> seasons = [];
    if (data['seasons'] is List) {
      for (var item in data['seasons']) {
        if (item is Map) {
          List<Episode> episodes = [];
          if (item['episodes'] is List) {
            for (var epItem in item['episodes']) {
              if (epItem is Map) {
                episodes.add(Episode(
                  id: int.tryParse(epItem['id']?.toString() ?? '0') ?? 0,
                  title: epItem['title']?.toString() ?? '',
                  url: epItem['url']?.toString() ?? '',
                  image: epItem['image']?.toString() ?? '',
                  duration: epItem['duration']?.toString(),
                ));
              }
            }
          }
          seasons.add(Season(
            id: int.tryParse(item['id']?.toString() ?? '0') ?? 0,
            title: item['title']?.toString() ?? '',
            episodes: episodes,
          ));
        }
      }
    }

    // Genres
    List<Genre> genres = [];
    if (data['genres'] is List) {
      for (var item in data['genres']) {
        if (item is Map) {
          genres.add(Genre(
            id: int.tryParse(item['id']?.toString() ?? '0') ?? 0,
            title: item['title']?.toString() ?? '',
          ));
        }
      }
    }

    String titleOrName = data['name']?.toString() ?? data['title']?.toString() ?? "فیلمی بێ ناو";
    String img = data['image']?.toString() ?? data['poster']?.toString() ?? data['logo']?.toString() ?? "";
    
    int firebaseId = 0;
    if (data['id'] is num) {
      firebaseId = (data['id'] as num).toInt();
    } else if (data['id'] != null) {
      firebaseId = int.tryParse(data['id'].toString()) ?? key.hashCode;
    } else {
      firebaseId = int.tryParse(key) ?? key.hashCode;
    }

    String movieType = path.contains("series") ? "series" : (data['type']?.toString() ?? "movie");
    bool isMovieDubbed = (path == "movies1") || (data['isDubbed'] == true);
    String urlString = data['url']?.toString() ?? data['stream_url']?.toString() ?? data['link']?.toString() ?? "";

    return Movie(
      id: firebaseId,
      title: titleOrName,
      description: data['description']?.toString() ?? "",
      catchphrase: data['catchphrase']?.toString(),
      price: int.tryParse(data['price']?.toString() ?? '0') ?? 0,
      badge_text: data['badge_text']?.toString(),
      pesh: data['pesh']?.toString(),
      translation: data['translation']?.toString(),
      year: int.tryParse(data['year']?.toString() ?? '0') ?? 0,
      imdb: double.tryParse(data['imdb']?.toString() ?? '0') ?? 0.0,
      image: img,
      poster: img,
      url: urlString,
      subtitleKurdish: data['subtitleKurdish']?.toString(),
      subtitleEnglish: data['subtitleEnglish']?.toString(),
      subtitleArabic: data['subtitleArabic']?.toString(),
      type: movieType,
      sources: sources,
      genres: genres,
      seasons: seasons,
      views: int.tryParse(data['views']?.toString() ?? '0') ?? 0,
      isDubbed: isMovieDubbed,
      dubbedAudioUrl: data['dubbedAudioUrl']?.toString(),
      hasSubtitle: data['hasSubtitle'] == true,
      introEndTime: int.tryParse(data['introEndTime']?.toString() ?? '0') ?? 0,
      genre_id: int.tryParse(data['genre_id']?.toString() ?? '0') ?? 0,
    );
  }
}
