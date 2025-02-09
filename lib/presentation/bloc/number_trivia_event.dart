part of 'number_trivia_bloc.dart';

@freezed
class NumberTriviaEvent with _$NumberTriviaEvent {
  const factory NumberTriviaEvent.getNumberTriviaConcreteNumber(String number) = _GetNumberTriviaConcreteNumber;
  const factory NumberTriviaEvent.getNumberTriviaRandomNumber() = _GetNumberTriviaRandomNumber;
}
