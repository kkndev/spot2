import 'package:freezed_annotation/freezed_annotation.dart';

part 'parking_place_model.freezed.dart';
part 'parking_place_model.g.dart';

@freezed
class ParkingPlaceModel with _$ParkingPlaceModel {
  const factory ParkingPlaceModel({
    required int id,
    @Default('parking_place_uid')
    @JsonKey(name: 'parking_place_uid')
        String parkingPlaceUid,
    @Default(0) @JsonKey(name: 'parking_id') int parkingId,
    @Default(0) @JsonKey(name: 'camera_id') int cameraId,
    @Default(0) @JsonKey(name: 'latitude') double latitude,
    @Default(0) @JsonKey(name: 'longitude') double longitude,
    required double angle,
    @Default(0) @JsonKey(name: 'start_pixel_x_coord') double startPixelXCoord,
    @Default(0) @JsonKey(name: 'start_pixel_y_coord') double startPixelYCoord,
    @Default(0) @JsonKey(name: 'end_pixel_x_coord') double endPixelXCoord,
    @Default(0) @JsonKey(name: 'ens_pixel_y_coord') double endPixelYCoord,
    required String status,
    @Default('created_at') @JsonKey(name: 'created_at') String createdAt,
    @Default('updated_at') @JsonKey(name: 'updated_at') String updatedAt,
  }) = _ParkingPlaceModel;

  factory ParkingPlaceModel.fromJson(Map<String, dynamic> json) =>
      _$ParkingPlaceModelFromJson(json);
}
