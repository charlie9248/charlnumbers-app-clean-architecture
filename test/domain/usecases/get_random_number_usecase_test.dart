
import 'package:dartz/dartz.dart';
import 'package:numbers_app_clean_architecture/domain/entities/number_trivia.dart';
import 'package:numbers_app_clean_architecture/domain/repositories/number_trivia_repository.dart';
import 'package:mocktail/mocktail.dart';
import 'package:numbers_app_clean_architecture/domain/usecases/get_random_number_usecase.dart';
import 'package:test/test.dart';

class MockNumberTriviaRepository extends Mock implements NumberTriviaRepository {}


void main(){

  late MockNumberTriviaRepository mockNumberTriviaRepository;
  late GetRandomNumberUseCase useCase;


  setUp((){
    mockNumberTriviaRepository =  MockNumberTriviaRepository();
    useCase = GetRandomNumberUseCase(mockNumberTriviaRepository);
  });

  const  numberTrivia =   NumberTrivia(number: 42, text: "testing");
  const tNumberTrivia =  42;


  group("Get data from MockNumberTriviaRepository", (){

    test("should return number random trivia with random number", () async{
      when(() => mockNumberTriviaRepository.getRandomNumber()).thenAnswer((_) async => const Right(numberTrivia));

      final results  =  await useCase();

      expect(results, const Right(numberTrivia));

      verify(() =>mockNumberTriviaRepository.getRandomNumber());
      verifyNoMoreInteractions(mockNumberTriviaRepository);

    });
  });

}