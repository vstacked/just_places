import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_detail_model.freezed.dart';
part 'product_detail_model.g.dart';

@freezed
class PlaceDetail with _$PlaceDetail {
  const factory PlaceDetail({
    @JsonKey(name: 'formatted_address') required String formattedAddress,
    required Geometry geometry,
  }) = _PlaceDetail;

  factory PlaceDetail.fromJson(Map<String, dynamic> json) =>
      _$PlaceDetailFromJson(json);
}

@freezed
class Geometry with _$Geometry {
  const factory Geometry({
    required Location location,
  }) = _Geometry;

  factory Geometry.fromJson(Map<String, dynamic> json) =>
      _$GeometryFromJson(json);
}

@freezed
class Location with _$Location {
  const factory Location({
    required double lat,
    required double lng,
  }) = _Location;

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);
}
