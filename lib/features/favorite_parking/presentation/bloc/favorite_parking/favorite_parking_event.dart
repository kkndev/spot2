abstract class FavoriteParkingEvent {}

class InitFavoriteParkingEvent extends FavoriteParkingEvent {}

class GetFavoriteParkingEvent extends FavoriteParkingEvent {
  GetFavoriteParkingEvent({required this.userUid});
  final String userUid;
}

class DeleteFavoriteParkingEvent extends FavoriteParkingEvent {
  DeleteFavoriteParkingEvent({required this.id});
  final int id;
}
