import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sebartv/data/repositories/movie_repository.dart';
import 'package:sebartv/domain/models/models.dart';

final movieRepositoryProvider = Provider<MovieRepository>((ref) {
  return MovieRepository();
});

final moviesProvider = FutureProvider.family<Map<String, dynamic>, String>((ref, section) async {
  final repository = ref.watch(movieRepositoryProvider);
  return repository.getMovies(20, null, section);
});

final movieDetailProvider = FutureProvider.family<Movie?, ({int movieId, String section})>((ref, arg) async {
  final repository = ref.watch(movieRepositoryProvider);
  return repository.getMovieDetail(arg.movieId, arg.section);
});
