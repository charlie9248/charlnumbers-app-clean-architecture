import 'package:dartz/dartz.dart';
import 'package:numbers_app_clean_architecture/core/core.dart';

class InputConverter  {

    Future<Either<Failure, int>> convertStringToAnInteger(String number) async {
      try {
        final parsedNumber = int.parse(number);

        if(parsedNumber < 0) throw const FormatException();

        return Right(parsedNumber);
      } on FormatException {
        return Left(Failure.invalidInput("Invalid number format: $number"));
      }
    }
}

