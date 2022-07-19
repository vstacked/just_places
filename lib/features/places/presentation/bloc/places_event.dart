part of 'places_bloc.dart';

@freezed
class PlacesEvent with _$PlacesEvent {
  const factory PlacesEvent.initial() = PlacesInitialEvent;

  const factory PlacesEvent.autocomplete(String keyword,
      {required String sessionToken}) = PlacesAutoCompleteEvent;

  const factory PlacesEvent.detail({String? placeId, String? latLng}) =
      PlaceDetailEvent;

  const factory PlacesEvent.estimate({
    LatLng? origin,
    LatLng? destination,
    ModeType? mode,
    @Default(false) bool listen,
  }) = PlacesEstimateEvent;
}
