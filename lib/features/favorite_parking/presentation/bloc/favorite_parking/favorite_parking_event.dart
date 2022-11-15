abstract class FavoriteParkingEvent {}

class InitFavoriteParkingEvent extends FavoriteParkingEvent {}

class GetFavoriteParkingEvent extends FavoriteParkingEvent {
  GetFavoriteParkingEvent({required this.userUid});
  final String userUid;
}
