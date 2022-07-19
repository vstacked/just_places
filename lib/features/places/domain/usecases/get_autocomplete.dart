import 'package:dartz/dartz.dart';
import 'package:just_places/core/utils/app_error.dart';
import 'package:just_places/features/places/domain/entities/place_entity.dart';
import 'package:just_places/features/places/domain/repository/place_repository.dart';
import 'package:just_places/features/places/domain/usecases/usecase.dart';

class GetAutocomplete
    implements UseCase<List<PlaceEntity>, GetAutocompleteParam> {
  final IPlaceRepository _repository;

  const GetAutocomplete(this._repository);

  @override
  Future<Either<AppError, List<PlaceEntity>>> call(
    GetAutocompleteParam params,
  ) async {
    return _repository.getAutocomplete(params.keyword, params.sessionToken);
  }
}

class GetAutocompleteParam {
  final String keyword;
  final String sessionToken;

  const GetAutocompleteParam(this.keyword, {required this.sessionToken});
}
