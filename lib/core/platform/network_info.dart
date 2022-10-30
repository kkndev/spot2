import 'package:connectivity_plus/connectivity_plus.dart';

abstract class NetworkInfo {
  Future<bool> isConnected();
}

class NetworkInfoImp implements NetworkInfo {
  // final Connectivity connectionChecker;

  // NetworkInfoImp(this.connectionChecker){
  late ConnectivityResult connectivityResult;

  @override
  Future<bool> isConnected() async {
    connectivityResult = await Connectivity().checkConnectivity();
    return connectivityResult == ConnectivityResult.mobile ||
        connectivityResult == ConnectivityResult.wifi;
  }
}
