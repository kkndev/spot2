abstract class ParkingEvent {}

class InitParkingEvent extends ParkingEvent {}

class GetParkingEvent extends ParkingEvent {}

class GetParkingByAddressEvent extends ParkingEvent {
  GetParkingByAddressEvent({required this.searchValue});
  final String searchValue;
}
