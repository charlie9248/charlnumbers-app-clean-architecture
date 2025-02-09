import 'dart:convert';

import 'package:mocktail/mocktail.dart';
import 'package:numbers_app_clean_architecture/core/exptions.dart';
import 'package:numbers_app_clean_architecture/data/datasources/number_trivia_remote_data_source.dart';
import 'package:http/http.dart' as http;
import 'package:numbers_app_clean_architecture/data/models/number_trivia_model.dart';
import 'package:test/test.dart';

import '../../helper/json_reader.dart';

class MockHttpClient  extends Mock implements  http.Client {}

class FakeUri extends Fake implements Uri {}


void main(){


  late MockHttpClient mockHttpClient;
  late NumberTriviaRemoteDataSourceImpl numberTriviaRemoteDataSourceImpl;

  setUpAll(() {
    registerFallbackValue(FakeUri());
  });


  setUp((){
    mockHttpClient = MockHttpClient();
    numberTriviaRemoteDataSourceImpl = NumberTriviaRemoteDataSourceImpl(client: mockHttpClient);
  });
  
  const tNumberTrivia  =  42;

  const umberTriviaModel  =  NumberTriviaModel(number: 42 , text: 'Testing');

  group("getConcreteNumberTrivia", (){

    test('should preform a GET request on a URL with number being the endpoint and with application/json header', () async{
      

      when(() => mockHttpClient.get(any(), headers: any(named: 'headers')))
          .thenAnswer((_) async => http.Response(jsonReader("api_response.json"),200));

      await numberTriviaRemoteDataSourceImpl.getConcreteNumber(tNumberTrivia);
      

      verify(() => mockHttpClient.get(Uri.parse('http://numbersapi.com/$tNumberTrivia'), headers: {'Content-Type': 'application/json'},));
    });


    test(
        'should return NumberTrivia when the response code is 200 (success)',
        () async{

      when(() => mockHttpClient.get(any(), headers: any(named: 'headers')))
          .thenAnswer((_) async => http.Response(jsonReader("api_response.json"),200));

      final  results  = await numberTriviaRemoteDataSourceImpl.getConcreteNumber(tNumberTrivia);


      expect(results, umberTriviaModel);
      verify(() => mockHttpClient.get(Uri.parse('http://numbersapi.com/$tNumberTrivia'), headers: {'Content-Type': 'application/json'},));
    });

    test(
      'should throw a ServerException when the response code is 404 or other',
          () async {
        // arrange
        when(() => mockHttpClient.get(any(), headers: any(named: 'headers'))).thenAnswer(
              (_) async => http.Response('Something went wrong', 404),
        );
        // act
        final call = numberTriviaRemoteDataSourceImpl.getConcreteNumber(tNumberTrivia);
        // assert
        expect(() => call, throwsA(TypeMatcher<ServerException>()));
      },
    );

  });

}