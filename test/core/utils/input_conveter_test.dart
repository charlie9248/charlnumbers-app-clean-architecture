
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:numbers_app_clean_architecture/core/core_failure.dart';
import 'package:numbers_app_clean_architecture/core/utils/input_conveter.dart';

void main(){
  late InputConverter inputConverter;

  setUp((){
    inputConverter =  InputConverter();
  });

  group("StingToInt", (){

    test("should convert input to int when when its a string", () async {

      const number  =  "123";

      final results  = await inputConverter.convertStringToAnInteger(number);

      expect(results, const Right(123));

    });

    test("should throw Exception   when its a string", () async {

      const number  =  "abc";

      final results  = await inputConverter.convertStringToAnInteger(number);

      expect(results, const Left(Failure.invalidInput("Invalid number format: abc")));

    });


    test("should throw Exception   when String number is a negative number", () async {

      const number  =  "-123";

      final results  = await inputConverter.convertStringToAnInteger(number);

      expect(results, const Left(Failure.invalidInput("Invalid number format: -123")));

    });
  });
}