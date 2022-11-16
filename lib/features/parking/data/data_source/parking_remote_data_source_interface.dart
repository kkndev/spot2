import '../models/parking_model/parking_model.dart';

abstract class ParkingDataSource {
  Future<List<ParkingModel>> getItems({required int userId});
  Future<ParkingModel> getItem({required int id});
  Future<List<ParkingModel>> create({
    required int userId,
    required int parkingId,
  });
  Future<List<ParkingModel>> update({
    required int id,
  });
  Future<String> delete({
    required int id,
  });
}
