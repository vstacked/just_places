import 'package:dartz/dartz.dart';
import 'package:just_places/core/utils/app_error.dart';

abstract class UseCase<Output, Input> {
  Future<Either<AppError, Output>> call(Input params);
}

class NoParams {}
