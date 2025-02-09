import 'package:freezed_annotation/freezed_annotation.dart';

part 'core_failure.freezed.dart';


abstract class CoreFailure {
  final String? message;
  CoreFailure(this.message);
}


@freezed
class Failure with _$Failure  implements CoreFailure{

  const factory Failure.server(String? message) = ServerFailure;
  const factory Failure.connection(String? message) = ConnectionFailure;
  const factory Failure.database(String? message) = DatabaseFailure;
  const factory Failure.invalidInput(String? message) = InvalidInputFailure;

}