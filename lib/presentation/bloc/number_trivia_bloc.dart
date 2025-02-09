import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:numbers_app_clean_architecture/core/utils/input_conveter.dart';
import 'package:numbers_app_clean_architecture/domain/entities/number_trivia.dart';
import 'package:numbers_app_clean_architecture/domain/usecases/get_concrete_number_usecase.dart';
import 'package:numbers_app_clean_architecture/domain/usecases/get_random_number_usecase.dart';

part 'number_trivia_event.dart';
part 'number_trivia_state.dart';
part 'number_trivia_bloc.freezed.dart';

class NumberTriviaBloc extends Bloc<NumberTriviaEvent, NumberTriviaState> {
  final GetConcreteNumberUseCase concreteNumberUseCase;
  final GetRandomNumberUseCase randomNumberUseCase;
  final InputConverter inputConverter;

  NumberTriviaBloc(
      {required this.concreteNumberUseCase,
      required this.randomNumberUseCase,
      required this.inputConverter})
      : super(NumberTriviaState.initial()) {
    on<NumberTriviaEvent>((event, emit) async {
      await event.map(getNumberTriviaConcreteNumber: (value) async {
        emit(const NumberTriviaState.loading());

        final failureOrTrivia =
            await concreteNumberUseCase(int.parse(value.number));

        failureOrTrivia.fold(
          (failure) {
            emit(const NumberTriviaState.error("Data loading not successful"));
          },
          (trivia) {
            emit(NumberTriviaState.success(trivia));
          },
        );
      }, getNumberTriviaRandomNumber: (value) async {
        emit(const NumberTriviaState.loading());

        final failureOrTrivia = await randomNumberUseCase();

        failureOrTrivia.fold(
          (failure) {
            emit(const NumberTriviaState.error("Data loading not successful"));
          },
          (trivia) {
            emit(NumberTriviaState.success(trivia));
          },
        );
      });
    });
  }
}
