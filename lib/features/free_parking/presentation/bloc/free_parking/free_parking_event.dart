abstract class FreeParkingEvent {}

class InitFreeParkingEvent extends FreeParkingEvent {}

class GetFreeParkingEvent extends FreeParkingEvent {
  GetFreeParkingEvent({required this.userId});
  final int userId;
}

class DeleteFreeParkingEvent extends FreeParkingEvent {
  DeleteFreeParkingEvent({required this.id});
  final int id;
}

class CreateFreeParkingEvent extends FreeParkingEvent {
  CreateFreeParkingEvent({
    required this.userId,
    required this.parkingId,
  });
  final int userId;
  final int parkingId;
}
