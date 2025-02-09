import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/number_trivia.dart';

part 'number_trivia_model.freezed.dart';
part 'number_trivia_model.g.dart';

@freezed
class NumberTriviaModel with _$NumberTriviaModel {
  const factory NumberTriviaModel({
    required int number,
    required String text,
  }) = _NumberTriviaModel;

  factory NumberTriviaModel.fromJson(Map<String, dynamic> json) => _$NumberTriviaModelFromJson(json);

}

extension NumberTriviaModelExtension  on NumberTriviaModel {

  NumberTrivia   toNumberTrivia () {

    return NumberTrivia(number: number, text: text);
  }
}




