import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:learn_riverpod/features/movies/data/movies_pagination.dart';
import 'package:learn_riverpod/features/movies/data/movies_repository.dart';
import 'package:learn_riverpod/features/movies/presentation/movies/moive_list_tile_shimmer.dart';
import 'package:learn_riverpod/routing/app_router.dart';

import 'movie_list_tile.dart';
import 'movies_search_bar.dart';

class MoviesSearchScreen extends ConsumerWidget {
  const MoviesSearchScreen({super.key});

  static const pageSize = 20;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final query = ref.watch(movieSearchTextProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('TMDB Movies'),
      ),
      body: Column(
        children: [
          const MoviesSearchBar(),
          Expanded(
            child: ListView.custom(
              childrenDelegate: SliverChildBuilderDelegate(
                (context, index) {
                  final page = index ~/ pageSize + 1;
                  final indexinPage = index % pageSize;

                  final moviesList = ref.watch(
                    fetchMoviesProvider(
                      pagination: MoviesPagination(
                        page: page,
                        query: query,
                      ),
                    ),
                  );

                  return moviesList.when(
                    data: (movies) {
                      if (indexinPage >= movies.length) {
                        return const MovieListTileShimmer();
                      }
                      final movie = movies[indexinPage];
                      return MovieListTile(
                        movie: movie,
                        debugIndex: index,
                        onPressed: () => context.goNamed(
                          AppRoute.movie.name,
                          params: {'id': movie.id.toString()},
                          extra: movie,
                        ),
                      );
                    },
                    error: (error, stackTrace) => Text('Error $error'),
                    loading: () => const MovieListTileShimmer(),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
