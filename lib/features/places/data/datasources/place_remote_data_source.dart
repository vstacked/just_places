import 'package:dio/dio.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:just_places/core/utils/app_error.dart';
import 'package:just_places/features/places/data/models/estimate_model.dart';
import 'package:just_places/features/places/data/models/place_model.dart';
import 'package:just_places/features/places/data/models/product_detail_model.dart';

abstract class IPlaceRemoteDataSource {
  Future<List<Place>> getAutocomplete(String keyword, String sessionToken);

  Future<PlaceDetail> getDetail(String? placeId, String? latLng);

  Future<Estimate> getEstimate(
    String origin,
    String destination,
    String mode,
  );
}

class PlaceRemoteDataSourceImpl implements IPlaceRemoteDataSource {
  final Dio dio;

  PlaceRemoteDataSourceImpl(this.dio);

  final FirebaseCrashlytics _crashlytics = FirebaseCrashlytics.instance;

  @override
  Future<List<Place>> getAutocomplete(
    String keyword,
    String sessionToken,
  ) async {
    try {
      final response = await dio.get(
        '/place/autocomplete/json',
        queryParameters: {
          'input': keyword,
          'language': 'id',
          'components': 'country:id',
          'sessiontoken': sessionToken,
        },
      );

      return (response.data['predictions'] as List)
          .map((e) => Place.fromJson(e))
          .toList();
    } catch (e, s) {
      if (e is! DioError) {
        await _crashlytics.recordError(e, s);
        throw const AppError('Error Occurred');
      }

      await _crashlytics.recordError(e.error, e.stackTrace);
      throw const AppError('Server Exception');
    }
  }

  @override
  Future<PlaceDetail> getDetail(String? placeId, String? latLng) async {
    try {
      final response = placeId != null
          ? await dio.get('/place/details/json',
              queryParameters: {'place_id': placeId})
          : await dio.get('/geocode/json', queryParameters: {'latlng': latLng});

      return PlaceDetail.fromJson(
        placeId != null ? response.data['result'] : response.data['results'][0],
      );
    } catch (e, s) {
      if (e is! DioError) {
        _crashlytics.recordError(e, s);
        throw AppError(e.toString());
      }

      _crashlytics.recordError(e.error, e.stackTrace);
      throw AppError(e.message);
    }
  }

  @override
  Future<Estimate> getEstimate(
    String origin,
    String destination,
    String mode,
  ) async {
    try {
      final response = await dio.get(
        '/distancematrix/json',
        queryParameters: {
          'origins': origin,
          'destinations': destination,
          'language': 'id',
          'mode': mode,
        },
      );

      final data = response.data;
      if ((data['rows'] as List).isNotEmpty &&
          ((data['rows'] as List).first['elements'] as List).isNotEmpty) {
        return Estimate.fromJson(
          ((data['rows'] as List).first['elements'] as List).first,
        );
      }

      throw Exception('Error');
    } catch (e, s) {
      if (e is! DioError) {
        _crashlytics.recordError(e, s);
        throw AppError(e.toString());
      }

      _crashlytics.recordError(e.error, e.stackTrace);
      throw AppError(e.message);
    }
  }
}
