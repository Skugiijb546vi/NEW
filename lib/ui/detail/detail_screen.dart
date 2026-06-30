import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:sebartv/providers/movie_provider.dart';
import 'package:sebartv/providers/favorites_provider.dart';

class DetailScreen extends ConsumerWidget {
  final int movieId;
  final String section;

  const DetailScreen({
    super.key,
    required this.movieId,
    required this.section,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final movieDetailAsync = ref.watch(movieDetailProvider((movieId: movieId, section: section)));
    final isFavAsync = ref.watch(isFavoriteProvider(movieId));

    return Scaffold(
      body: movieDetailAsync.when(
        data: (movie) {
          if (movie == null) {
            return Scaffold(
              appBar: AppBar(),
              body: const Center(child: Text('زانیاری نەدۆزرایەوە')),
            );
          }
          return CustomScrollView(
            slivers: [
              SliverAppBar(
                expandedHeight: 300,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                  title: Text(movie.title, style: const TextStyle(shadows: [Shadow(color: Colors.black, blurRadius: 4)])),
                  background: Stack(
                    fit: StackFit.expand,
                    children: [
                      Image.network(
                        movie.getThumbnail(),
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) =>
                            const Icon(Icons.movie, size: 100),
                      ),
                      const DecoratedBox(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [Colors.transparent, Colors.black87],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                actions: [
                  isFavAsync.when(
                    data: (isFav) => IconButton(
                      icon: Icon(isFav ? Icons.favorite : Icons.favorite_border, color: isFav ? Colors.red : Colors.white),
                      onPressed: () async {
                        final repo = ref.read(favoritesRepositoryProvider);
                        if (isFav) {
                          await repo.removeFavorite(movie.id);
                        } else {
                          await repo.addFavorite(movie);
                        }
                        ref.invalidate(isFavoriteProvider(movie.id));
                        ref.invalidate(favoritesProvider);
                      },
                    ),
                    loading: () => const SizedBox.shrink(),
                    error: (_, __) => const SizedBox.shrink(),
                  ),
                ],
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('IMDb: ${movie.imdb}', style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.amber)),
                          Text('ساڵ: ${movie.year}', style: const TextStyle(fontSize: 16)),
                        ],
                      ),
                      const SizedBox(height: 16),
                      Text(
                        movie.description,
                        style: const TextStyle(fontSize: 16, height: 1.5),
                      ),
                      const SizedBox(height: 24),
                      SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: ElevatedButton.icon(
                          onPressed: () {
                            context.push('/player/$section/$movieId');
                          },
                          icon: const Icon(Icons.play_arrow),
                          label: const Text('سەیرکردن'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Theme.of(context).colorScheme.primary,
                            foregroundColor: Colors.white,
                          ),
                        ),
                      ),
                      if (movie.type == 'series' && movie.seasons!.isNotEmpty) ...[
                        const SizedBox(height: 24),
                        const Text('وەرزەکان و ئەڵقەکان', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                        const SizedBox(height: 8),
                        ...movie.seasons!.map((season) {
                          return ExpansionTile(
                            title: Text(season.title),
                            children: season.episodes.map((ep) => ListTile(
                              leading: const Icon(Icons.play_circle_outline),
                              title: Text(ep.title),
                              trailing: const Icon(Icons.download),
                              onTap: () {
                                // Play episode
                              },
                            )).toList(),
                          );
                        }),
                      ]
                    ],
                  ),
                ),
              )
            ],
          );
        },
        loading: () => const Scaffold(body: Center(child: CircularProgressIndicator())),
        error: (error, stack) => Scaffold(appBar: AppBar(), body: Center(child: Text('هەڵە: $error'))),
      ),
    );
  }
}
