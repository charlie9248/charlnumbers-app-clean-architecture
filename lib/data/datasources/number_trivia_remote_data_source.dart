import 'dart:convert';

import 'package:numbers_app_clean_architecture/data/models/number_trivia_model.dart';
import 'package:http/http.dart' as http;

import '../../core/constants/constants.dart' show apiUrl ,  apiUrlRandom;
import '../../core/exptions.dart';

abstract class NumberTriviaRemoteDataSource {
  Future<NumberTriviaModel> getConcreteNumber(int number);
  Future<NumberTriviaModel> getRandomNumber();
}


class NumberTriviaRemoteDataSourceImpl  implements NumberTriviaRemoteDataSource {


  final http.Client  client;

  NumberTriviaRemoteDataSourceImpl({required this.client});

  @override
  Future<NumberTriviaModel> getConcreteNumber(int number)  async {

    final  response  = await client.get(Uri.parse(apiUrl(number.toString())) ,  headers: {'Content-Type': 'application/json'});

    if(response.statusCode ==  200) {
      return NumberTriviaModel.fromJson(json.decode(response.body));
    }
    throw ServerException();
  }

  @override
  Future<NumberTriviaModel> getRandomNumber() async {
    final response = await client.get(
      Uri.parse(apiUrlRandom),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      return NumberTriviaModel.fromJson(json.decode(response.body));
    } else {
      throw ServerException();
    }
  }

}
