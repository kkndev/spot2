import '../models/parking_item_model/parking_item_model.dart';
import '../models/parking_model/parking_model.dart';

abstract class ParkingDataSource {
  Future<List<ParkingModel>> getItems();
  Future<ParkingItemModel> getItem({required int id});
  Future<List<ParkingModel>> getItemsByAddress({
    required String searchValue,
  });
}
