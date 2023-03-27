import 'dart:async';

import 'package:learn_riverpod/birthday_model/birthday_model.dart';
import 'package:learn_riverpod/repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'birthdays_provider.g.dart';

@riverpod
Future<List<BirthdayModel>> birthdays(BirthdaysRef ref) {
  // get the [KeepAliveLink]
  final link = ref.keepAlive();
  // start a 60 second timer
  final timer = Timer(const Duration(minutes: 10), () {
    // dispose on timeout
    link.close();
  });
  // make sure to cancel the timer when the provider state is disposed
  ref.onDispose(() => timer.cancel());
  return ref.watch(birthdayRepositoryProvider).getBirthDays();
}
