abstract class ParkingEvent {}

class InitParkingEvent extends ParkingEvent {}

class GetParkingEvent extends ParkingEvent {
  GetParkingEvent({required this.id});
  final int id;
}

class GetParkingByAddressEvent extends ParkingEvent {
  GetParkingByAddressEvent({required this.searchValue});
  final String searchValue;
}
