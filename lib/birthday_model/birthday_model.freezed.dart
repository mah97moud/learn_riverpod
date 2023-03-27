// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'birthday_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BirthdayModel _$BirthdayModelFromJson(Map<String, dynamic> json) {
  return _BirthdayModel.fromJson(json);
}

/// @nodoc
mixin _$BirthdayModel {
  @JsonKey(name: 'Id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'EmployeeName')
  String? get employeeName => throw _privateConstructorUsedError;
  @JsonKey(name: 'PhotoUrl')
  String? get photoUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'BirthDate')
  String? get birthDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'Gender')
  int? get gender => throw _privateConstructorUsedError;
  @JsonKey(name: 'FireBaseId')
  String? get fireBaseId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BirthdayModelCopyWith<BirthdayModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BirthdayModelCopyWith<$Res> {
  factory $BirthdayModelCopyWith(
          BirthdayModel value, $Res Function(BirthdayModel) then) =
      _$BirthdayModelCopyWithImpl<$Res, BirthdayModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'Id') int? id,
      @JsonKey(name: 'EmployeeName') String? employeeName,
      @JsonKey(name: 'PhotoUrl') String? photoUrl,
      @JsonKey(name: 'BirthDate') String? birthDate,
      @JsonKey(name: 'Gender') int? gender,
      @JsonKey(name: 'FireBaseId') String? fireBaseId});
}

/// @nodoc
class _$BirthdayModelCopyWithImpl<$Res, $Val extends BirthdayModel>
    implements $BirthdayModelCopyWith<$Res> {
  _$BirthdayModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? employeeName = freezed,
    Object? photoUrl = freezed,
    Object? birthDate = freezed,
    Object? gender = freezed,
    Object? fireBaseId = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      employeeName: freezed == employeeName
          ? _value.employeeName
          : employeeName // ignore: cast_nullable_to_non_nullable
              as String?,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      birthDate: freezed == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as int?,
      fireBaseId: freezed == fireBaseId
          ? _value.fireBaseId
          : fireBaseId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BirthdayModelCopyWith<$Res>
    implements $BirthdayModelCopyWith<$Res> {
  factory _$$_BirthdayModelCopyWith(
          _$_BirthdayModel value, $Res Function(_$_BirthdayModel) then) =
      __$$_BirthdayModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'Id') int? id,
      @JsonKey(name: 'EmployeeName') String? employeeName,
      @JsonKey(name: 'PhotoUrl') String? photoUrl,
      @JsonKey(name: 'BirthDate') String? birthDate,
      @JsonKey(name: 'Gender') int? gender,
      @JsonKey(name: 'FireBaseId') String? fireBaseId});
}

/// @nodoc
class __$$_BirthdayModelCopyWithImpl<$Res>
    extends _$BirthdayModelCopyWithImpl<$Res, _$_BirthdayModel>
    implements _$$_BirthdayModelCopyWith<$Res> {
  __$$_BirthdayModelCopyWithImpl(
      _$_BirthdayModel _value, $Res Function(_$_BirthdayModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? employeeName = freezed,
    Object? photoUrl = freezed,
    Object? birthDate = freezed,
    Object? gender = freezed,
    Object? fireBaseId = freezed,
  }) {
    return _then(_$_BirthdayModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      employeeName: freezed == employeeName
          ? _value.employeeName
          : employeeName // ignore: cast_nullable_to_non_nullable
              as String?,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      birthDate: freezed == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as int?,
      fireBaseId: freezed == fireBaseId
          ? _value.fireBaseId
          : fireBaseId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BirthdayModel implements _BirthdayModel {
  _$_BirthdayModel(
      {@JsonKey(name: 'Id') this.id,
      @JsonKey(name: 'EmployeeName') this.employeeName,
      @JsonKey(name: 'PhotoUrl') this.photoUrl,
      @JsonKey(name: 'BirthDate') this.birthDate,
      @JsonKey(name: 'Gender') this.gender,
      @JsonKey(name: 'FireBaseId') this.fireBaseId});

  factory _$_BirthdayModel.fromJson(Map<String, dynamic> json) =>
      _$$_BirthdayModelFromJson(json);

  @override
  @JsonKey(name: 'Id')
  final int? id;
  @override
  @JsonKey(name: 'EmployeeName')
  final String? employeeName;
  @override
  @JsonKey(name: 'PhotoUrl')
  final String? photoUrl;
  @override
  @JsonKey(name: 'BirthDate')
  final String? birthDate;
  @override
  @JsonKey(name: 'Gender')
  final int? gender;
  @override
  @JsonKey(name: 'FireBaseId')
  final String? fireBaseId;

  @override
  String toString() {
    return 'BirthdayModel(id: $id, employeeName: $employeeName, photoUrl: $photoUrl, birthDate: $birthDate, gender: $gender, fireBaseId: $fireBaseId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BirthdayModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.employeeName, employeeName) ||
                other.employeeName == employeeName) &&
            (identical(other.photoUrl, photoUrl) ||
                other.photoUrl == photoUrl) &&
            (identical(other.birthDate, birthDate) ||
                other.birthDate == birthDate) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.fireBaseId, fireBaseId) ||
                other.fireBaseId == fireBaseId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, employeeName, photoUrl, birthDate, gender, fireBaseId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BirthdayModelCopyWith<_$_BirthdayModel> get copyWith =>
      __$$_BirthdayModelCopyWithImpl<_$_BirthdayModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BirthdayModelToJson(
      this,
    );
  }
}

abstract class _BirthdayModel implements BirthdayModel {
  factory _BirthdayModel(
          {@JsonKey(name: 'Id') final int? id,
          @JsonKey(name: 'EmployeeName') final String? employeeName,
          @JsonKey(name: 'PhotoUrl') final String? photoUrl,
          @JsonKey(name: 'BirthDate') final String? birthDate,
          @JsonKey(name: 'Gender') final int? gender,
          @JsonKey(name: 'FireBaseId') final String? fireBaseId}) =
      _$_BirthdayModel;

  factory _BirthdayModel.fromJson(Map<String, dynamic> json) =
      _$_BirthdayModel.fromJson;

  @override
  @JsonKey(name: 'Id')
  int? get id;
  @override
  @JsonKey(name: 'EmployeeName')
  String? get employeeName;
  @override
  @JsonKey(name: 'PhotoUrl')
  String? get photoUrl;
  @override
  @JsonKey(name: 'BirthDate')
  String? get birthDate;
  @override
  @JsonKey(name: 'Gender')
  int? get gender;
  @override
  @JsonKey(name: 'FireBaseId')
  String? get fireBaseId;
  @override
  @JsonKey(ignore: true)
  _$$_BirthdayModelCopyWith<_$_BirthdayModel> get copyWith =>
      throw _privateConstructorUsedError;
}
