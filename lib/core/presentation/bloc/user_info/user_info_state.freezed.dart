// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_info_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserInfoState {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String get birthDate => throw _privateConstructorUsedError;
  String get regionId => throw _privateConstructorUsedError;
  String get regionName => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  bool get isRegistration => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserInfoStateCopyWith<UserInfoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserInfoStateCopyWith<$Res> {
  factory $UserInfoStateCopyWith(
          UserInfoState value, $Res Function(UserInfoState) then) =
      _$UserInfoStateCopyWithImpl<$Res, UserInfoState>;
  @useResult
  $Res call(
      {String id,
      String name,
      String phone,
      String birthDate,
      String regionId,
      String regionName,
      String email,
      bool isRegistration});
}

/// @nodoc
class _$UserInfoStateCopyWithImpl<$Res, $Val extends UserInfoState>
    implements $UserInfoStateCopyWith<$Res> {
  _$UserInfoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? phone = null,
    Object? birthDate = null,
    Object? regionId = null,
    Object? regionName = null,
    Object? email = null,
    Object? isRegistration = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      birthDate: null == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as String,
      regionId: null == regionId
          ? _value.regionId
          : regionId // ignore: cast_nullable_to_non_nullable
              as String,
      regionName: null == regionName
          ? _value.regionName
          : regionName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      isRegistration: null == isRegistration
          ? _value.isRegistration
          : isRegistration // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserInfoStateCopyWith<$Res>
    implements $UserInfoStateCopyWith<$Res> {
  factory _$$_UserInfoStateCopyWith(
          _$_UserInfoState value, $Res Function(_$_UserInfoState) then) =
      __$$_UserInfoStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String phone,
      String birthDate,
      String regionId,
      String regionName,
      String email,
      bool isRegistration});
}

/// @nodoc
class __$$_UserInfoStateCopyWithImpl<$Res>
    extends _$UserInfoStateCopyWithImpl<$Res, _$_UserInfoState>
    implements _$$_UserInfoStateCopyWith<$Res> {
  __$$_UserInfoStateCopyWithImpl(
      _$_UserInfoState _value, $Res Function(_$_UserInfoState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? phone = null,
    Object? birthDate = null,
    Object? regionId = null,
    Object? regionName = null,
    Object? email = null,
    Object? isRegistration = null,
  }) {
    return _then(_$_UserInfoState(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      null == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as String,
      null == regionId
          ? _value.regionId
          : regionId // ignore: cast_nullable_to_non_nullable
              as String,
      null == regionName
          ? _value.regionName
          : regionName // ignore: cast_nullable_to_non_nullable
              as String,
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      null == isRegistration
          ? _value.isRegistration
          : isRegistration // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_UserInfoState implements _UserInfoState {
  _$_UserInfoState(
      [this.id = '',
      this.name = '',
      this.phone = '',
      this.birthDate = '',
      this.regionId = '',
      this.regionName = '',
      this.email = '',
      this.isRegistration = false]);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String phone;
  @override
  @JsonKey()
  final String birthDate;
  @override
  @JsonKey()
  final String regionId;
  @override
  @JsonKey()
  final String regionName;
  @override
  @JsonKey()
  final String email;
  @override
  @JsonKey()
  final bool isRegistration;

  @override
  String toString() {
    return 'UserInfoState(id: $id, name: $name, phone: $phone, birthDate: $birthDate, regionId: $regionId, regionName: $regionName, email: $email, isRegistration: $isRegistration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserInfoState &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.birthDate, birthDate) ||
                other.birthDate == birthDate) &&
            (identical(other.regionId, regionId) ||
                other.regionId == regionId) &&
            (identical(other.regionName, regionName) ||
                other.regionName == regionName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.isRegistration, isRegistration) ||
                other.isRegistration == isRegistration));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, phone, birthDate,
      regionId, regionName, email, isRegistration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserInfoStateCopyWith<_$_UserInfoState> get copyWith =>
      __$$_UserInfoStateCopyWithImpl<_$_UserInfoState>(this, _$identity);
}

abstract class _UserInfoState implements UserInfoState {
  factory _UserInfoState(
      [final String id,
      final String name,
      final String phone,
      final String birthDate,
      final String regionId,
      final String regionName,
      final String email,
      final bool isRegistration]) = _$_UserInfoState;

  @override
  String get id;
  @override
  String get name;
  @override
  String get phone;
  @override
  String get birthDate;
  @override
  String get regionId;
  @override
  String get regionName;
  @override
  String get email;
  @override
  bool get isRegistration;
  @override
  @JsonKey(ignore: true)
  _$$_UserInfoStateCopyWith<_$_UserInfoState> get copyWith =>
      throw _privateConstructorUsedError;
}
