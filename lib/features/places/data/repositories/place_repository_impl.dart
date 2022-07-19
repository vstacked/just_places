import 'package:dartz/dartz.dart';
import 'package:just_places/core/utils/app_error.dart';
import 'package:just_places/features/places/data/datasources/place_remote_data_source.dart';
import 'package:just_places/features/places/data/mappers/place_mapper.dart';
import 'package:just_places/features/places/domain/entities/estimate_entity.dart';
import 'package:just_places/features/places/domain/entities/place_detail_entity.dart';
import 'package:just_places/features/places/domain/entities/place_entity.dart';
import 'package:just_places/features/places/domain/repository/place_repository.dart';

class PlaceRepositoryImpl implements IPlaceRepository {
  final PlaceRemoteDataSourceImpl remoteDataSource;

  const PlaceRepositoryImpl(this.remoteDataSource);

  @override
  Future<Either<AppError, List<PlaceEntity>>> getAutocomplete(
    String keyword,
    String sessionToken,
  ) async {
    try {
      final result =
          await remoteDataSource.getAutocomplete(keyword, sessionToken);
      return Right(result.map((e) => PlaceMapper.toPlaceEntity(e)).toList());
    } on AppError catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Either<AppError, PlaceDetailEntity>> getDetail(
    String? placeId,
    String? latLng,
  ) async {
    try {
      final result = await remoteDataSource.getDetail(placeId, latLng);
      return Right(PlaceMapper.toPlaceDetailEntity(result));
    } on AppError catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Either<AppError, EstimateEntity>> getEstimate(
    String origin,
    String destination,
    String mode,
  ) async {
    try {
      final result = await remoteDataSource.getEstimate(
        origin,
        destination,
        mode,
      );

      return Right(PlaceMapper.toEstimateEntity(result));
    } on AppError catch (e) {
      return Left(e);
    }
  }
}
