part of 'places_bloc.dart';

@freezed
class PlacesState with _$PlacesState {
  const factory PlacesState.initial() = PlacesInitial;

  const factory PlacesState.loading() = PlacesLoading;

  const factory PlacesState.failure(String message) = PlacesFailure;

  const factory PlacesState.placesLoaded(List<PlaceEntity> places) =
      PlacesLoaded;

  const factory PlacesState.detailLoaded(PlaceDetailEntity detail) =
      PlaceDetailLoaded;

  const factory PlacesState.estimate({
    @Default([]) List<double> origin,
    @Default([]) List<double> destination,
    ModeType? mode,
    @Default(false) bool listen,
    @Default(EstimateEntity(distance: '', duration: '', fare: ''))
        EstimateEntity result,
  }) = PlacesEstimate;
}
