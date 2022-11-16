import '../models/free_parking_model/free_parking_model.dart';

abstract class FreeParkingDataSource {
  Future<List<FreeParkingModel>> getItems({required int userId});
  Future<List<FreeParkingModel>> create({
    required int userId,
    required int parkingId,
  });
  Future<List<FreeParkingModel>> update({
    required int id,
  });
  Future<String> delete({
    required int id,
  });
}
