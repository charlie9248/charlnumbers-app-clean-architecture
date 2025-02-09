
import 'package:dartz/dartz.dart';
import 'package:numbers_app_clean_architecture/domain/entities/number_trivia.dart';
import 'package:numbers_app_clean_architecture/domain/repositories/number_trivia_repository.dart';
import 'package:mocktail/mocktail.dart';
import 'package:numbers_app_clean_architecture/domain/usecases/get_concrete_number_usecase.dart';
import 'package:test/test.dart';

class MockNumberTriviaRepository extends Mock implements NumberTriviaRepository {}


void main(){

  late MockNumberTriviaRepository mockNumberTriviaRepository;
  late GetConcreteNumberUseCase useCase;


  setUp((){
    mockNumberTriviaRepository =  MockNumberTriviaRepository();
    useCase = GetConcreteNumberUseCase(mockNumberTriviaRepository);
  });

  const  numberTrivia =   NumberTrivia(number: 42, text: "testing");

  const tNumberTrivia =  42;


  group("Get data from MockNumberTriviaRepository", (){

    test("should return number trivia when  number is entered", () async{
      when(() => mockNumberTriviaRepository.getConcreteNumber(any())).thenAnswer((_) async => const Right(numberTrivia));

      final results  =  await useCase(tNumberTrivia);

      expect(results, const Right(numberTrivia));

      verify(() =>mockNumberTriviaRepository.getConcreteNumber(tNumberTrivia));
      verifyNoMoreInteractions(mockNumberTriviaRepository);

    });
  });

}