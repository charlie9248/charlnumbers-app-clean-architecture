
import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:numbers_app_clean_architecture/core/core_failure.dart';
import 'package:numbers_app_clean_architecture/core/utils/input_conveter.dart';
import 'package:numbers_app_clean_architecture/domain/entities/number_trivia.dart';
import 'package:numbers_app_clean_architecture/domain/usecases/get_concrete_number_usecase.dart';
import 'package:numbers_app_clean_architecture/domain/usecases/get_random_number_usecase.dart';
import 'package:numbers_app_clean_architecture/presentation/bloc/number_trivia_bloc.dart';

class MockGetConcreteNumberUseCase extends Mock
    implements GetConcreteNumberUseCase {}

class MockGetRandomNumberUseCase extends Mock
    implements GetRandomNumberUseCase {}

class MockInputConverter extends Mock implements InputConverter {}

class FakeUri extends Fake implements Uri {}

void main() {
  late MockGetConcreteNumberUseCase mockGetConcreteNumberUseCase;
  late MockGetRandomNumberUseCase mockGetRandomNumberUseCase;
  late MockInputConverter mockInputConverter;
  late NumberTriviaBloc numberTriviaBloc;

  setUp(() {
    mockGetConcreteNumberUseCase = MockGetConcreteNumberUseCase();
    mockGetRandomNumberUseCase = MockGetRandomNumberUseCase();
    mockInputConverter = MockInputConverter();

    numberTriviaBloc = NumberTriviaBloc(
        concreteNumberUseCase: mockGetConcreteNumberUseCase,
        randomNumberUseCase: mockGetRandomNumberUseCase,
        inputConverter: mockInputConverter);
  });

  setUpAll(() {
    registerFallbackValue(FakeUri());
  });

  const tNumber = "42";
  const parsedTNumber = 42;

  const testNumberTrivia = NumberTrivia(number: 42, text: "Testing");

  group("number trivia bloc", () {
    test("should return initial status when the bloc first load", () {
      expect(numberTriviaBloc.state, NumberTriviaState.initial());
    });

    group("getConcrete Number", () {


      blocTest<NumberTriviaBloc, NumberTriviaState>(
          "should should get  data from getConcreteNumber",
          build: () {
            when(() => mockGetConcreteNumberUseCase(any()))
                .thenAnswer((_) async => const Right(testNumberTrivia));
            return numberTriviaBloc;
          },
          act: (bloc) => bloc.add(
              const NumberTriviaEvent.getNumberTriviaConcreteNumber(tNumber)),
          verify: (bloc) {
            verify(() => mockGetConcreteNumberUseCase(parsedTNumber)).called(1);
          });

      blocTest<NumberTriviaBloc, NumberTriviaState>(
          "should emit [loading, success] when data is fetched successfully",
          build: () {
            when(() => mockGetConcreteNumberUseCase(any()))
                .thenAnswer((_) async => const Right(testNumberTrivia));
            return numberTriviaBloc;
          },
          act: (bloc) => bloc.add(
              const NumberTriviaEvent.getNumberTriviaConcreteNumber(tNumber)),
          expect: () => <NumberTriviaState>[
                const NumberTriviaState.loading(),
                const NumberTriviaState.success(testNumberTrivia),
              ],
          verify: (bloc) {
            verify(() => mockGetConcreteNumberUseCase(parsedTNumber)).called(1);
          });

      blocTest("should emit [ loading  , error ] when  data is not successful",
          build: () {
            when(() => mockGetConcreteNumberUseCase(any())).thenAnswer(
                (_) async =>
                    const Left(Failure.server("Data loading not successful")));
            return numberTriviaBloc;
          },
          act: (bloc) => {
                bloc.add(const NumberTriviaEvent.getNumberTriviaConcreteNumber(
                    tNumber))
              },
          expect: () => <NumberTriviaState>[
                const NumberTriviaState.loading(),
                const NumberTriviaState.error("Data loading not successful"),
              ],
          verify: (bloc) {
            verify(() => mockGetConcreteNumberUseCase(parsedTNumber)).called(1);
          });
    });

    group("getRandom Number", () {

      blocTest<NumberTriviaBloc, NumberTriviaState>(
          "should should get  data from getConcreteNumber",
          build: () {
            when(() => mockGetRandomNumberUseCase())
                .thenAnswer((_) async => const Right(testNumberTrivia));
            return numberTriviaBloc;
          },
          act: (bloc) => bloc.add(
              const NumberTriviaEvent.getNumberTriviaRandomNumber()),
          verify: (bloc) {
            verify(() => mockGetRandomNumberUseCase()).called(1);
          });
      blocTest<NumberTriviaBloc, NumberTriviaState>(
          "should emit [loading, success] when data is fetched successfully",
          build: () {
            when(() => mockGetRandomNumberUseCase())
                .thenAnswer((_) async => const Right(testNumberTrivia));
            return numberTriviaBloc;
          },
          act: (bloc) =>
              bloc.add(const NumberTriviaEvent.getNumberTriviaRandomNumber()),
          expect: () => <NumberTriviaState>[
                const NumberTriviaState.loading(),
                const NumberTriviaState.success(testNumberTrivia),
              ],
          verify: (bloc) {
            verify(() => mockGetRandomNumberUseCase()).called(1);
          });

      blocTest("should emit [ loading  , error ] when  data is not successful",
          build: () {
            when(() => mockGetRandomNumberUseCase()).thenAnswer((_) async =>
                const Left(Failure.server("Data loading not successful")));
            return numberTriviaBloc;
          },
          act: (bloc) =>
              {bloc.add(const NumberTriviaEvent.getNumberTriviaRandomNumber())},
          expect: () => <NumberTriviaState>[
                const NumberTriviaState.loading(),
                const NumberTriviaState.error("Data loading not successful"),
              ],
          verify: (bloc) {
            verify(() => mockGetRandomNumberUseCase()).called(1);
          });
    });
  });
}
