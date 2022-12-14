import 'package:freezed_annotation/freezed_annotation.dart';

part 'parking_place_entity.freezed.dart';

@freezed
class ParkingPlaceEntity with _$ParkingPlaceEntity {
  const factory ParkingPlaceEntity({
    required int id,
    // @JsonKey(name: 'parking_place_uid') required String parkingPlaceUid,
    // @JsonKey(name: 'parking_id') required int parkingId,
    // @JsonKey(name: 'camera_id') required int cameraId,
    required double latitude,
    required double longitude,
    required double angle,
    required String status,
  }) = _ParkingPlaceEntity;
}
