import 'dart:typed_data';

class GisMapMarker {
  final double latitude;
  final double longitude;
  final double angle;
  final int zIndex;
  final String id;
  final String status;

  GisMapMarker({
    required this.latitude,
    required this.longitude,
    required this.angle,
    required this.id,
    required this.zIndex,
    required this.status,
  });

  Map<String, dynamic> toJson() => {
        'latitude': latitude,
        'longitude': longitude,
        'angle': angle,
        'id': id,
        'zIndex': zIndex,
        'status': status,
      };
}

class RoutePosition {
  final double startLatitude;
  final double startLongitude;
  final double finishLatitude;
  final double finishLongitude;

  RoutePosition(
      {required this.finishLatitude,
      required this.finishLongitude,
      required this.startLatitude,
      required this.startLongitude});

  Map<String, dynamic> toJson() => {
        "startLatitude": startLatitude,
        "startLongitude": startLongitude,
        "finishLatitude": finishLatitude,
        "finishLongitude": finishLongitude
      };
}
