import 'package:just_places/features/places/data/models/estimate_model.dart';
import 'package:just_places/features/places/data/models/place_model.dart';
import 'package:just_places/features/places/data/models/product_detail_model.dart';
import 'package:just_places/features/places/domain/entities/estimate_entity.dart';
import 'package:just_places/features/places/domain/entities/place_detail_entity.dart';
import 'package:just_places/features/places/domain/entities/place_entity.dart';

class PlaceMapper {
  const PlaceMapper._();

  static PlaceEntity toPlaceEntity(Place model) =>
      PlaceEntity(description: model.description, placeId: model.placeId);

  static PlaceDetailEntity toPlaceDetailEntity(PlaceDetail model) =>
      PlaceDetailEntity(
        formattedAddress: model.formattedAddress,
        location: LocationEntity(
          model.geometry.location.lat,
          model.geometry.location.lng,
        ),
      );

  static EstimateEntity toEstimateEntity(Estimate model) => EstimateEntity(
        distance: model.distance.text,
        duration: model.duration.text,
        fare: model.fare?.text ?? '',
      );
}
