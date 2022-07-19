import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:just_places/features/places/domain/entities/place_entity.dart';

part 'place_model.freezed.dart';
part 'place_model.g.dart';

@freezed
class Place with _$Place implements PlaceEntity {
  const factory Place({
    required String description,
    @JsonKey(name: 'place_id') required String placeId,
  }) = _Place;

  factory Place.fromJson(Map<String, dynamic> json) => _$PlaceFromJson(json);
}
