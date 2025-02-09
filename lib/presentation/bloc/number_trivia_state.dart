part of 'number_trivia_bloc.dart';


@freezed
class NumberTriviaState with _$NumberTriviaState {

  factory NumberTriviaState({required int number , required String text}) = _NumberTriviaState;

  factory NumberTriviaState.initial() =>   NumberTriviaState(number: 0 , text: '');
  const factory NumberTriviaState.loading() = _Loading;
  const factory NumberTriviaState.success(NumberTrivia numberTrivia) = _Success;
  const factory NumberTriviaState.error(String? message) = _Error;

}
