import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/tmdb_movie.dart';

class MovieDetailsScreen extends ConsumerWidget {
  const MovieDetailsScreen(
      {super.key, required this.movieId, required this.movie});
  final int movieId;
  final TMDBMovie? movie;

  @override
  Widget build(BuildContext context, WidgetRef ref) {

     return Scaffold(
        appBar: AppBar(
          title: Text('Movie Details'),
        ),
        body: Column(
          children: [
            // MovieListTile(movie: movie!),
          ],
        ),
      );
    // if (movie != null) {
    //   return Scaffold(
    //     appBar: AppBar(
    //       title: Text('Movie Details'),
    //     ),
    //     body: Column(
    //       children: [
    //         // MovieListTile(movie: movie!),
    //       ],
    //     ),
    //   );
    // } else {
    //   final movieAsync = ref.watch(movieProvider(movieId: movieId));
    //   return movieAsync.when(
    //     error: (e, st) => Scaffold(
    //       appBar: AppBar(
    //         title: Text(movie?.title ?? 'Error'),
    //       ),
    //       body: Center(child: Text(e.toString())),
    //     ),
    //     loading: () => Scaffold(
    //       appBar: AppBar(
    //         title: Text(movie?.title ?? 'Loading'),
    //       ),
    //       body: Column(
    //         children: const [
    //           MovieListTileShimmer(),
    //         ],
    //       ),
    //     ),
    //     data: (movie) => Scaffold(
    //       appBar: AppBar(
    //         title: Text(movie.title),
    //       ),
    //       body: Column(
    //         children: [
    //           MovieListTile(movie: movie),
    //         ],
    //       ),
    //     ),
    //   );
   
    // }
  }
}
