import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entity/parking_entity/parking_entity.dart';
import '../../../domain/entity/request_status/request_status.dart';

part 'parking_state.freezed.dart';

@freezed
class ParkingState with _$ParkingState {
  factory ParkingState([
    @Default(RequestStatus.init())
        RequestStatus<ParkingEntity> getParkingItemRequestStatus,
    @Default(RequestStatus.init())
        RequestStatus<List<ParkingEntity>> getParkingRequestStatus,
    @Default(RequestStatus.init())
        RequestStatus<List<ParkingEntity>> getParkingByAddressRequestStatus,
    @Default([]) List<ParkingEntity> searchedParkingList,
    @Default([]) List<ParkingEntity> parkingList,
  ]) = _ParkingState;
}
