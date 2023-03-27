// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'birthday_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BirthdayModel _$$_BirthdayModelFromJson(Map<String, dynamic> json) =>
    _$_BirthdayModel(
      id: json['Id'] as int?,
      employeeName: json['EmployeeName'] as String?,
      photoUrl: json['PhotoUrl'] as String?,
      birthDate: json['BirthDate'] as String?,
      gender: json['Gender'] as int?,
      fireBaseId: json['FireBaseId'] as String?,
    );

Map<String, dynamic> _$$_BirthdayModelToJson(_$_BirthdayModel instance) =>
    <String, dynamic>{
      'Id': instance.id,
      'EmployeeName': instance.employeeName,
      'PhotoUrl': instance.photoUrl,
      'BirthDate': instance.birthDate,
      'Gender': instance.gender,
      'FireBaseId': instance.fireBaseId,
    };
