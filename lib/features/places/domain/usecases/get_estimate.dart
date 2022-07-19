import 'package:dartz/dartz.dart';
import 'package:just_places/core/utils/app_error.dart';
import 'package:just_places/features/places/domain/entities/estimate_entity.dart';
import 'package:just_places/features/places/domain/repository/place_repository.dart';
import 'package:just_places/features/places/domain/usecases/usecase.dart';

class GetEstimate implements UseCase<EstimateEntity, GetEstimateParam> {
  final IPlaceRepository _repository;

  const GetEstimate(this._repository);

  @override
  Future<Either<AppError, EstimateEntity>> call(
    GetEstimateParam params,
  ) async {
    return _repository.getEstimate(
      params.origin,
      params.destination,
      params.mode,
    );
  }
}

class GetEstimateParam {
  final String origin;
  final String destination;
  final String mode;

  const GetEstimateParam({
    required this.origin,
    required this.destination,
    required this.mode,
  });
}
