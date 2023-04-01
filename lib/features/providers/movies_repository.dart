import 'dart:async';

import 'package:learn_riverpod/env/env.dart';
import 'package:learn_riverpod/features/movies/data/movies_pagination.dart';
import 'package:learn_riverpod/features/movies/data/movies_repository.dart';
import 'package:learn_riverpod/features/movies/domain/tmdb_movie.dart';
import 'package:learn_riverpod/utils/cancel_token_ref.dart';
import 'package:learn_riverpod/utils/dio_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'movies_repository.g.dart';

@riverpod
MoviesRepository moviesRepository(MoviesRepositoryRef ref) {

  return MoviesRepository(
      client: ref.watch(dioProvider),
      apiKey: Env.tmdbApiKey,
    );
}

class AbortedException implements Exception {}

/// Provider to fetch a movie by ID

@riverpod
Future<TMDBMovie> movie(
  MovieRef ref, {
  required int movieId,
}) {
  final cancelToken = ref.cancelToken();
  return ref.watch(moviesRepositoryProvider).movie(
        movieId: movieId,
        cancelToken: cancelToken,
      );
}

/// Provider to fetch paginated of movies data

@riverpod
Future<List<TMDBMovie>> fetchMovies(
  FetchMoviesRef ref, {
  required MoviesPagination pagination,
}) async {
  final moviesRepo = ref.watch(moviesRepositoryProvider);
  final cancelToken = ref.cancelToken();

  final link = ref.keepAlive();

  Timer? timer;

  ref.onDispose(() {
    timer?.cancel();
    cancelToken.cancel();
  });

  ref.onCancel(() {
    timer = Timer(const Duration(seconds: 30), () {
      link.close();
    });
  });

  ref.onResume(() {
    timer?.cancel();
  });

  if (pagination.query.isEmpty) {
    return moviesRepo.nowPlayingMovies(
      page: pagination.page,
      cancelToken: cancelToken,
    );
  } else {
    await Future.delayed(const Duration(milliseconds: 500));
    if (cancelToken.isCancelled) throw AbortedException();
    return moviesRepo.searchMovies(
      page: pagination.page,
      query: pagination.query,
      cancelToken: cancelToken,
    );
  }
}
