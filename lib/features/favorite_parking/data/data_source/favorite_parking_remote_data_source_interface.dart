import '../models/favorite_parking_model/favorite_parking_model.dart';

abstract class FavoriteParkingDataSource {
  Future<List<FavoriteParkingModel>> getItems({required String userUid});
  Future<List<FavoriteParkingModel>> create({
    required String userUid,
    required int parkingId,
    required String name,
  });
  Future<List<FavoriteParkingModel>> update({
    required int id,
    required String name,
  });
  Future<String> delete({
    required int id,
  });
}
