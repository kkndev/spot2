import 'package:equatable/equatable.dart';

class ParkingEntity extends Equatable {
  final int id;
  final String address;
  final String favoriteName;
  final int freePlacesCount;
  final int occupiedPlacesCount;
  final int unknownPlacesCount;
  final double latitude;
  final double longitude;
  final String name;
  final String parkingUid;

  const ParkingEntity({
    required this.id,
    required this.address,
    required this.favoriteName,
    required this.freePlacesCount,
    required this.occupiedPlacesCount,
    required this.unknownPlacesCount,
    required this.latitude,
    required this.longitude,
    required this.name,
    required this.parkingUid,
  });

  @override
  List<Object?> get props => [
        id,
        address,
        favoriteName,
        freePlacesCount,
        occupiedPlacesCount,
        unknownPlacesCount,
        name,
        parkingUid,
        latitude,
        longitude,
      ];
}
