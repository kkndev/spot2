abstract class ParkingEvent {}

class InitParkingEvent extends ParkingEvent {}

class GetParkingEvent extends ParkingEvent {
  GetParkingEvent({required this.id});
  final int id;
}

class DeleteParkingEvent extends ParkingEvent {
  DeleteParkingEvent({required this.id});
  final int id;
}

class CreateParkingEvent extends ParkingEvent {
  CreateParkingEvent({
    required this.userId,
    required this.parkingId,
  });
  final int userId;
  final int parkingId;
}
