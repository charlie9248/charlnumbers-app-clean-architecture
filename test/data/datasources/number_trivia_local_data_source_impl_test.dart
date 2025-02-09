import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:numbers_app_clean_architecture/core/exptions.dart';
import 'package:numbers_app_clean_architecture/data/datasources/number_trivia_local_data_source.dart';
import 'package:numbers_app_clean_architecture/data/models/number_trivia_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../helper/json_reader.dart';

class MockSharedPreferences extends Mock implements SharedPreferences {}

void main() {
  late NumberTriviaLocalDataSourceImpl dataSource;
  late MockSharedPreferences mockSharedPreferences;


  setUp(() {
    mockSharedPreferences = MockSharedPreferences();
    dataSource = NumberTriviaLocalDataSourceImpl(
      sharedPreferences: mockSharedPreferences,
    );
  });


  const  tNumberTriviaModel =   NumberTriviaModel(number: 42, text: "testing");


  group("getLastNumberTrivia", (){

    test('should return NumberTrivia from SharedPreferences when there is one in the cache', () async {
        when(() => mockSharedPreferences.getString(any()))
            .thenReturn(jsonReader('response.json'));

        final result = await dataSource.getLastNumberTrivia();


        verify(() => mockSharedPreferences.getString('CACHED_NUMBER_TRIVIA'));

        expect(result, equals(tNumberTriviaModel));
      },);

    test('should throw a CacheException when there is not a cached value', () async  {
      // arrange
      when( () => mockSharedPreferences.getString(any())).thenReturn(null);
      // act
      // Not calling the method here, just storing it inside a call variable
      final call =    dataSource.getLastNumberTrivia;

      expect(() => call(), throwsA(const TypeMatcher<NoLocalDataException>()));
    });

  });


  group('cacheNumberTrivia', () {
    const  tNumberTriviaModel = NumberTriviaModel(number: 1, text: 'test trivia');

    test('should call SharedPreferences to cache the data', () async {
      // act
      await dataSource.cacheNumberTrivia(tNumberTriviaModel);
      // assert
      final expectedJsonString = json.encode(tNumberTriviaModel.toJson());
      verify(() => mockSharedPreferences.setString(
        "CACHED_NUMBER_TRIVIA",
        expectedJsonString,
      ));
    });
  });


}
