import 'package:freezed_annotation/freezed_annotation.dart';

import '../camera_model/camera_model.dart';
import '../parking_place_model/parking_place_model.dart';

part 'parking_item_model.freezed.dart';
part 'parking_item_model.g.dart';

@freezed
class ParkingItemModel with _$ParkingItemModel {
  const factory ParkingItemModel({
    required int id,
    @JsonKey(name: 'parking_uid') required String parkingUid,
    @JsonKey(name: 'address') required String address,
    @JsonKey(name: 'latitude') required String latitude,
    @JsonKey(name: 'longitude') required String longitude,
    @JsonKey(name: 'free_places_count') required int freePlacesCount,
    @JsonKey(name: 'occupied_places_count') required int occupiedPlacesCount,
    @JsonKey(name: 'unknown_places_count') required int unknownPlacesCount,
    @Default('created_at') @JsonKey(name: 'created_at') String createdAt,
    @Default('updated_at') @JsonKey(name: 'updated_at') String updatedAt,
    @Default('favorite_name')
    @JsonKey(name: 'favorite_name')
        String favoriteName,
    @Default('name') String name,
    @Default([])
    @JsonKey(name: 'parking_places')
        List<ParkingPlaceModel> parkingPlaces,
    @Default([]) List<CameraModel> cameras,
  }) = _ParkingItemModel;

  factory ParkingItemModel.fromJson(Map<String, dynamic> json) =>
      _$ParkingItemModelFromJson(json);
}
