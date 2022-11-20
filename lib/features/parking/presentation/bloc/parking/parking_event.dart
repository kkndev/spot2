abstract class ParkingEvent {}

class InitParkingEvent extends ParkingEvent {}

class GetParkingEvent extends ParkingEvent {}

class GetParkingItemEvent extends ParkingEvent {
  GetParkingItemEvent({required this.parkingId});
  final int parkingId;
}

class GetParkingByAddressEvent extends ParkingEvent {
  GetParkingByAddressEvent({required this.searchValue});
  final String searchValue;
}
