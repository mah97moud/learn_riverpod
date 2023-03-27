import 'package:dio/dio.dart';
import 'package:learn_riverpod/birthday_model/birthday_model.dart';
import 'package:learn_riverpod/services.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'repository.g.dart';

@riverpod
Repository birthdayRepository(BirthdayRepositoryRef ref) =>
 Repository(birthdayService: ref.watch(birthDayServiceProvider)); 

class Repository {
  final Services birthdayService;

  Repository({required this.birthdayService});

  Future<List<BirthdayModel>> getBirthDays() async {
    try {
      final res = await birthdayService.getBirthDay();
      final List data = res.data;
      final birthdays =
          List<BirthdayModel>.from(data.map((e) => BirthdayModel.fromJson(e)));
      return birthdays;
    } catch (e) {
      rethrow;
    }
  }
}
