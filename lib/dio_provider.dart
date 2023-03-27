import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'dio_provider.g.dart';

@riverpod
Dio dio(DioRef ref) {
  final Dio dio = Dio(
    BaseOptions(baseUrl: 'https://demomob.erppluscloud.com', headers: {
      'Authorization':
          'Bearer dJAl2PUY1S5qpSAZXr9qFy3_JcCcAonVzXEXtHeQlZDjlM0sP9wpF4nkGWD0HkRbRQCIUE80qU50DOJmRhOto7jebHna5peSM2ozxaDnSysMq2epWuLcjYRrHWR6ZJYCYKjioGcOFbM0z-dC1FWB6JJfrND25UK5MFVdwxnexy9NdCEdj9AfR6TezUbJNh6b1O7fNjqv4be2u0A8DYNZj7VkCJevUlaYEdZaHjGRFJNwfxy-NFxucEoaIOEVlIADLiDbW7riZgrwkklR-sMS3s9O45PScf5wwAwi9LJUPpiAFkJtILannA0mKyblZ9VDLQaiTXaUQ4Df88Ttr67n3-qO36zjzO1GU_c0PEQHaPgnRrUv55h1PyBFV38JrSl4b-F72iU4KMhZpaE4vgoJqxzBH1ZSE62-6WBpfsRye9O8Em2clyl9Hoiy-2N3uJ-1ebDPmk50UNNwU8UBTke5a-q1AMDJBhydjpQYQtrKlFz5uahoy0xZzrJU3DzzMiumxVU_hVn90NOLkPj0JX5wLCNoE_TQJvjE3f9VDn3-xQ0qpcfwlnaNARnoTaYPhXF8IQTyFQkczWFgNsoJ6_TYxg',
    }),
  );
  return dio;
}
