import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:just_places/features/places/domain/entities/estimate_entity.dart';
import 'package:just_places/features/places/domain/entities/place_detail_entity.dart';
import 'package:just_places/features/places/domain/entities/place_entity.dart';
import 'package:just_places/features/places/domain/usecases/get_autocomplete.dart';
import 'package:just_places/features/places/domain/usecases/get_detail.dart';
import 'package:just_places/features/places/domain/usecases/get_estimate.dart';
import 'package:just_places/features/places/presentation/utils/enums.dart';
import 'package:rxdart/rxdart.dart';

part 'places_bloc.freezed.dart';
part 'places_event.dart';
part 'places_state.dart';

class PlacesBloc extends Bloc<PlacesEvent, PlacesState> {
  final GetAutocomplete getAutocomplete;
  final GetDetail getDetail;
  final GetEstimate getEstimate;

  PlacesBloc(this.getAutocomplete, this.getDetail, this.getEstimate)
      : super(const PlacesInitial()) {
    on<PlacesInitialEvent>(_placesInitialEvent);
    on<PlacesAutoCompleteEvent>(_placesAutoCompleteEvent,
        transformer: _debounceTransformer());
    on<PlaceDetailEvent>(_placeDetailEvent);
    on<PlacesEstimateEvent>(_placesEstimateEvent);
  }

  void _placesInitialEvent(
    PlacesInitialEvent event,
    Emitter<PlacesState> emit,
  ) =>
      emit(const PlacesState.initial());

  Future<void> _placesAutoCompleteEvent(
    PlacesAutoCompleteEvent event,
    Emitter<PlacesState> emit,
  ) async {
    emit(const PlacesState.loading());

    final params =
        GetAutocompleteParam(event.keyword, sessionToken: event.sessionToken);
    final result = await getAutocomplete.call(params);

    result.fold(
      (l) => emit(PlacesState.failure(l.message)),
      (r) => emit(PlacesState.placesLoaded(r)),
    );
  }

  Future<void> _placeDetailEvent(
    PlaceDetailEvent event,
    Emitter<PlacesState> emit,
  ) async {
    emit(const PlacesState.loading());

    final params = GetDetailParam(placeId: event.placeId, latLng: event.latLng);
    final result = await getDetail.call(params);

    result.fold(
      (l) => emit(PlacesState.failure(l.message)),
      (r) => emit(PlacesState.detailLoaded(r)),
    );
  }

  Future<void> _placesEstimateEvent(
    PlacesEstimateEvent event,
    Emitter<PlacesState> emit,
  ) async {
    if (event.origin != null &&
        event.destination != null &&
        event.mode != null) {
      emit(const PlacesState.loading());

      final params = GetEstimateParam(
        origin: '${event.origin!.latitude},${event.origin!.longitude}',
        destination:
            '${event.destination!.latitude},${event.destination!.longitude}',
        mode: event.mode!.value,
      );
      final result = await getEstimate.call(params);

      result.fold(
        (l) => emit(PlacesState.failure(l.message)),
        (r) => emit(PlacesEstimate(result: r)),
      );
    } else {
      if (state is PlacesEstimate) {
        final estimateState = state as PlacesEstimate;

        if (event.origin != null) {
          emit(
            estimateState.copyWith(
              origin: [],
              destination: estimateState.destination.isNotEmpty
                  ? estimateState.destination
                  : [],
            ),
          );
          await Future.delayed(const Duration(milliseconds: 500));
        } else if (event.destination != null) {
          emit(
            estimateState.copyWith(
              origin:
                  estimateState.origin.isNotEmpty ? estimateState.origin : [],
              destination: [],
            ),
          );
          await Future.delayed(const Duration(milliseconds: 500));
        } else if (event.mode != null) {
          emit(
            estimateState.copyWith(
              origin:
                  estimateState.origin.isNotEmpty ? estimateState.origin : [],
              destination: estimateState.destination.isNotEmpty
                  ? estimateState.destination
                  : [],
              mode: null,
            ),
          );
          await Future.delayed(const Duration(milliseconds: 500));
        }

        emit(
          estimateState.copyWith(
            origin: event.origin != null
                ? [event.origin!.latitude, event.origin!.longitude]
                : estimateState.origin.isNotEmpty
                    ? estimateState.origin
                    : [],
            destination: event.destination != null
                ? [event.destination!.latitude, event.destination!.longitude]
                : estimateState.destination.isNotEmpty
                    ? estimateState.destination
                    : [],
            mode: event.mode,
            listen: event.listen,
          ),
        );
      } else {
        emit(
          PlacesEstimate(
            origin: event.origin != null
                ? [event.origin!.latitude, event.origin!.longitude]
                : [],
            destination: event.destination != null
                ? [event.destination!.latitude, event.destination!.longitude]
                : [],
            mode: event.mode,
            listen: event.listen,
          ),
        );
      }
    }
  }
}

EventTransformer<Event> _debounceTransformer<Event>([
  Duration duration = const Duration(milliseconds: 500),
]) {
  return (events, mapper) {
    return events.debounceTime(duration).switchMap(mapper);
  };
}
