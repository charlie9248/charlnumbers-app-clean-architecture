import 'package:dartz/dartz.dart';
import 'package:numbers_app_clean_architecture/core/core_failure.dart';
import 'package:numbers_app_clean_architecture/domain/entities/number_trivia.dart';

abstract class NumberTriviaRepository {
  Future<Either<CoreFailure , NumberTrivia>> getConcreteNumber(int number);
  Future<Either<CoreFailure , NumberTrivia>> getRandomNumber();
}