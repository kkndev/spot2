import 'package:freezed_annotation/freezed_annotation.dart';

import '/features/user/domain/entities/entities.dart';
import '/core/data/dto/dto.dart';

part 'user_state.freezed.dart';

@freezed
class UserState with _$UserState {
  factory UserState([
    @Default(RequestStatus.init()) RequestStatus<UserEntity> requestStatus,
    @Default(RequestStatus.init())
        RequestStatus<String> activatePromoCodeRequestStatus,
    @Default(UserEntity.empty()) UserEntity user,
    @Default('') String activatePromoCodeResult,
  ]) = _UserState;
}
