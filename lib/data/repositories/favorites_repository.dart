import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sebartv/domain/models/models.dart';

class FavoritesRepository {
  static const String _favoritesKey = 'favorite_movies';

  Future<List<Movie>> getFavorites() async {
    final prefs = await SharedPreferences.getInstance();
    final String? favoritesJson = prefs.getString(_favoritesKey);
    if (favoritesJson == null) return [];

    try {
      final List<dynamic> decoded = jsonDecode(favoritesJson);
      return decoded.map((e) => Movie.fromJson(e as Map<String, dynamic>)).toList();
    } catch (e) {
      return [];
    }
  }

  Future<void> addFavorite(Movie movie) async {
    final favorites = await getFavorites();
    if (!favorites.any((m) => m.id == movie.id)) {
      favorites.add(movie);
      await _saveFavorites(favorites);
    }
  }

  Future<void> removeFavorite(int movieId) async {
    final favorites = await getFavorites();
    favorites.removeWhere((m) => m.id == movieId);
    await _saveFavorites(favorites);
  }

  Future<bool> isFavorite(int movieId) async {
    final favorites = await getFavorites();
    return favorites.any((m) => m.id == movieId);
  }

  Future<void> clearFavorites() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_favoritesKey);
  }

  Future<void> _saveFavorites(List<Movie> favorites) async {
    final prefs = await SharedPreferences.getInstance();
    final String encoded = jsonEncode(favorites.map((e) => e.toJson()).toList());
    await prefs.setString(_favoritesKey, encoded);
  }
}
