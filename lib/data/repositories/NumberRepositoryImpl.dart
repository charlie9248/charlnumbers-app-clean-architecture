
import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:numbers_app_clean_architecture/core/core_failure.dart';
import 'package:numbers_app_clean_architecture/core/exptions.dart';
import 'package:numbers_app_clean_architecture/core/network/network_info.dart';
import 'package:numbers_app_clean_architecture/data/datasources/number_trivia_local_data_source.dart';
import 'package:numbers_app_clean_architecture/data/datasources/number_trivia_remote_data_source.dart';
import 'package:numbers_app_clean_architecture/data/models/number_trivia_model.dart';
import 'package:numbers_app_clean_architecture/domain/entities/number_trivia.dart';
import '../../domain/repositories/number_trivia_repository.dart';


class NumberRepositoryImpl  implements NumberTriviaRepository {

  final NumberTriviaLocalDataSource numberTriviaLocalDataSource;
  final NumberTriviaRemoteDataSource numberTriviaRemoteDataSource;
  final NetworkInfo networkInfo;


  NumberRepositoryImpl({
    required this.numberTriviaLocalDataSource,
    required this.numberTriviaRemoteDataSource,
    required this.networkInfo
  });

  @override
  Future<Either<CoreFailure, NumberTrivia>> getConcreteNumber(int number) async {
    if(await networkInfo.isConnected){
      try{
        final result  =  await numberTriviaRemoteDataSource.getConcreteNumber(number);
        numberTriviaLocalDataSource.cacheNumberTrivia(result);
        return Right(result.toNumberTrivia());
      }
      on ServerException {
        return  const Left(Failure.server("Please check your connection"));
      }
    }else {
      try {
        final result  =  await numberTriviaLocalDataSource.getLastNumberTrivia();
        return Right(result.toNumberTrivia());
      }
      on NoLocalDataException {
        return  const Left(Failure.connection("No data available"));
      }
    }

  }

  @override
  Future<Either<CoreFailure, NumberTrivia>> getRandomNumber() async{

    if(await networkInfo.isConnected){
      try{
        final result  =  await numberTriviaRemoteDataSource.getRandomNumber();
        numberTriviaLocalDataSource.cacheNumberTrivia(result);
        return Right(result.toNumberTrivia());
      }
      on ServerException {
        return  const Left(Failure.server("Please check your connection"));
      }
    }else {
      try {
        final result  =  await numberTriviaLocalDataSource.getLastNumberTrivia();
        return Right(result.toNumberTrivia());
      }
      on NoLocalDataException {
        return  const Left(Failure.connection("No data available"));
      }
    }

  }

}