import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class NetworkInfo {
  Future<bool> get isConnected;
}


class NetWorkInfoImpl implements NetworkInfo {


  //this is a singleton class
  final InternetConnection internetConnection;


  NetWorkInfoImpl({required this.internetConnection});

  @override
  Future<bool> get isConnected => internetConnection.hasInternetAccess;

}