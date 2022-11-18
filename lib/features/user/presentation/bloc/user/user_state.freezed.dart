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
  UserEntity get user => throw _privateConstructorUsedError;
  UserInfoEntity get userInfo => throw _privateConstructorUsedError;
  RequestStatus<String> get activatePromoCodeRequestStatus =>
      throw _privateConstructorUsedError;
  String get activatePromoCodeResult => throw _privateConstructorUsedError;
  RequestStatus<UserEntity> get getUserRequestStatus =>
      throw _privateConstructorUsedError;
  String get getUserResult => throw _privateConstructorUsedError;
  RequestStatus<UserEntity> get updateUserRequestStatus =>
      throw _privateConstructorUsedError;
  String get updateUserResult => throw _privateConstructorUsedError;
  RequestStatus<UserInfoEntity> get whoamiRequestStatus =>
      throw _privateConstructorUsedError;
  String get minAppVersion => throw _privateConstructorUsedError;
  RequestStatus<String> get getMinAppVersionRequestStatus =>
      throw _privateConstructorUsedError;

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
      {UserEntity user,
      UserInfoEntity userInfo,
      RequestStatus<String> activatePromoCodeRequestStatus,
      String activatePromoCodeResult,
      RequestStatus<UserEntity> getUserRequestStatus,
      String getUserResult,
      RequestStatus<UserEntity> updateUserRequestStatus,
      String updateUserResult,
      RequestStatus<UserInfoEntity> whoamiRequestStatus,
      String minAppVersion,
      RequestStatus<String> getMinAppVersionRequestStatus});

  $UserEntityCopyWith<$Res> get user;
  $UserInfoEntityCopyWith<$Res> get userInfo;
  $RequestStatusCopyWith<String, $Res> get activatePromoCodeRequestStatus;
  $RequestStatusCopyWith<UserEntity, $Res> get getUserRequestStatus;
  $RequestStatusCopyWith<UserEntity, $Res> get updateUserRequestStatus;
  $RequestStatusCopyWith<UserInfoEntity, $Res> get whoamiRequestStatus;
  $RequestStatusCopyWith<String, $Res> get getMinAppVersionRequestStatus;
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
    Object? user = null,
    Object? userInfo = null,
    Object? activatePromoCodeRequestStatus = null,
    Object? activatePromoCodeResult = null,
    Object? getUserRequestStatus = null,
    Object? getUserResult = null,
    Object? updateUserRequestStatus = null,
    Object? updateUserResult = null,
    Object? whoamiRequestStatus = null,
    Object? minAppVersion = null,
    Object? getMinAppVersionRequestStatus = null,
  }) {
    return _then(_value.copyWith(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserEntity,
      userInfo: null == userInfo
          ? _value.userInfo
          : userInfo // ignore: cast_nullable_to_non_nullable
              as UserInfoEntity,
      activatePromoCodeRequestStatus: null == activatePromoCodeRequestStatus
          ? _value.activatePromoCodeRequestStatus
          : activatePromoCodeRequestStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus<String>,
      activatePromoCodeResult: null == activatePromoCodeResult
          ? _value.activatePromoCodeResult
          : activatePromoCodeResult // ignore: cast_nullable_to_non_nullable
              as String,
      getUserRequestStatus: null == getUserRequestStatus
          ? _value.getUserRequestStatus
          : getUserRequestStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus<UserEntity>,
      getUserResult: null == getUserResult
          ? _value.getUserResult
          : getUserResult // ignore: cast_nullable_to_non_nullable
              as String,
      updateUserRequestStatus: null == updateUserRequestStatus
          ? _value.updateUserRequestStatus
          : updateUserRequestStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus<UserEntity>,
      updateUserResult: null == updateUserResult
          ? _value.updateUserResult
          : updateUserResult // ignore: cast_nullable_to_non_nullable
              as String,
      whoamiRequestStatus: null == whoamiRequestStatus
          ? _value.whoamiRequestStatus
          : whoamiRequestStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus<UserInfoEntity>,
      minAppVersion: null == minAppVersion
          ? _value.minAppVersion
          : minAppVersion // ignore: cast_nullable_to_non_nullable
              as String,
      getMinAppVersionRequestStatus: null == getMinAppVersionRequestStatus
          ? _value.getMinAppVersionRequestStatus
          : getMinAppVersionRequestStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus<String>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserEntityCopyWith<$Res> get user {
    return $UserEntityCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UserInfoEntityCopyWith<$Res> get userInfo {
    return $UserInfoEntityCopyWith<$Res>(_value.userInfo, (value) {
      return _then(_value.copyWith(userInfo: value) as $Val);
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

  @override
  @pragma('vm:prefer-inline')
  $RequestStatusCopyWith<UserEntity, $Res> get getUserRequestStatus {
    return $RequestStatusCopyWith<UserEntity, $Res>(_value.getUserRequestStatus,
        (value) {
      return _then(_value.copyWith(getUserRequestStatus: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RequestStatusCopyWith<UserEntity, $Res> get updateUserRequestStatus {
    return $RequestStatusCopyWith<UserEntity, $Res>(
        _value.updateUserRequestStatus, (value) {
      return _then(_value.copyWith(updateUserRequestStatus: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RequestStatusCopyWith<UserInfoEntity, $Res> get whoamiRequestStatus {
    return $RequestStatusCopyWith<UserInfoEntity, $Res>(
        _value.whoamiRequestStatus, (value) {
      return _then(_value.copyWith(whoamiRequestStatus: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RequestStatusCopyWith<String, $Res> get getMinAppVersionRequestStatus {
    return $RequestStatusCopyWith<String, $Res>(
        _value.getMinAppVersionRequestStatus, (value) {
      return _then(
          _value.copyWith(getMinAppVersionRequestStatus: value) as $Val);
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
      {UserEntity user,
      UserInfoEntity userInfo,
      RequestStatus<String> activatePromoCodeRequestStatus,
      String activatePromoCodeResult,
      RequestStatus<UserEntity> getUserRequestStatus,
      String getUserResult,
      RequestStatus<UserEntity> updateUserRequestStatus,
      String updateUserResult,
      RequestStatus<UserInfoEntity> whoamiRequestStatus,
      String minAppVersion,
      RequestStatus<String> getMinAppVersionRequestStatus});

  @override
  $UserEntityCopyWith<$Res> get user;
  @override
  $UserInfoEntityCopyWith<$Res> get userInfo;
  @override
  $RequestStatusCopyWith<String, $Res> get activatePromoCodeRequestStatus;
  @override
  $RequestStatusCopyWith<UserEntity, $Res> get getUserRequestStatus;
  @override
  $RequestStatusCopyWith<UserEntity, $Res> get updateUserRequestStatus;
  @override
  $RequestStatusCopyWith<UserInfoEntity, $Res> get whoamiRequestStatus;
  @override
  $RequestStatusCopyWith<String, $Res> get getMinAppVersionRequestStatus;
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
    Object? user = null,
    Object? userInfo = null,
    Object? activatePromoCodeRequestStatus = null,
    Object? activatePromoCodeResult = null,
    Object? getUserRequestStatus = null,
    Object? getUserResult = null,
    Object? updateUserRequestStatus = null,
    Object? updateUserResult = null,
    Object? whoamiRequestStatus = null,
    Object? minAppVersion = null,
    Object? getMinAppVersionRequestStatus = null,
  }) {
    return _then(_$_UserState(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserEntity,
      null == userInfo
          ? _value.userInfo
          : userInfo // ignore: cast_nullable_to_non_nullable
              as UserInfoEntity,
      null == activatePromoCodeRequestStatus
          ? _value.activatePromoCodeRequestStatus
          : activatePromoCodeRequestStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus<String>,
      null == activatePromoCodeResult
          ? _value.activatePromoCodeResult
          : activatePromoCodeResult // ignore: cast_nullable_to_non_nullable
              as String,
      null == getUserRequestStatus
          ? _value.getUserRequestStatus
          : getUserRequestStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus<UserEntity>,
      null == getUserResult
          ? _value.getUserResult
          : getUserResult // ignore: cast_nullable_to_non_nullable
              as String,
      null == updateUserRequestStatus
          ? _value.updateUserRequestStatus
          : updateUserRequestStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus<UserEntity>,
      null == updateUserResult
          ? _value.updateUserResult
          : updateUserResult // ignore: cast_nullable_to_non_nullable
              as String,
      null == whoamiRequestStatus
          ? _value.whoamiRequestStatus
          : whoamiRequestStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus<UserInfoEntity>,
      null == minAppVersion
          ? _value.minAppVersion
          : minAppVersion // ignore: cast_nullable_to_non_nullable
              as String,
      null == getMinAppVersionRequestStatus
          ? _value.getMinAppVersionRequestStatus
          : getMinAppVersionRequestStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus<String>,
    ));
  }
}

/// @nodoc

class _$_UserState implements _UserState {
  _$_UserState(
      [this.user = UserEntity.emptyUser,
      this.userInfo = UserInfoEntity.emptyUser,
      this.activatePromoCodeRequestStatus = const RequestStatus.init(),
      this.activatePromoCodeResult = '',
      this.getUserRequestStatus = const RequestStatus.init(),
      this.getUserResult = '',
      this.updateUserRequestStatus = const RequestStatus.init(),
      this.updateUserResult = '',
      this.whoamiRequestStatus = const RequestStatus.init(),
      this.minAppVersion = '',
      this.getMinAppVersionRequestStatus = const RequestStatus.init()]);

  @override
  @JsonKey()
  final UserEntity user;
  @override
  @JsonKey()
  final UserInfoEntity userInfo;
  @override
  @JsonKey()
  final RequestStatus<String> activatePromoCodeRequestStatus;
  @override
  @JsonKey()
  final String activatePromoCodeResult;
  @override
  @JsonKey()
  final RequestStatus<UserEntity> getUserRequestStatus;
  @override
  @JsonKey()
  final String getUserResult;
  @override
  @JsonKey()
  final RequestStatus<UserEntity> updateUserRequestStatus;
  @override
  @JsonKey()
  final String updateUserResult;
  @override
  @JsonKey()
  final RequestStatus<UserInfoEntity> whoamiRequestStatus;
  @override
  @JsonKey()
  final String minAppVersion;
  @override
  @JsonKey()
  final RequestStatus<String> getMinAppVersionRequestStatus;

  @override
  String toString() {
    return 'UserState(user: $user, userInfo: $userInfo, activatePromoCodeRequestStatus: $activatePromoCodeRequestStatus, activatePromoCodeResult: $activatePromoCodeResult, getUserRequestStatus: $getUserRequestStatus, getUserResult: $getUserResult, updateUserRequestStatus: $updateUserRequestStatus, updateUserResult: $updateUserResult, whoamiRequestStatus: $whoamiRequestStatus, minAppVersion: $minAppVersion, getMinAppVersionRequestStatus: $getMinAppVersionRequestStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserState &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.userInfo, userInfo) ||
                other.userInfo == userInfo) &&
            (identical(other.activatePromoCodeRequestStatus,
                    activatePromoCodeRequestStatus) ||
                other.activatePromoCodeRequestStatus ==
                    activatePromoCodeRequestStatus) &&
            (identical(
                    other.activatePromoCodeResult, activatePromoCodeResult) ||
                other.activatePromoCodeResult == activatePromoCodeResult) &&
            (identical(other.getUserRequestStatus, getUserRequestStatus) ||
                other.getUserRequestStatus == getUserRequestStatus) &&
            (identical(other.getUserResult, getUserResult) ||
                other.getUserResult == getUserResult) &&
            (identical(
                    other.updateUserRequestStatus, updateUserRequestStatus) ||
                other.updateUserRequestStatus == updateUserRequestStatus) &&
            (identical(other.updateUserResult, updateUserResult) ||
                other.updateUserResult == updateUserResult) &&
            (identical(other.whoamiRequestStatus, whoamiRequestStatus) ||
                other.whoamiRequestStatus == whoamiRequestStatus) &&
            (identical(other.minAppVersion, minAppVersion) ||
                other.minAppVersion == minAppVersion) &&
            (identical(other.getMinAppVersionRequestStatus,
                    getMinAppVersionRequestStatus) ||
                other.getMinAppVersionRequestStatus ==
                    getMinAppVersionRequestStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      user,
      userInfo,
      activatePromoCodeRequestStatus,
      activatePromoCodeResult,
      getUserRequestStatus,
      getUserResult,
      updateUserRequestStatus,
      updateUserResult,
      whoamiRequestStatus,
      minAppVersion,
      getMinAppVersionRequestStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserStateCopyWith<_$_UserState> get copyWith =>
      __$$_UserStateCopyWithImpl<_$_UserState>(this, _$identity);
}

abstract class _UserState implements UserState {
  factory _UserState(
          [final UserEntity user,
          final UserInfoEntity userInfo,
          final RequestStatus<String> activatePromoCodeRequestStatus,
          final String activatePromoCodeResult,
          final RequestStatus<UserEntity> getUserRequestStatus,
          final String getUserResult,
          final RequestStatus<UserEntity> updateUserRequestStatus,
          final String updateUserResult,
          final RequestStatus<UserInfoEntity> whoamiRequestStatus,
          final String minAppVersion,
          final RequestStatus<String> getMinAppVersionRequestStatus]) =
      _$_UserState;

  @override
  UserEntity get user;
  @override
  UserInfoEntity get userInfo;
  @override
  RequestStatus<String> get activatePromoCodeRequestStatus;
  @override
  String get activatePromoCodeResult;
  @override
  RequestStatus<UserEntity> get getUserRequestStatus;
  @override
  String get getUserResult;
  @override
  RequestStatus<UserEntity> get updateUserRequestStatus;
  @override
  String get updateUserResult;
  @override
  RequestStatus<UserInfoEntity> get whoamiRequestStatus;
  @override
  String get minAppVersion;
  @override
  RequestStatus<String> get getMinAppVersionRequestStatus;
  @override
  @JsonKey(ignore: true)
  _$$_UserStateCopyWith<_$_UserState> get copyWith =>
      throw _privateConstructorUsedError;
}
