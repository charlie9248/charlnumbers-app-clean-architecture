import 'dart:convert';

import 'package:numbers_app_clean_architecture/core/exptions.dart';
import 'package:numbers_app_clean_architecture/data/models/number_trivia_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class NumberTriviaLocalDataSource {
  Future<NumberTriviaModel> getLastNumberTrivia();
  Future<void> cacheNumberTrivia(NumberTriviaModel numberTriviaModel);
}


class NumberTriviaLocalDataSourceImpl implements NumberTriviaLocalDataSource {

  final SharedPreferences sharedPreferences;

  NumberTriviaLocalDataSourceImpl({required this.sharedPreferences});

  @override
  Future<void> cacheNumberTrivia(NumberTriviaModel numberTriviaModel) {
    return sharedPreferences.setString(
      'CACHED_NUMBER_TRIVIA',
      json.encode(numberTriviaModel.toJson()),
    );
  }

  @override
  Future<NumberTriviaModel> getLastNumberTrivia() {
    final jsonString = sharedPreferences.getString('CACHED_NUMBER_TRIVIA');
    if (jsonString != null) {
      return Future.value(NumberTriviaModel.fromJson(json.decode(jsonString)));
    } else {
      throw NoLocalDataException();
    }
  }

}