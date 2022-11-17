// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthState {
  RequestStatus<String> get refreshUserMasterTokenRequestStatus =>
      throw _privateConstructorUsedError;
  RequestStatus<String> get loginToServiceRequestStatus =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call(
      {RequestStatus<String> refreshUserMasterTokenRequestStatus,
      RequestStatus<String> loginToServiceRequestStatus});

  $RequestStatusCopyWith<String, $Res> get refreshUserMasterTokenRequestStatus;
  $RequestStatusCopyWith<String, $Res> get loginToServiceRequestStatus;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refreshUserMasterTokenRequestStatus = null,
    Object? loginToServiceRequestStatus = null,
  }) {
    return _then(_value.copyWith(
      refreshUserMasterTokenRequestStatus: null ==
              refreshUserMasterTokenRequestStatus
          ? _value.refreshUserMasterTokenRequestStatus
          : refreshUserMasterTokenRequestStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus<String>,
      loginToServiceRequestStatus: null == loginToServiceRequestStatus
          ? _value.loginToServiceRequestStatus
          : loginToServiceRequestStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus<String>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RequestStatusCopyWith<String, $Res> get refreshUserMasterTokenRequestStatus {
    return $RequestStatusCopyWith<String, $Res>(
        _value.refreshUserMasterTokenRequestStatus, (value) {
      return _then(
          _value.copyWith(refreshUserMasterTokenRequestStatus: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RequestStatusCopyWith<String, $Res> get loginToServiceRequestStatus {
    return $RequestStatusCopyWith<String, $Res>(
        _value.loginToServiceRequestStatus, (value) {
      return _then(_value.copyWith(loginToServiceRequestStatus: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AuthStateCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$$_AuthStateCopyWith(
          _$_AuthState value, $Res Function(_$_AuthState) then) =
      __$$_AuthStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {RequestStatus<String> refreshUserMasterTokenRequestStatus,
      RequestStatus<String> loginToServiceRequestStatus});

  @override
  $RequestStatusCopyWith<String, $Res> get refreshUserMasterTokenRequestStatus;
  @override
  $RequestStatusCopyWith<String, $Res> get loginToServiceRequestStatus;
}

/// @nodoc
class __$$_AuthStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_AuthState>
    implements _$$_AuthStateCopyWith<$Res> {
  __$$_AuthStateCopyWithImpl(
      _$_AuthState _value, $Res Function(_$_AuthState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refreshUserMasterTokenRequestStatus = null,
    Object? loginToServiceRequestStatus = null,
  }) {
    return _then(_$_AuthState(
      null == refreshUserMasterTokenRequestStatus
          ? _value.refreshUserMasterTokenRequestStatus
          : refreshUserMasterTokenRequestStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus<String>,
      null == loginToServiceRequestStatus
          ? _value.loginToServiceRequestStatus
          : loginToServiceRequestStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus<String>,
    ));
  }
}

/// @nodoc

class _$_AuthState implements _AuthState {
  _$_AuthState(
      [this.refreshUserMasterTokenRequestStatus = const RequestStatus.init(),
      this.loginToServiceRequestStatus = const RequestStatus.init()]);

  @override
  @JsonKey()
  final RequestStatus<String> refreshUserMasterTokenRequestStatus;
  @override
  @JsonKey()
  final RequestStatus<String> loginToServiceRequestStatus;

  @override
  String toString() {
    return 'AuthState(refreshUserMasterTokenRequestStatus: $refreshUserMasterTokenRequestStatus, loginToServiceRequestStatus: $loginToServiceRequestStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthState &&
            (identical(other.refreshUserMasterTokenRequestStatus,
                    refreshUserMasterTokenRequestStatus) ||
                other.refreshUserMasterTokenRequestStatus ==
                    refreshUserMasterTokenRequestStatus) &&
            (identical(other.loginToServiceRequestStatus,
                    loginToServiceRequestStatus) ||
                other.loginToServiceRequestStatus ==
                    loginToServiceRequestStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      refreshUserMasterTokenRequestStatus, loginToServiceRequestStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthStateCopyWith<_$_AuthState> get copyWith =>
      __$$_AuthStateCopyWithImpl<_$_AuthState>(this, _$identity);
}

abstract class _AuthState implements AuthState {
  factory _AuthState(
      [final RequestStatus<String> refreshUserMasterTokenRequestStatus,
      final RequestStatus<String> loginToServiceRequestStatus]) = _$_AuthState;

  @override
  RequestStatus<String> get refreshUserMasterTokenRequestStatus;
  @override
  RequestStatus<String> get loginToServiceRequestStatus;
  @override
  @JsonKey(ignore: true)
  _$$_AuthStateCopyWith<_$_AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}
