// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserState {
  RequestStatus<UserEntity> get requestStatus =>
      throw _privateConstructorUsedError;
  RequestStatus<String> get activatePromoCodeRequestStatus =>
      throw _privateConstructorUsedError;
  UserEntity get user => throw _privateConstructorUsedError;
  String get activatePromoCodeResult => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserStateCopyWith<UserState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UserStateCopyWithImpl<$Res, UserState>;
  @useResult
  $Res call(
      {RequestStatus<UserEntity> requestStatus,
      RequestStatus<String> activatePromoCodeRequestStatus,
      UserEntity user,
      String activatePromoCodeResult});

  $RequestStatusCopyWith<UserEntity, $Res> get requestStatus;
  $RequestStatusCopyWith<String, $Res> get activatePromoCodeRequestStatus;
}

/// @nodoc
class _$UserStateCopyWithImpl<$Res, $Val extends UserState>
    implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestStatus = null,
    Object? activatePromoCodeRequestStatus = null,
    Object? user = null,
    Object? activatePromoCodeResult = null,
  }) {
    return _then(_value.copyWith(
      requestStatus: null == requestStatus
          ? _value.requestStatus
          : requestStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus<UserEntity>,
      activatePromoCodeRequestStatus: null == activatePromoCodeRequestStatus
          ? _value.activatePromoCodeRequestStatus
          : activatePromoCodeRequestStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus<String>,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserEntity,
      activatePromoCodeResult: null == activatePromoCodeResult
          ? _value.activatePromoCodeResult
          : activatePromoCodeResult // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RequestStatusCopyWith<UserEntity, $Res> get requestStatus {
    return $RequestStatusCopyWith<UserEntity, $Res>(_value.requestStatus,
        (value) {
      return _then(_value.copyWith(requestStatus: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RequestStatusCopyWith<String, $Res> get activatePromoCodeRequestStatus {
    return $RequestStatusCopyWith<String, $Res>(
        _value.activatePromoCodeRequestStatus, (value) {
      return _then(
          _value.copyWith(activatePromoCodeRequestStatus: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_UserStateCopyWith<$Res> implements $UserStateCopyWith<$Res> {
  factory _$$_UserStateCopyWith(
          _$_UserState value, $Res Function(_$_UserState) then) =
      __$$_UserStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {RequestStatus<UserEntity> requestStatus,
      RequestStatus<String> activatePromoCodeRequestStatus,
      UserEntity user,
      String activatePromoCodeResult});

  @override
  $RequestStatusCopyWith<UserEntity, $Res> get requestStatus;
  @override
  $RequestStatusCopyWith<String, $Res> get activatePromoCodeRequestStatus;
}

/// @nodoc
class __$$_UserStateCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$_UserState>
    implements _$$_UserStateCopyWith<$Res> {
  __$$_UserStateCopyWithImpl(
      _$_UserState _value, $Res Function(_$_UserState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestStatus = null,
    Object? activatePromoCodeRequestStatus = null,
    Object? user = null,
    Object? activatePromoCodeResult = null,
  }) {
    return _then(_$_UserState(
      null == requestStatus
          ? _value.requestStatus
          : requestStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus<UserEntity>,
      null == activatePromoCodeRequestStatus
          ? _value.activatePromoCodeRequestStatus
          : activatePromoCodeRequestStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus<String>,
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserEntity,
      null == activatePromoCodeResult
          ? _value.activatePromoCodeResult
          : activatePromoCodeResult // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UserState implements _UserState {
  _$_UserState(
      [this.requestStatus = const RequestStatus.init(),
      this.activatePromoCodeRequestStatus = const RequestStatus.init(),
      this.user = const UserEntity.empty(),
      this.activatePromoCodeResult = '']);

  @override
  @JsonKey()
  final RequestStatus<UserEntity> requestStatus;
  @override
  @JsonKey()
  final RequestStatus<String> activatePromoCodeRequestStatus;
  @override
  @JsonKey()
  final UserEntity user;
  @override
  @JsonKey()
  final String activatePromoCodeResult;

  @override
  String toString() {
    return 'UserState(requestStatus: $requestStatus, activatePromoCodeRequestStatus: $activatePromoCodeRequestStatus, user: $user, activatePromoCodeResult: $activatePromoCodeResult)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserState &&
            (identical(other.requestStatus, requestStatus) ||
                other.requestStatus == requestStatus) &&
            (identical(other.activatePromoCodeRequestStatus,
                    activatePromoCodeRequestStatus) ||
                other.activatePromoCodeRequestStatus ==
                    activatePromoCodeRequestStatus) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(
                    other.activatePromoCodeResult, activatePromoCodeResult) ||
                other.activatePromoCodeResult == activatePromoCodeResult));
  }

  @override
  int get hashCode => Object.hash(runtimeType, requestStatus,
      activatePromoCodeRequestStatus, user, activatePromoCodeResult);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserStateCopyWith<_$_UserState> get copyWith =>
      __$$_UserStateCopyWithImpl<_$_UserState>(this, _$identity);
}

abstract class _UserState implements UserState {
  factory _UserState(
      [final RequestStatus<UserEntity> requestStatus,
      final RequestStatus<String> activatePromoCodeRequestStatus,
      final UserEntity user,
      final String activatePromoCodeResult]) = _$_UserState;

  @override
  RequestStatus<UserEntity> get requestStatus;
  @override
  RequestStatus<String> get activatePromoCodeRequestStatus;
  @override
  UserEntity get user;
  @override
  String get activatePromoCodeResult;
  @override
  @JsonKey(ignore: true)
  _$$_UserStateCopyWith<_$_UserState> get copyWith =>
      throw _privateConstructorUsedError;
}
