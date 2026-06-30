import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:sebartv/providers/movie_provider.dart';
import 'package:sebartv/domain/models/models.dart';

final searchQueryProvider = StateProvider<String>((ref) => '');

final searchResultsProvider = FutureProvider<List<Movie>>((ref) async {
  final query = ref.watch(searchQueryProvider);
  if (query.isEmpty) return [];
  final repository = ref.watch(movieRepositoryProvider);
  return repository.searchMovies(query);
});

class SearchScreen extends ConsumerWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchResults = ref.watch(searchResultsProvider);

    return Scaffold(
      appBar: AppBar(
        title: TextField(
          decoration: const InputDecoration(
            hintText: 'گەڕان بەدوای فیلم و زنجیرە...',
            border: InputBorder.none,
            hintStyle: TextStyle(color: Colors.white70),
          ),
          style: const TextStyle(color: Colors.white),
          onSubmitted: (value) {
            ref.read(searchQueryProvider.notifier).state = value;
          },
          onChanged: (value) {
            // Optional: Debounce this in a real app
            if (value.length > 2) {
              ref.read(searchQueryProvider.notifier).state = value;
            }
          },
        ),
      ),
      body: searchResults.when(
        data: (movies) {
          if (movies.isEmpty) {
            return const Center(child: Text('گەڕان بکە بۆ دۆزینەوەی فیلمەکان'));
          }
          return ListView.builder(
            itemCount: movies.length,
            itemBuilder: (context, index) {
              final movie = movies[index];
              return ListTile(
                leading: Image.network(
                  movie.getThumbnail(),
                  width: 50,
                  height: 75,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) =>
                      const Icon(Icons.movie),
                ),
                title: Text(movie.title),
                subtitle: Text(movie.type == 'series' ? 'زنجیرە' : 'فیلم'),
                onTap: () {
                  context.push('/detail/${movie.type == 'series' ? 'series1' : 'movies1'}/${movie.id}');
                },
              );
            },
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) => Center(child: Text('هەڵە: $error')),
      ),
    );
  }
}
