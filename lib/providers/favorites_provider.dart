import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sebartv/data/repositories/favorites_repository.dart';
import 'package:sebartv/domain/models/models.dart';

final favoritesRepositoryProvider = Provider<FavoritesRepository>((ref) {
  return FavoritesRepository();
});

final favoritesProvider = FutureProvider<List<Movie>>((ref) async {
  final repository = ref.watch(favoritesRepositoryProvider);
  return repository.getFavorites();
});

final isFavoriteProvider = FutureProvider.family<bool, int>((ref, movieId) async {
  final repository = ref.watch(favoritesRepositoryProvider);
  return repository.isFavorite(movieId);
});
