abstract class AuthDataSource {
  Future<String> refreshUserMasterToken({required int id});
  Future<String> loginToService({required String serviceName});
}
