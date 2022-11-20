import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spot2/features/auth/domain/entities/parking_place_entity.dart';

import '../../../../parking/domain/entity/parking_entity/parking_entity.dart';
import '/core/data/dto/request_status/request_status.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  factory AuthState([
    @Default(RequestStatus.init()) RequestStatus<String> requestStatus,
    @Default('') String result,
    @Default('') String phoneOrEmail,
    @Default('') String userMasterToken,
    @Default('') String userMasterRefreshToken,
    @Default('') String userSpotToken,
    @Default([]) List<ParkingEntity> parkingEntityList,
    @Default([]) List<ParkingPlaceEntity> parkingPlaceEntityList,
  ]) = _AuthState;
}
