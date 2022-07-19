import 'package:dartz/dartz.dart';
import 'package:just_places/core/utils/app_error.dart';
import 'package:just_places/features/places/domain/entities/place_detail_entity.dart';
import 'package:just_places/features/places/domain/repository/place_repository.dart';
import 'package:just_places/features/places/domain/usecases/usecase.dart';

class GetDetail implements UseCase<PlaceDetailEntity, GetDetailParam> {
  final IPlaceRepository _repository;

  const GetDetail(this._repository);

  @override
  Future<Either<AppError, PlaceDetailEntity>> call(
    GetDetailParam params,
  ) async {
    return _repository.getDetail(params.placeId, params.latLng);
  }
}

class GetDetailParam {
  final String? placeId;
  final String? latLng;

  const GetDetailParam({this.placeId, this.latLng});
}
