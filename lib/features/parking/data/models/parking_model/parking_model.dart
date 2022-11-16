import 'package:freezed_annotation/freezed_annotation.dart';

part 'parking_model.freezed.dart';
part 'parking_model.g.dart';

@freezed
class ParkingModel with _$ParkingModel {
  const factory ParkingModel({
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
    @Default('favorite_parking_name')
    @JsonKey(name: 'favorite_name')
        String favoriteName,
    @Default('name') String name,
  }) = _ParkingModel;

  factory ParkingModel.fromJson(Map<String, dynamic> json) =>
      _$ParkingModelFromJson(json);
}
