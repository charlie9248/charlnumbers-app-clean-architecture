
import 'package:dartz/dartz.dart';
import 'package:numbers_app_clean_architecture/core/usecase/usecase.dart';
import 'package:numbers_app_clean_architecture/domain/repositories/number_trivia_repository.dart';

import '../../core/core.dart';
import '../entities/number_trivia.dart';

class GetConcreteNumberUseCase {

  final NumberTriviaRepository numberTriviaRepository;

  GetConcreteNumberUseCase(this.numberTriviaRepository);

  Future<Either<CoreFailure, NumberTrivia>> call(int number)  async {
    return  await numberTriviaRepository.getConcreteNumber(number);
  }

}

class Params {
  final number;
  Params(this.number);
}

