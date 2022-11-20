import 'package:freezed_annotation/freezed_annotation.dart';

import '../camera_entity/camera_entity.dart';
import '../parking_place_entity/parking_place_entity.dart';

part 'parking_item_entity.freezed.dart';

@freezed
class ParkingItemEntity with _$ParkingItemEntity {
  const factory ParkingItemEntity({
    required int id,
    @JsonKey(name: 'parking_uid') required String parkingUid,
    @JsonKey(name: 'address') required String address,
    @JsonKey(name: 'latitude') required double latitude,
    @JsonKey(name: 'longitude') required double longitude,
    @JsonKey(name: 'free_places_count') required int freePlacesCount,
    @JsonKey(name: 'occupied_places_count') required int occupiedPlacesCount,
    @JsonKey(name: 'unknown_places_count') required int unknownPlacesCount,
    @Default('favorite_name')
    @JsonKey(name: 'favorite_name')
        String favoriteName,
    @Default('name') String name,
    @Default([]) List<ParkingPlaceEntity> parkingPlaces,
    @Default([]) List<CameraEntity> cameras,
  }) = _ParkingItemEntity;

  static const emptyParkingItem = ParkingItemEntity(
    id: 0,
    parkingUid: 'parking_uid',
    address: 'address',
    latitude: 0,
    longitude: 0,
    freePlacesCount: 0,
    occupiedPlacesCount: 0,
    unknownPlacesCount: 0,
    favoriteName: 'favorite_name',
    name: 'name',
  );
}
