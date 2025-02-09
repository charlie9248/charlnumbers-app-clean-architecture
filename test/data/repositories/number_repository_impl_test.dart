
import 'package:dartz/dartz.dart';
import 'package:mocktail/mocktail.dart';
import 'package:numbers_app_clean_architecture/core/core_failure.dart';
import 'package:numbers_app_clean_architecture/core/exptions.dart';
import 'package:numbers_app_clean_architecture/core/network/network_info.dart';
import 'package:numbers_app_clean_architecture/data/datasources/number_trivia_local_data_source.dart';
import 'package:numbers_app_clean_architecture/data/datasources/number_trivia_remote_data_source.dart';
import 'package:numbers_app_clean_architecture/data/models/number_trivia_model.dart';
import 'package:numbers_app_clean_architecture/data/repositories/NumberRepositoryImpl.dart';
import 'package:numbers_app_clean_architecture/domain/entities/number_trivia.dart';
import 'package:test/test.dart';

class MockNumberTriviaLocalDataSource extends Mock  implements NumberTriviaLocalDataSource {}

class MockNumberTriviaRemoteDataSource extends Mock  implements NumberTriviaRemoteDataSource {}

class MockNetworkInfo extends Mock  implements NetworkInfo {}



void main(){

  late MockNumberTriviaLocalDataSource  mockNumberTriviaLocalDataSource;
  late MockNumberTriviaRemoteDataSource  mockNumberTriviaRemoteDataSource;
  late MockNetworkInfo  mockNetworkInfo;
  late NumberRepositoryImpl numberRepository;

  setUp((){
    mockNumberTriviaRemoteDataSource = MockNumberTriviaRemoteDataSource();
    mockNumberTriviaLocalDataSource = MockNumberTriviaLocalDataSource();
    mockNetworkInfo = MockNetworkInfo();
    numberRepository  = NumberRepositoryImpl(
      networkInfo: mockNetworkInfo,
      numberTriviaLocalDataSource: mockNumberTriviaLocalDataSource,
      numberTriviaRemoteDataSource: mockNumberTriviaRemoteDataSource);
  });

  const triviaNumberModel  =   NumberTriviaModel(number: 42, text: "Testing");

  const triviaNumberEntity  =   NumberTrivia(number: 42, text: "Testing");

  const tNumberTrivia  =  42;


  group("getConcreteNumberTrivia", (){

    // test("should return true when device is connected ", ()  async{
    //   when(() => mockNetworkInfo.isConnected).thenAnswer((_) async  => true);
    //
    //
    //    await numberRepository.getConcreteNumber(tNumberTrivia);
    //
    //   verify(() async => mockNetworkInfo.isConnected);
    //
    //   verify(() => mockNumberTriviaRemoteDataSource.getConcreteNumber(tNumberTrivia));
    //
    //
    // });


    group("device is online", (){
      setUp((){
        when(() => mockNetworkInfo.isConnected).thenAnswer((_) async  => true);
      });

      test("should return trivia number when call is successful", () async{

        when(() => mockNumberTriviaRemoteDataSource.getConcreteNumber(any())).thenAnswer((_) async =>  triviaNumberModel);

        when(() => mockNumberTriviaLocalDataSource.cacheNumberTrivia(triviaNumberModel))
            .thenAnswer((_) async => Future.value());

        final results  =  await numberRepository.getConcreteNumber(tNumberTrivia);

        expect(results, const Right(triviaNumberEntity));

        verify(() => mockNumberTriviaRemoteDataSource.getConcreteNumber(tNumberTrivia));


      });


      test("should cache the data locally when the call to remote data source is successful", () async {
         when(() => mockNumberTriviaRemoteDataSource.getConcreteNumber(any())).thenAnswer((_) async => triviaNumberModel);

         when(() => mockNumberTriviaLocalDataSource.cacheNumberTrivia(triviaNumberModel))
             .thenAnswer((_) async => Future.value());

         final results  =  await numberRepository.getConcreteNumber(tNumberTrivia);

         expect(results, const Right(triviaNumberEntity));

         verify(() => mockNumberTriviaRemoteDataSource.getConcreteNumber(tNumberTrivia));
         verify(()  => mockNumberTriviaLocalDataSource.cacheNumberTrivia(triviaNumberModel));

      });


      test("should return throw  Exception  when call is unsuccessful", () async{

        when(() => mockNumberTriviaRemoteDataSource.getConcreteNumber(any())).thenThrow((ServerException()));

        final result   =  await numberRepository.getConcreteNumber(tNumberTrivia);

        expect(result, const Left(Failure.server("Please check your connection")));
        verifyZeroInteractions(mockNumberTriviaLocalDataSource);
        verify(() => mockNumberTriviaRemoteDataSource.getConcreteNumber(tNumberTrivia));

      });
    });

    group("When device is offline", (){
      setUp((){
        when(() => mockNetworkInfo.isConnected).thenAnswer((_) async  => false);
      });


      
      test("should return locally cashed data when there is no connection", () async {

        when(() => mockNumberTriviaLocalDataSource.getLastNumberTrivia()).thenAnswer((_) async  =>  triviaNumberModel);

        final results  =  await numberRepository.getConcreteNumber(tNumberTrivia);

        verifyZeroInteractions(mockNumberTriviaRemoteDataSource);
        verify(() => mockNumberTriviaLocalDataSource.getLastNumberTrivia());
        expect(results, const Right(triviaNumberEntity));
      });


      test("should return NocacheData  when there is no data present", () async {

        when(() => mockNumberTriviaLocalDataSource.getLastNumberTrivia()).thenThrow(NoLocalDataException());

        final results  =  await numberRepository.getConcreteNumber(tNumberTrivia);

        verifyZeroInteractions(mockNumberTriviaRemoteDataSource);
        verify(() => mockNumberTriviaLocalDataSource.getLastNumberTrivia());
        expect(results, const Left(Failure.connection("No data available")));
      });
      
      
    });
  });


  group("getRandomNumberTrivia", (){

    // test("should return true when device is connected ", () async{
    //   when(() => mockNetworkInfo.isConnected).thenAnswer((_) async  => true);
    //
    //
    //    await numberRepository.getRandomNumber();
    //
    //   verify(() => mockNetworkInfo.isConnected);
    // });


    group("device is online", (){
      setUp((){
        when(() => mockNetworkInfo.isConnected).thenAnswer((_) async  => true);
      });

      test("should return trivia number when call is successful", () async{

        when(() => mockNumberTriviaRemoteDataSource.getRandomNumber()).thenAnswer((_) async =>  triviaNumberModel);

        when(() => mockNumberTriviaLocalDataSource.cacheNumberTrivia(triviaNumberModel))
            .thenAnswer((_) async => Future.value());

        final results  =  await numberRepository.getRandomNumber();

        expect(results, const Right(triviaNumberEntity));

        verify(() => mockNumberTriviaRemoteDataSource.getRandomNumber());


      });


      test("should cache the data locally when the call to remote data source is successful", () async {
        when(() => mockNumberTriviaRemoteDataSource.getRandomNumber()).thenAnswer((_) async => triviaNumberModel);

        when(() => mockNumberTriviaLocalDataSource.cacheNumberTrivia(triviaNumberModel))
            .thenAnswer((_) async => Future.value());

        final results  =  await numberRepository.getRandomNumber();

        expect(results, const Right(triviaNumberEntity));

        verify(() => mockNumberTriviaRemoteDataSource.getRandomNumber());
        verify(()  => mockNumberTriviaLocalDataSource.cacheNumberTrivia(triviaNumberModel));

      });


      test("should return throw  Exception  when call is unsuccessful", () async{

        when(() => mockNumberTriviaRemoteDataSource.getRandomNumber()).thenThrow((ServerException()));

        final result   =  await numberRepository.getRandomNumber();

        expect(result, const Left(Failure.server("Please check your connection")));
        verifyZeroInteractions(mockNumberTriviaLocalDataSource);
        verify(() => mockNumberTriviaRemoteDataSource.getRandomNumber());

      });
    });

    group("When device is offline", (){
      setUp((){
        when(() => mockNetworkInfo.isConnected).thenAnswer((_) async  => false);
      });


      test("should return locally cashed data when there is no connection", () async {

        when(() => mockNumberTriviaLocalDataSource.getLastNumberTrivia()).thenAnswer((_) async  =>  triviaNumberModel);

        final results  =  await numberRepository.getRandomNumber();

        verifyZeroInteractions(mockNumberTriviaRemoteDataSource);
        verify(() => mockNumberTriviaLocalDataSource.getLastNumberTrivia());
        expect(results, const Right(triviaNumberEntity));
      });


      test("should return NocacheData  when there is no data present", () async {

        when(() => mockNumberTriviaLocalDataSource.getLastNumberTrivia()).thenThrow(NoLocalDataException());

        final results  =  await numberRepository.getRandomNumber();

        verifyZeroInteractions(mockNumberTriviaRemoteDataSource);
        verify(() => mockNumberTriviaLocalDataSource.getLastNumberTrivia());
        expect(results, const Left(Failure.connection("No data available")));
      });


    });
  });
}