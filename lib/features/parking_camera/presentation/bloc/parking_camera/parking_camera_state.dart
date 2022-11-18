import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entity/request_status/request_status.dart';

part 'parking_camera_state.freezed.dart';

@freezed
class ParkingCameraState with _$ParkingCameraState {
  factory ParkingCameraState([
    @Default(RequestStatus.init())
        RequestStatus<List<String>> parkingCameraRequestStatus,
    @Default([]) imageUrlList,
  ]) = _ParkingCameraState;
}
