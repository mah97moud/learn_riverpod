import 'package:freezed_annotation/freezed_annotation.dart';

part 'birthday_model.freezed.dart';
part 'birthday_model.g.dart';

@freezed
class BirthdayModel with _$BirthdayModel {
  factory BirthdayModel({
    @JsonKey(name: 'Id') int? id,
    @JsonKey(name: 'EmployeeName') String? employeeName,
    @JsonKey(name: 'PhotoUrl') String? photoUrl,
    @JsonKey(name: 'BirthDate') String? birthDate,
    @JsonKey(name: 'Gender') int? gender,
    @JsonKey(name: 'FireBaseId') String? fireBaseId,
  }) = _BirthdayModel;

  factory BirthdayModel.fromJson(Map<String, dynamic> json) =>
      _$BirthdayModelFromJson(json);
}
