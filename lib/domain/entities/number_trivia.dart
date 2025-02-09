
import 'package:freezed_annotation/freezed_annotation.dart';

part 'number_trivia.freezed.dart';
@freezed
class NumberTrivia with _$NumberTrivia{
  const factory NumberTrivia({
    required int number,
    required String text
  }) =  _NumberTrivia;
}