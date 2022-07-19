import 'package:dio/dio.dart';
import 'package:just_places/core/utils/env.dart';

class DioClient {
  Dio client() => Dio(
        BaseOptions(
          baseUrl: 'https://maps.googleapis.com/maps/api',
          connectTimeout: 5000,
          receiveTimeout: 3000,
          queryParameters: {
            'key': Env.keyGoogleMapsApi,
          },
        ),
      )..interceptors.add(LogInterceptor());
}
