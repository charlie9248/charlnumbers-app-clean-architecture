import 'package:dartz/dartz.dart';

import '../../core/core_failure.dart';
import '../entities/number_trivia.dart';
import '../repositories/number_trivia_repository.dart';

class GetRandomNumberUseCase{

  final NumberTriviaRepository numberTriviaRepository;

  GetRandomNumberUseCase(this.numberTriviaRepository);


  Future<Either<CoreFailure, NumberTrivia>> call()  async {
    return await numberTriviaRepository.getRandomNumber();
  }

}

class NoParams {
  NoParams();
}