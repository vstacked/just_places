import 'package:dartz/dartz.dart';
import 'package:just_places/core/utils/app_error.dart';
import 'package:just_places/features/places/domain/entities/estimate_entity.dart';
import 'package:just_places/features/places/domain/entities/place_detail_entity.dart';
import 'package:just_places/features/places/domain/entities/place_entity.dart';

abstract class IPlaceRepository {
  Future<Either<AppError, List<PlaceEntity>>> getAutocomplete(
    String keyword,
    String sessionToken,
  );

  Future<Either<AppError, PlaceDetailEntity>> getDetail(
    String? placeId,
    String? latLng,
  );

  Future<Either<AppError, EstimateEntity>> getEstimate(
    String origin,
    String destination,
    String mode,
  );
}
