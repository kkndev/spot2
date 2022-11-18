import '../models/models.dart';

abstract class UserRemoteDataSource {
  Future<String> activatePromoCode({required String promoCode});
  Future<UserModel> getUser({required int id});
  Future<UserInfoModel> whoami();
  Future<UserModel> updateUser({
    required String name,
    required String deviceToken,
  });
  Future<String> getMinAppVersion();
}
