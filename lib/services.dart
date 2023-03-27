import 'package:dio/dio.dart';
import 'package:learn_riverpod/dio_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'services.g.dart';

@riverpod 
Services birthDayService(BirthDayServiceRef ref) {
  return Services(ref.watch(dioProvider));
}

class Services {
  final Dio client;

  Services(this.client);

  Future<Response> getBirthDay() async {
    return await client.get(
      '/api/HR/GetEmployeesBirthDays?Direction=ltr&InCT=&PageSize=6&CurrentPage=1',
    );
  }
}
