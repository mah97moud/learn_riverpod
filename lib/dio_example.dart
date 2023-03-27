import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'dio_example.g.dart';

@riverpod
Future<List> fetchProducts(
  FetchProductsRef ref, {
  required int page,
  int limit = 50,
}) async {
  final dio = Dio();
  final response =
      await dio.get('https://my-api/products?page=$page&limit=$limit');
  final json = response.data! as List;
  return json;
}
