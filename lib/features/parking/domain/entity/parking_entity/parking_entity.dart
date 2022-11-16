import 'package:freezed_annotation/freezed_annotation.dart';

part 'parking_entity.freezed.dart';

@freezed
class ParkingEntity with _$ParkingEntity {
  const factory ParkingEntity({
    required int id,
    @JsonKey(name: 'parking_uid') required String parkingUid,
    @JsonKey(name: 'address') required String address,
    @JsonKey(name: 'latitude') required double latitude,
    @JsonKey(name: 'longitude') required double longitude,
    @JsonKey(name: 'free_places_count') required int freePlacesCount,
    @JsonKey(name: 'occupied_places_count') required int occupiedPlacesCount,
    @JsonKey(name: 'unknown_places_count') required int unknownPlacesCount,
    @Default('favorite_parking_name')
    @JsonKey(name: 'favorite_name')
        String favoriteName,
    @Default('name') String name,
  }) = _ParkingEntity;
}
