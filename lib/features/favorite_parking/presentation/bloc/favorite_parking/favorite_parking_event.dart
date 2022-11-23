abstract class FavoriteParkingEvent {}

class InitFavoriteParkingEvent extends FavoriteParkingEvent {}

class GetFavoriteParkingEvent extends FavoriteParkingEvent {
  GetFavoriteParkingEvent({required this.userUid});
  final String userUid;
}
class CreateFavoriteParkingEvent extends FavoriteParkingEvent {
  CreateFavoriteParkingEvent({required this.userUid, required this.parkingId,});
  final String userUid;
  final int parkingId;
}

class DeleteFavoriteParkingEvent extends FavoriteParkingEvent {
  DeleteFavoriteParkingEvent({required this.id});
  final int id;
}
