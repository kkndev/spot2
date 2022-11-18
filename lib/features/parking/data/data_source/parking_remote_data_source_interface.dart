import '../models/parking_model/parking_model.dart';

abstract class ParkingDataSource {
  Future<List<ParkingModel>> getItems({required int userId});
  Future<ParkingModel> getItem({required int id});
  Future<List<ParkingModel>> getItemsByAddress({
    required String searchValue,
  });
}
