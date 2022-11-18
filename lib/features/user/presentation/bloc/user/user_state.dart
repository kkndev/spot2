import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entity/entities.dart';

part 'user_state.freezed.dart';

@freezed
class UserState with _$UserState {
  factory UserState([
    @Default(UserEntity.emptyUser) UserEntity user,
    @Default(UserInfoEntity.emptyUser) UserInfoEntity userInfo,
    @Default(RequestStatus.init())
        RequestStatus<String> activatePromoCodeRequestStatus,
    @Default('') String activatePromoCodeResult,
    @Default(RequestStatus.init())
        RequestStatus<UserEntity> getUserRequestStatus,
    @Default('') String getUserResult,
    @Default(RequestStatus.init())
        RequestStatus<UserEntity> updateUserRequestStatus,
    @Default('') String updateUserResult,
    @Default(RequestStatus.init())
        RequestStatus<UserInfoEntity> whoamiRequestStatus,
    @Default('') String minAppVersion,
    @Default(RequestStatus.init())
        RequestStatus<String> getMinAppVersionRequestStatus,
  ]) = _UserState;
}
