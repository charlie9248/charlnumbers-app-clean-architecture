

import 'package:flutter_test/flutter_test.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import 'package:mocktail/mocktail.dart';
import 'package:numbers_app_clean_architecture/core/network/network_info.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MockSharedPreferences extends Mock implements SharedPreferences {}

class MockInternetConnection extends Mock implements InternetConnection {}


void main(){


  late MockInternetConnection mockInternetConnection;
  late NetWorkInfoImpl netWorkInfoImpl;


  setUp((){
    mockInternetConnection  = MockInternetConnection();
    netWorkInfoImpl =  NetWorkInfoImpl(internetConnection: mockInternetConnection);
  });


  group("Network info is connected" , (){

    test("should return  true when mockSharedPreferences  has  data ", () async {

      final hasConnectionFuture  =  Future.value(true);

      when(() => mockInternetConnection.hasInternetAccess).thenAnswer((_) => hasConnectionFuture);

      final  results  =  netWorkInfoImpl.isConnected;

      verify(() => mockInternetConnection.hasInternetAccess);

      expect(results, hasConnectionFuture);
    });
  });

}