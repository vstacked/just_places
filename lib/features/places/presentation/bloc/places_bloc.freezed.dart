// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'places_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PlacesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String keyword, String sessionToken) autocomplete,
    required TResult Function(String? placeId, String? latLng) detail,
    required TResult Function(
            LatLng? origin, LatLng? destination, ModeType? mode, bool listen)
        estimate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String keyword, String sessionToken)? autocomplete,
    TResult Function(String? placeId, String? latLng)? detail,
    TResult Function(
            LatLng? origin, LatLng? destination, ModeType? mode, bool listen)?
        estimate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String keyword, String sessionToken)? autocomplete,
    TResult Function(String? placeId, String? latLng)? detail,
    TResult Function(
            LatLng? origin, LatLng? destination, ModeType? mode, bool listen)?
        estimate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlacesInitialEvent value) initial,
    required TResult Function(PlacesAutoCompleteEvent value) autocomplete,
    required TResult Function(PlaceDetailEvent value) detail,
    required TResult Function(PlacesEstimateEvent value) estimate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PlacesInitialEvent value)? initial,
    TResult Function(PlacesAutoCompleteEvent value)? autocomplete,
    TResult Function(PlaceDetailEvent value)? detail,
    TResult Function(PlacesEstimateEvent value)? estimate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlacesInitialEvent value)? initial,
    TResult Function(PlacesAutoCompleteEvent value)? autocomplete,
    TResult Function(PlaceDetailEvent value)? detail,
    TResult Function(PlacesEstimateEvent value)? estimate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlacesEventCopyWith<$Res> {
  factory $PlacesEventCopyWith(
          PlacesEvent value, $Res Function(PlacesEvent) then) =
      _$PlacesEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PlacesEventCopyWithImpl<$Res> implements $PlacesEventCopyWith<$Res> {
  _$PlacesEventCopyWithImpl(this._value, this._then);

  final PlacesEvent _value;
  // ignore: unused_field
  final $Res Function(PlacesEvent) _then;
}

/// @nodoc
abstract class _$$PlacesInitialEventCopyWith<$Res> {
  factory _$$PlacesInitialEventCopyWith(_$PlacesInitialEvent value,
          $Res Function(_$PlacesInitialEvent) then) =
      __$$PlacesInitialEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PlacesInitialEventCopyWithImpl<$Res>
    extends _$PlacesEventCopyWithImpl<$Res>
    implements _$$PlacesInitialEventCopyWith<$Res> {
  __$$PlacesInitialEventCopyWithImpl(
      _$PlacesInitialEvent _value, $Res Function(_$PlacesInitialEvent) _then)
      : super(_value, (v) => _then(v as _$PlacesInitialEvent));

  @override
  _$PlacesInitialEvent get _value => super._value as _$PlacesInitialEvent;
}

/// @nodoc

class _$PlacesInitialEvent implements PlacesInitialEvent {
  const _$PlacesInitialEvent();

  @override
  String toString() {
    return 'PlacesEvent.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PlacesInitialEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String keyword, String sessionToken) autocomplete,
    required TResult Function(String? placeId, String? latLng) detail,
    required TResult Function(
            LatLng? origin, LatLng? destination, ModeType? mode, bool listen)
        estimate,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String keyword, String sessionToken)? autocomplete,
    TResult Function(String? placeId, String? latLng)? detail,
    TResult Function(
            LatLng? origin, LatLng? destination, ModeType? mode, bool listen)?
        estimate,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String keyword, String sessionToken)? autocomplete,
    TResult Function(String? placeId, String? latLng)? detail,
    TResult Function(
            LatLng? origin, LatLng? destination, ModeType? mode, bool listen)?
        estimate,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlacesInitialEvent value) initial,
    required TResult Function(PlacesAutoCompleteEvent value) autocomplete,
    required TResult Function(PlaceDetailEvent value) detail,
    required TResult Function(PlacesEstimateEvent value) estimate,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PlacesInitialEvent value)? initial,
    TResult Function(PlacesAutoCompleteEvent value)? autocomplete,
    TResult Function(PlaceDetailEvent value)? detail,
    TResult Function(PlacesEstimateEvent value)? estimate,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlacesInitialEvent value)? initial,
    TResult Function(PlacesAutoCompleteEvent value)? autocomplete,
    TResult Function(PlaceDetailEvent value)? detail,
    TResult Function(PlacesEstimateEvent value)? estimate,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class PlacesInitialEvent implements PlacesEvent {
  const factory PlacesInitialEvent() = _$PlacesInitialEvent;
}

/// @nodoc
abstract class _$$PlacesAutoCompleteEventCopyWith<$Res> {
  factory _$$PlacesAutoCompleteEventCopyWith(_$PlacesAutoCompleteEvent value,
          $Res Function(_$PlacesAutoCompleteEvent) then) =
      __$$PlacesAutoCompleteEventCopyWithImpl<$Res>;
  $Res call({String keyword, String sessionToken});
}

/// @nodoc
class __$$PlacesAutoCompleteEventCopyWithImpl<$Res>
    extends _$PlacesEventCopyWithImpl<$Res>
    implements _$$PlacesAutoCompleteEventCopyWith<$Res> {
  __$$PlacesAutoCompleteEventCopyWithImpl(_$PlacesAutoCompleteEvent _value,
      $Res Function(_$PlacesAutoCompleteEvent) _then)
      : super(_value, (v) => _then(v as _$PlacesAutoCompleteEvent));

  @override
  _$PlacesAutoCompleteEvent get _value =>
      super._value as _$PlacesAutoCompleteEvent;

  @override
  $Res call({
    Object? keyword = freezed,
    Object? sessionToken = freezed,
  }) {
    return _then(_$PlacesAutoCompleteEvent(
      keyword == freezed
          ? _value.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as String,
      sessionToken: sessionToken == freezed
          ? _value.sessionToken
          : sessionToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PlacesAutoCompleteEvent implements PlacesAutoCompleteEvent {
  const _$PlacesAutoCompleteEvent(this.keyword, {required this.sessionToken});

  @override
  final String keyword;
  @override
  final String sessionToken;

  @override
  String toString() {
    return 'PlacesEvent.autocomplete(keyword: $keyword, sessionToken: $sessionToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlacesAutoCompleteEvent &&
            const DeepCollectionEquality().equals(other.keyword, keyword) &&
            const DeepCollectionEquality()
                .equals(other.sessionToken, sessionToken));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(keyword),
      const DeepCollectionEquality().hash(sessionToken));

  @JsonKey(ignore: true)
  @override
  _$$PlacesAutoCompleteEventCopyWith<_$PlacesAutoCompleteEvent> get copyWith =>
      __$$PlacesAutoCompleteEventCopyWithImpl<_$PlacesAutoCompleteEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String keyword, String sessionToken) autocomplete,
    required TResult Function(String? placeId, String? latLng) detail,
    required TResult Function(
            LatLng? origin, LatLng? destination, ModeType? mode, bool listen)
        estimate,
  }) {
    return autocomplete(keyword, sessionToken);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String keyword, String sessionToken)? autocomplete,
    TResult Function(String? placeId, String? latLng)? detail,
    TResult Function(
            LatLng? origin, LatLng? destination, ModeType? mode, bool listen)?
        estimate,
  }) {
    return autocomplete?.call(keyword, sessionToken);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String keyword, String sessionToken)? autocomplete,
    TResult Function(String? placeId, String? latLng)? detail,
    TResult Function(
            LatLng? origin, LatLng? destination, ModeType? mode, bool listen)?
        estimate,
    required TResult orElse(),
  }) {
    if (autocomplete != null) {
      return autocomplete(keyword, sessionToken);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlacesInitialEvent value) initial,
    required TResult Function(PlacesAutoCompleteEvent value) autocomplete,
    required TResult Function(PlaceDetailEvent value) detail,
    required TResult Function(PlacesEstimateEvent value) estimate,
  }) {
    return autocomplete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PlacesInitialEvent value)? initial,
    TResult Function(PlacesAutoCompleteEvent value)? autocomplete,
    TResult Function(PlaceDetailEvent value)? detail,
    TResult Function(PlacesEstimateEvent value)? estimate,
  }) {
    return autocomplete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlacesInitialEvent value)? initial,
    TResult Function(PlacesAutoCompleteEvent value)? autocomplete,
    TResult Function(PlaceDetailEvent value)? detail,
    TResult Function(PlacesEstimateEvent value)? estimate,
    required TResult orElse(),
  }) {
    if (autocomplete != null) {
      return autocomplete(this);
    }
    return orElse();
  }
}

abstract class PlacesAutoCompleteEvent implements PlacesEvent {
  const factory PlacesAutoCompleteEvent(final String keyword,
      {required final String sessionToken}) = _$PlacesAutoCompleteEvent;

  String get keyword;
  String get sessionToken;
  @JsonKey(ignore: true)
  _$$PlacesAutoCompleteEventCopyWith<_$PlacesAutoCompleteEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PlaceDetailEventCopyWith<$Res> {
  factory _$$PlaceDetailEventCopyWith(
          _$PlaceDetailEvent value, $Res Function(_$PlaceDetailEvent) then) =
      __$$PlaceDetailEventCopyWithImpl<$Res>;
  $Res call({String? placeId, String? latLng});
}

/// @nodoc
class __$$PlaceDetailEventCopyWithImpl<$Res>
    extends _$PlacesEventCopyWithImpl<$Res>
    implements _$$PlaceDetailEventCopyWith<$Res> {
  __$$PlaceDetailEventCopyWithImpl(
      _$PlaceDetailEvent _value, $Res Function(_$PlaceDetailEvent) _then)
      : super(_value, (v) => _then(v as _$PlaceDetailEvent));

  @override
  _$PlaceDetailEvent get _value => super._value as _$PlaceDetailEvent;

  @override
  $Res call({
    Object? placeId = freezed,
    Object? latLng = freezed,
  }) {
    return _then(_$PlaceDetailEvent(
      placeId: placeId == freezed
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as String?,
      latLng: latLng == freezed
          ? _value.latLng
          : latLng // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$PlaceDetailEvent implements PlaceDetailEvent {
  const _$PlaceDetailEvent({this.placeId, this.latLng});

  @override
  final String? placeId;
  @override
  final String? latLng;

  @override
  String toString() {
    return 'PlacesEvent.detail(placeId: $placeId, latLng: $latLng)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaceDetailEvent &&
            const DeepCollectionEquality().equals(other.placeId, placeId) &&
            const DeepCollectionEquality().equals(other.latLng, latLng));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(placeId),
      const DeepCollectionEquality().hash(latLng));

  @JsonKey(ignore: true)
  @override
  _$$PlaceDetailEventCopyWith<_$PlaceDetailEvent> get copyWith =>
      __$$PlaceDetailEventCopyWithImpl<_$PlaceDetailEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String keyword, String sessionToken) autocomplete,
    required TResult Function(String? placeId, String? latLng) detail,
    required TResult Function(
            LatLng? origin, LatLng? destination, ModeType? mode, bool listen)
        estimate,
  }) {
    return detail(placeId, latLng);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String keyword, String sessionToken)? autocomplete,
    TResult Function(String? placeId, String? latLng)? detail,
    TResult Function(
            LatLng? origin, LatLng? destination, ModeType? mode, bool listen)?
        estimate,
  }) {
    return detail?.call(placeId, latLng);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String keyword, String sessionToken)? autocomplete,
    TResult Function(String? placeId, String? latLng)? detail,
    TResult Function(
            LatLng? origin, LatLng? destination, ModeType? mode, bool listen)?
        estimate,
    required TResult orElse(),
  }) {
    if (detail != null) {
      return detail(placeId, latLng);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlacesInitialEvent value) initial,
    required TResult Function(PlacesAutoCompleteEvent value) autocomplete,
    required TResult Function(PlaceDetailEvent value) detail,
    required TResult Function(PlacesEstimateEvent value) estimate,
  }) {
    return detail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PlacesInitialEvent value)? initial,
    TResult Function(PlacesAutoCompleteEvent value)? autocomplete,
    TResult Function(PlaceDetailEvent value)? detail,
    TResult Function(PlacesEstimateEvent value)? estimate,
  }) {
    return detail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlacesInitialEvent value)? initial,
    TResult Function(PlacesAutoCompleteEvent value)? autocomplete,
    TResult Function(PlaceDetailEvent value)? detail,
    TResult Function(PlacesEstimateEvent value)? estimate,
    required TResult orElse(),
  }) {
    if (detail != null) {
      return detail(this);
    }
    return orElse();
  }
}

abstract class PlaceDetailEvent implements PlacesEvent {
  const factory PlaceDetailEvent(
      {final String? placeId, final String? latLng}) = _$PlaceDetailEvent;

  String? get placeId;
  String? get latLng;
  @JsonKey(ignore: true)
  _$$PlaceDetailEventCopyWith<_$PlaceDetailEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PlacesEstimateEventCopyWith<$Res> {
  factory _$$PlacesEstimateEventCopyWith(_$PlacesEstimateEvent value,
          $Res Function(_$PlacesEstimateEvent) then) =
      __$$PlacesEstimateEventCopyWithImpl<$Res>;
  $Res call({LatLng? origin, LatLng? destination, ModeType? mode, bool listen});
}

/// @nodoc
class __$$PlacesEstimateEventCopyWithImpl<$Res>
    extends _$PlacesEventCopyWithImpl<$Res>
    implements _$$PlacesEstimateEventCopyWith<$Res> {
  __$$PlacesEstimateEventCopyWithImpl(
      _$PlacesEstimateEvent _value, $Res Function(_$PlacesEstimateEvent) _then)
      : super(_value, (v) => _then(v as _$PlacesEstimateEvent));

  @override
  _$PlacesEstimateEvent get _value => super._value as _$PlacesEstimateEvent;

  @override
  $Res call({
    Object? origin = freezed,
    Object? destination = freezed,
    Object? mode = freezed,
    Object? listen = freezed,
  }) {
    return _then(_$PlacesEstimateEvent(
      origin: origin == freezed
          ? _value.origin
          : origin // ignore: cast_nullable_to_non_nullable
              as LatLng?,
      destination: destination == freezed
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as LatLng?,
      mode: mode == freezed
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as ModeType?,
      listen: listen == freezed
          ? _value.listen
          : listen // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$PlacesEstimateEvent implements PlacesEstimateEvent {
  const _$PlacesEstimateEvent(
      {this.origin, this.destination, this.mode, this.listen = false});

  @override
  final LatLng? origin;
  @override
  final LatLng? destination;
  @override
  final ModeType? mode;
  @override
  @JsonKey()
  final bool listen;

  @override
  String toString() {
    return 'PlacesEvent.estimate(origin: $origin, destination: $destination, mode: $mode, listen: $listen)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlacesEstimateEvent &&
            const DeepCollectionEquality().equals(other.origin, origin) &&
            const DeepCollectionEquality()
                .equals(other.destination, destination) &&
            const DeepCollectionEquality().equals(other.mode, mode) &&
            const DeepCollectionEquality().equals(other.listen, listen));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(origin),
      const DeepCollectionEquality().hash(destination),
      const DeepCollectionEquality().hash(mode),
      const DeepCollectionEquality().hash(listen));

  @JsonKey(ignore: true)
  @override
  _$$PlacesEstimateEventCopyWith<_$PlacesEstimateEvent> get copyWith =>
      __$$PlacesEstimateEventCopyWithImpl<_$PlacesEstimateEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String keyword, String sessionToken) autocomplete,
    required TResult Function(String? placeId, String? latLng) detail,
    required TResult Function(
            LatLng? origin, LatLng? destination, ModeType? mode, bool listen)
        estimate,
  }) {
    return estimate(origin, destination, mode, listen);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String keyword, String sessionToken)? autocomplete,
    TResult Function(String? placeId, String? latLng)? detail,
    TResult Function(
            LatLng? origin, LatLng? destination, ModeType? mode, bool listen)?
        estimate,
  }) {
    return estimate?.call(origin, destination, mode, listen);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String keyword, String sessionToken)? autocomplete,
    TResult Function(String? placeId, String? latLng)? detail,
    TResult Function(
            LatLng? origin, LatLng? destination, ModeType? mode, bool listen)?
        estimate,
    required TResult orElse(),
  }) {
    if (estimate != null) {
      return estimate(origin, destination, mode, listen);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlacesInitialEvent value) initial,
    required TResult Function(PlacesAutoCompleteEvent value) autocomplete,
    required TResult Function(PlaceDetailEvent value) detail,
    required TResult Function(PlacesEstimateEvent value) estimate,
  }) {
    return estimate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PlacesInitialEvent value)? initial,
    TResult Function(PlacesAutoCompleteEvent value)? autocomplete,
    TResult Function(PlaceDetailEvent value)? detail,
    TResult Function(PlacesEstimateEvent value)? estimate,
  }) {
    return estimate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlacesInitialEvent value)? initial,
    TResult Function(PlacesAutoCompleteEvent value)? autocomplete,
    TResult Function(PlaceDetailEvent value)? detail,
    TResult Function(PlacesEstimateEvent value)? estimate,
    required TResult orElse(),
  }) {
    if (estimate != null) {
      return estimate(this);
    }
    return orElse();
  }
}

abstract class PlacesEstimateEvent implements PlacesEvent {
  const factory PlacesEstimateEvent(
      {final LatLng? origin,
      final LatLng? destination,
      final ModeType? mode,
      final bool listen}) = _$PlacesEstimateEvent;

  LatLng? get origin;
  LatLng? get destination;
  ModeType? get mode;
  bool get listen;
  @JsonKey(ignore: true)
  _$$PlacesEstimateEventCopyWith<_$PlacesEstimateEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PlacesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) failure,
    required TResult Function(List<PlaceEntity> places) placesLoaded,
    required TResult Function(PlaceDetailEntity detail) detailLoaded,
    required TResult Function(List<double> origin, List<double> destination,
            ModeType? mode, bool listen, EstimateEntity result)
        estimate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failure,
    TResult Function(List<PlaceEntity> places)? placesLoaded,
    TResult Function(PlaceDetailEntity detail)? detailLoaded,
    TResult Function(List<double> origin, List<double> destination,
            ModeType? mode, bool listen, EstimateEntity result)?
        estimate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failure,
    TResult Function(List<PlaceEntity> places)? placesLoaded,
    TResult Function(PlaceDetailEntity detail)? detailLoaded,
    TResult Function(List<double> origin, List<double> destination,
            ModeType? mode, bool listen, EstimateEntity result)?
        estimate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlacesInitial value) initial,
    required TResult Function(PlacesLoading value) loading,
    required TResult Function(PlacesFailure value) failure,
    required TResult Function(PlacesLoaded value) placesLoaded,
    required TResult Function(PlaceDetailLoaded value) detailLoaded,
    required TResult Function(PlacesEstimate value) estimate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PlacesInitial value)? initial,
    TResult Function(PlacesLoading value)? loading,
    TResult Function(PlacesFailure value)? failure,
    TResult Function(PlacesLoaded value)? placesLoaded,
    TResult Function(PlaceDetailLoaded value)? detailLoaded,
    TResult Function(PlacesEstimate value)? estimate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlacesInitial value)? initial,
    TResult Function(PlacesLoading value)? loading,
    TResult Function(PlacesFailure value)? failure,
    TResult Function(PlacesLoaded value)? placesLoaded,
    TResult Function(PlaceDetailLoaded value)? detailLoaded,
    TResult Function(PlacesEstimate value)? estimate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlacesStateCopyWith<$Res> {
  factory $PlacesStateCopyWith(
          PlacesState value, $Res Function(PlacesState) then) =
      _$PlacesStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PlacesStateCopyWithImpl<$Res> implements $PlacesStateCopyWith<$Res> {
  _$PlacesStateCopyWithImpl(this._value, this._then);

  final PlacesState _value;
  // ignore: unused_field
  final $Res Function(PlacesState) _then;
}

/// @nodoc
abstract class _$$PlacesInitialCopyWith<$Res> {
  factory _$$PlacesInitialCopyWith(
          _$PlacesInitial value, $Res Function(_$PlacesInitial) then) =
      __$$PlacesInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PlacesInitialCopyWithImpl<$Res>
    extends _$PlacesStateCopyWithImpl<$Res>
    implements _$$PlacesInitialCopyWith<$Res> {
  __$$PlacesInitialCopyWithImpl(
      _$PlacesInitial _value, $Res Function(_$PlacesInitial) _then)
      : super(_value, (v) => _then(v as _$PlacesInitial));

  @override
  _$PlacesInitial get _value => super._value as _$PlacesInitial;
}

/// @nodoc

class _$PlacesInitial implements PlacesInitial {
  const _$PlacesInitial();

  @override
  String toString() {
    return 'PlacesState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PlacesInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) failure,
    required TResult Function(List<PlaceEntity> places) placesLoaded,
    required TResult Function(PlaceDetailEntity detail) detailLoaded,
    required TResult Function(List<double> origin, List<double> destination,
            ModeType? mode, bool listen, EstimateEntity result)
        estimate,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failure,
    TResult Function(List<PlaceEntity> places)? placesLoaded,
    TResult Function(PlaceDetailEntity detail)? detailLoaded,
    TResult Function(List<double> origin, List<double> destination,
            ModeType? mode, bool listen, EstimateEntity result)?
        estimate,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failure,
    TResult Function(List<PlaceEntity> places)? placesLoaded,
    TResult Function(PlaceDetailEntity detail)? detailLoaded,
    TResult Function(List<double> origin, List<double> destination,
            ModeType? mode, bool listen, EstimateEntity result)?
        estimate,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlacesInitial value) initial,
    required TResult Function(PlacesLoading value) loading,
    required TResult Function(PlacesFailure value) failure,
    required TResult Function(PlacesLoaded value) placesLoaded,
    required TResult Function(PlaceDetailLoaded value) detailLoaded,
    required TResult Function(PlacesEstimate value) estimate,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PlacesInitial value)? initial,
    TResult Function(PlacesLoading value)? loading,
    TResult Function(PlacesFailure value)? failure,
    TResult Function(PlacesLoaded value)? placesLoaded,
    TResult Function(PlaceDetailLoaded value)? detailLoaded,
    TResult Function(PlacesEstimate value)? estimate,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlacesInitial value)? initial,
    TResult Function(PlacesLoading value)? loading,
    TResult Function(PlacesFailure value)? failure,
    TResult Function(PlacesLoaded value)? placesLoaded,
    TResult Function(PlaceDetailLoaded value)? detailLoaded,
    TResult Function(PlacesEstimate value)? estimate,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class PlacesInitial implements PlacesState {
  const factory PlacesInitial() = _$PlacesInitial;
}

/// @nodoc
abstract class _$$PlacesLoadingCopyWith<$Res> {
  factory _$$PlacesLoadingCopyWith(
          _$PlacesLoading value, $Res Function(_$PlacesLoading) then) =
      __$$PlacesLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PlacesLoadingCopyWithImpl<$Res>
    extends _$PlacesStateCopyWithImpl<$Res>
    implements _$$PlacesLoadingCopyWith<$Res> {
  __$$PlacesLoadingCopyWithImpl(
      _$PlacesLoading _value, $Res Function(_$PlacesLoading) _then)
      : super(_value, (v) => _then(v as _$PlacesLoading));

  @override
  _$PlacesLoading get _value => super._value as _$PlacesLoading;
}

/// @nodoc

class _$PlacesLoading implements PlacesLoading {
  const _$PlacesLoading();

  @override
  String toString() {
    return 'PlacesState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PlacesLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) failure,
    required TResult Function(List<PlaceEntity> places) placesLoaded,
    required TResult Function(PlaceDetailEntity detail) detailLoaded,
    required TResult Function(List<double> origin, List<double> destination,
            ModeType? mode, bool listen, EstimateEntity result)
        estimate,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failure,
    TResult Function(List<PlaceEntity> places)? placesLoaded,
    TResult Function(PlaceDetailEntity detail)? detailLoaded,
    TResult Function(List<double> origin, List<double> destination,
            ModeType? mode, bool listen, EstimateEntity result)?
        estimate,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failure,
    TResult Function(List<PlaceEntity> places)? placesLoaded,
    TResult Function(PlaceDetailEntity detail)? detailLoaded,
    TResult Function(List<double> origin, List<double> destination,
            ModeType? mode, bool listen, EstimateEntity result)?
        estimate,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlacesInitial value) initial,
    required TResult Function(PlacesLoading value) loading,
    required TResult Function(PlacesFailure value) failure,
    required TResult Function(PlacesLoaded value) placesLoaded,
    required TResult Function(PlaceDetailLoaded value) detailLoaded,
    required TResult Function(PlacesEstimate value) estimate,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PlacesInitial value)? initial,
    TResult Function(PlacesLoading value)? loading,
    TResult Function(PlacesFailure value)? failure,
    TResult Function(PlacesLoaded value)? placesLoaded,
    TResult Function(PlaceDetailLoaded value)? detailLoaded,
    TResult Function(PlacesEstimate value)? estimate,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlacesInitial value)? initial,
    TResult Function(PlacesLoading value)? loading,
    TResult Function(PlacesFailure value)? failure,
    TResult Function(PlacesLoaded value)? placesLoaded,
    TResult Function(PlaceDetailLoaded value)? detailLoaded,
    TResult Function(PlacesEstimate value)? estimate,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class PlacesLoading implements PlacesState {
  const factory PlacesLoading() = _$PlacesLoading;
}

/// @nodoc
abstract class _$$PlacesFailureCopyWith<$Res> {
  factory _$$PlacesFailureCopyWith(
          _$PlacesFailure value, $Res Function(_$PlacesFailure) then) =
      __$$PlacesFailureCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$$PlacesFailureCopyWithImpl<$Res>
    extends _$PlacesStateCopyWithImpl<$Res>
    implements _$$PlacesFailureCopyWith<$Res> {
  __$$PlacesFailureCopyWithImpl(
      _$PlacesFailure _value, $Res Function(_$PlacesFailure) _then)
      : super(_value, (v) => _then(v as _$PlacesFailure));

  @override
  _$PlacesFailure get _value => super._value as _$PlacesFailure;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$PlacesFailure(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PlacesFailure implements PlacesFailure {
  const _$PlacesFailure(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'PlacesState.failure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlacesFailure &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$PlacesFailureCopyWith<_$PlacesFailure> get copyWith =>
      __$$PlacesFailureCopyWithImpl<_$PlacesFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) failure,
    required TResult Function(List<PlaceEntity> places) placesLoaded,
    required TResult Function(PlaceDetailEntity detail) detailLoaded,
    required TResult Function(List<double> origin, List<double> destination,
            ModeType? mode, bool listen, EstimateEntity result)
        estimate,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failure,
    TResult Function(List<PlaceEntity> places)? placesLoaded,
    TResult Function(PlaceDetailEntity detail)? detailLoaded,
    TResult Function(List<double> origin, List<double> destination,
            ModeType? mode, bool listen, EstimateEntity result)?
        estimate,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failure,
    TResult Function(List<PlaceEntity> places)? placesLoaded,
    TResult Function(PlaceDetailEntity detail)? detailLoaded,
    TResult Function(List<double> origin, List<double> destination,
            ModeType? mode, bool listen, EstimateEntity result)?
        estimate,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlacesInitial value) initial,
    required TResult Function(PlacesLoading value) loading,
    required TResult Function(PlacesFailure value) failure,
    required TResult Function(PlacesLoaded value) placesLoaded,
    required TResult Function(PlaceDetailLoaded value) detailLoaded,
    required TResult Function(PlacesEstimate value) estimate,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PlacesInitial value)? initial,
    TResult Function(PlacesLoading value)? loading,
    TResult Function(PlacesFailure value)? failure,
    TResult Function(PlacesLoaded value)? placesLoaded,
    TResult Function(PlaceDetailLoaded value)? detailLoaded,
    TResult Function(PlacesEstimate value)? estimate,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlacesInitial value)? initial,
    TResult Function(PlacesLoading value)? loading,
    TResult Function(PlacesFailure value)? failure,
    TResult Function(PlacesLoaded value)? placesLoaded,
    TResult Function(PlaceDetailLoaded value)? detailLoaded,
    TResult Function(PlacesEstimate value)? estimate,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class PlacesFailure implements PlacesState {
  const factory PlacesFailure(final String message) = _$PlacesFailure;

  String get message;
  @JsonKey(ignore: true)
  _$$PlacesFailureCopyWith<_$PlacesFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PlacesLoadedCopyWith<$Res> {
  factory _$$PlacesLoadedCopyWith(
          _$PlacesLoaded value, $Res Function(_$PlacesLoaded) then) =
      __$$PlacesLoadedCopyWithImpl<$Res>;
  $Res call({List<PlaceEntity> places});
}

/// @nodoc
class __$$PlacesLoadedCopyWithImpl<$Res> extends _$PlacesStateCopyWithImpl<$Res>
    implements _$$PlacesLoadedCopyWith<$Res> {
  __$$PlacesLoadedCopyWithImpl(
      _$PlacesLoaded _value, $Res Function(_$PlacesLoaded) _then)
      : super(_value, (v) => _then(v as _$PlacesLoaded));

  @override
  _$PlacesLoaded get _value => super._value as _$PlacesLoaded;

  @override
  $Res call({
    Object? places = freezed,
  }) {
    return _then(_$PlacesLoaded(
      places == freezed
          ? _value._places
          : places // ignore: cast_nullable_to_non_nullable
              as List<PlaceEntity>,
    ));
  }
}

/// @nodoc

class _$PlacesLoaded implements PlacesLoaded {
  const _$PlacesLoaded(final List<PlaceEntity> places) : _places = places;

  final List<PlaceEntity> _places;
  @override
  List<PlaceEntity> get places {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_places);
  }

  @override
  String toString() {
    return 'PlacesState.placesLoaded(places: $places)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlacesLoaded &&
            const DeepCollectionEquality().equals(other._places, _places));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_places));

  @JsonKey(ignore: true)
  @override
  _$$PlacesLoadedCopyWith<_$PlacesLoaded> get copyWith =>
      __$$PlacesLoadedCopyWithImpl<_$PlacesLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) failure,
    required TResult Function(List<PlaceEntity> places) placesLoaded,
    required TResult Function(PlaceDetailEntity detail) detailLoaded,
    required TResult Function(List<double> origin, List<double> destination,
            ModeType? mode, bool listen, EstimateEntity result)
        estimate,
  }) {
    return placesLoaded(places);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failure,
    TResult Function(List<PlaceEntity> places)? placesLoaded,
    TResult Function(PlaceDetailEntity detail)? detailLoaded,
    TResult Function(List<double> origin, List<double> destination,
            ModeType? mode, bool listen, EstimateEntity result)?
        estimate,
  }) {
    return placesLoaded?.call(places);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failure,
    TResult Function(List<PlaceEntity> places)? placesLoaded,
    TResult Function(PlaceDetailEntity detail)? detailLoaded,
    TResult Function(List<double> origin, List<double> destination,
            ModeType? mode, bool listen, EstimateEntity result)?
        estimate,
    required TResult orElse(),
  }) {
    if (placesLoaded != null) {
      return placesLoaded(places);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlacesInitial value) initial,
    required TResult Function(PlacesLoading value) loading,
    required TResult Function(PlacesFailure value) failure,
    required TResult Function(PlacesLoaded value) placesLoaded,
    required TResult Function(PlaceDetailLoaded value) detailLoaded,
    required TResult Function(PlacesEstimate value) estimate,
  }) {
    return placesLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PlacesInitial value)? initial,
    TResult Function(PlacesLoading value)? loading,
    TResult Function(PlacesFailure value)? failure,
    TResult Function(PlacesLoaded value)? placesLoaded,
    TResult Function(PlaceDetailLoaded value)? detailLoaded,
    TResult Function(PlacesEstimate value)? estimate,
  }) {
    return placesLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlacesInitial value)? initial,
    TResult Function(PlacesLoading value)? loading,
    TResult Function(PlacesFailure value)? failure,
    TResult Function(PlacesLoaded value)? placesLoaded,
    TResult Function(PlaceDetailLoaded value)? detailLoaded,
    TResult Function(PlacesEstimate value)? estimate,
    required TResult orElse(),
  }) {
    if (placesLoaded != null) {
      return placesLoaded(this);
    }
    return orElse();
  }
}

abstract class PlacesLoaded implements PlacesState {
  const factory PlacesLoaded(final List<PlaceEntity> places) = _$PlacesLoaded;

  List<PlaceEntity> get places;
  @JsonKey(ignore: true)
  _$$PlacesLoadedCopyWith<_$PlacesLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PlaceDetailLoadedCopyWith<$Res> {
  factory _$$PlaceDetailLoadedCopyWith(
          _$PlaceDetailLoaded value, $Res Function(_$PlaceDetailLoaded) then) =
      __$$PlaceDetailLoadedCopyWithImpl<$Res>;
  $Res call({PlaceDetailEntity detail});
}

/// @nodoc
class __$$PlaceDetailLoadedCopyWithImpl<$Res>
    extends _$PlacesStateCopyWithImpl<$Res>
    implements _$$PlaceDetailLoadedCopyWith<$Res> {
  __$$PlaceDetailLoadedCopyWithImpl(
      _$PlaceDetailLoaded _value, $Res Function(_$PlaceDetailLoaded) _then)
      : super(_value, (v) => _then(v as _$PlaceDetailLoaded));

  @override
  _$PlaceDetailLoaded get _value => super._value as _$PlaceDetailLoaded;

  @override
  $Res call({
    Object? detail = freezed,
  }) {
    return _then(_$PlaceDetailLoaded(
      detail == freezed
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as PlaceDetailEntity,
    ));
  }
}

/// @nodoc

class _$PlaceDetailLoaded implements PlaceDetailLoaded {
  const _$PlaceDetailLoaded(this.detail);

  @override
  final PlaceDetailEntity detail;

  @override
  String toString() {
    return 'PlacesState.detailLoaded(detail: $detail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaceDetailLoaded &&
            const DeepCollectionEquality().equals(other.detail, detail));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(detail));

  @JsonKey(ignore: true)
  @override
  _$$PlaceDetailLoadedCopyWith<_$PlaceDetailLoaded> get copyWith =>
      __$$PlaceDetailLoadedCopyWithImpl<_$PlaceDetailLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) failure,
    required TResult Function(List<PlaceEntity> places) placesLoaded,
    required TResult Function(PlaceDetailEntity detail) detailLoaded,
    required TResult Function(List<double> origin, List<double> destination,
            ModeType? mode, bool listen, EstimateEntity result)
        estimate,
  }) {
    return detailLoaded(detail);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failure,
    TResult Function(List<PlaceEntity> places)? placesLoaded,
    TResult Function(PlaceDetailEntity detail)? detailLoaded,
    TResult Function(List<double> origin, List<double> destination,
            ModeType? mode, bool listen, EstimateEntity result)?
        estimate,
  }) {
    return detailLoaded?.call(detail);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failure,
    TResult Function(List<PlaceEntity> places)? placesLoaded,
    TResult Function(PlaceDetailEntity detail)? detailLoaded,
    TResult Function(List<double> origin, List<double> destination,
            ModeType? mode, bool listen, EstimateEntity result)?
        estimate,
    required TResult orElse(),
  }) {
    if (detailLoaded != null) {
      return detailLoaded(detail);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlacesInitial value) initial,
    required TResult Function(PlacesLoading value) loading,
    required TResult Function(PlacesFailure value) failure,
    required TResult Function(PlacesLoaded value) placesLoaded,
    required TResult Function(PlaceDetailLoaded value) detailLoaded,
    required TResult Function(PlacesEstimate value) estimate,
  }) {
    return detailLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PlacesInitial value)? initial,
    TResult Function(PlacesLoading value)? loading,
    TResult Function(PlacesFailure value)? failure,
    TResult Function(PlacesLoaded value)? placesLoaded,
    TResult Function(PlaceDetailLoaded value)? detailLoaded,
    TResult Function(PlacesEstimate value)? estimate,
  }) {
    return detailLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlacesInitial value)? initial,
    TResult Function(PlacesLoading value)? loading,
    TResult Function(PlacesFailure value)? failure,
    TResult Function(PlacesLoaded value)? placesLoaded,
    TResult Function(PlaceDetailLoaded value)? detailLoaded,
    TResult Function(PlacesEstimate value)? estimate,
    required TResult orElse(),
  }) {
    if (detailLoaded != null) {
      return detailLoaded(this);
    }
    return orElse();
  }
}

abstract class PlaceDetailLoaded implements PlacesState {
  const factory PlaceDetailLoaded(final PlaceDetailEntity detail) =
      _$PlaceDetailLoaded;

  PlaceDetailEntity get detail;
  @JsonKey(ignore: true)
  _$$PlaceDetailLoadedCopyWith<_$PlaceDetailLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PlacesEstimateCopyWith<$Res> {
  factory _$$PlacesEstimateCopyWith(
          _$PlacesEstimate value, $Res Function(_$PlacesEstimate) then) =
      __$$PlacesEstimateCopyWithImpl<$Res>;
  $Res call(
      {List<double> origin,
      List<double> destination,
      ModeType? mode,
      bool listen,
      EstimateEntity result});
}

/// @nodoc
class __$$PlacesEstimateCopyWithImpl<$Res>
    extends _$PlacesStateCopyWithImpl<$Res>
    implements _$$PlacesEstimateCopyWith<$Res> {
  __$$PlacesEstimateCopyWithImpl(
      _$PlacesEstimate _value, $Res Function(_$PlacesEstimate) _then)
      : super(_value, (v) => _then(v as _$PlacesEstimate));

  @override
  _$PlacesEstimate get _value => super._value as _$PlacesEstimate;

  @override
  $Res call({
    Object? origin = freezed,
    Object? destination = freezed,
    Object? mode = freezed,
    Object? listen = freezed,
    Object? result = freezed,
  }) {
    return _then(_$PlacesEstimate(
      origin: origin == freezed
          ? _value._origin
          : origin // ignore: cast_nullable_to_non_nullable
              as List<double>,
      destination: destination == freezed
          ? _value._destination
          : destination // ignore: cast_nullable_to_non_nullable
              as List<double>,
      mode: mode == freezed
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as ModeType?,
      listen: listen == freezed
          ? _value.listen
          : listen // ignore: cast_nullable_to_non_nullable
              as bool,
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as EstimateEntity,
    ));
  }
}

/// @nodoc

class _$PlacesEstimate implements PlacesEstimate {
  const _$PlacesEstimate(
      {final List<double> origin = const [],
      final List<double> destination = const [],
      this.mode,
      this.listen = false,
      this.result = const EstimateEntity(distance: '', duration: '', fare: '')})
      : _origin = origin,
        _destination = destination;

  final List<double> _origin;
  @override
  @JsonKey()
  List<double> get origin {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_origin);
  }

  final List<double> _destination;
  @override
  @JsonKey()
  List<double> get destination {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_destination);
  }

  @override
  final ModeType? mode;
  @override
  @JsonKey()
  final bool listen;
  @override
  @JsonKey()
  final EstimateEntity result;

  @override
  String toString() {
    return 'PlacesState.estimate(origin: $origin, destination: $destination, mode: $mode, listen: $listen, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlacesEstimate &&
            const DeepCollectionEquality().equals(other._origin, _origin) &&
            const DeepCollectionEquality()
                .equals(other._destination, _destination) &&
            const DeepCollectionEquality().equals(other.mode, mode) &&
            const DeepCollectionEquality().equals(other.listen, listen) &&
            const DeepCollectionEquality().equals(other.result, result));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_origin),
      const DeepCollectionEquality().hash(_destination),
      const DeepCollectionEquality().hash(mode),
      const DeepCollectionEquality().hash(listen),
      const DeepCollectionEquality().hash(result));

  @JsonKey(ignore: true)
  @override
  _$$PlacesEstimateCopyWith<_$PlacesEstimate> get copyWith =>
      __$$PlacesEstimateCopyWithImpl<_$PlacesEstimate>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) failure,
    required TResult Function(List<PlaceEntity> places) placesLoaded,
    required TResult Function(PlaceDetailEntity detail) detailLoaded,
    required TResult Function(List<double> origin, List<double> destination,
            ModeType? mode, bool listen, EstimateEntity result)
        estimate,
  }) {
    return estimate(origin, destination, mode, listen, result);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failure,
    TResult Function(List<PlaceEntity> places)? placesLoaded,
    TResult Function(PlaceDetailEntity detail)? detailLoaded,
    TResult Function(List<double> origin, List<double> destination,
            ModeType? mode, bool listen, EstimateEntity result)?
        estimate,
  }) {
    return estimate?.call(origin, destination, mode, listen, result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failure,
    TResult Function(List<PlaceEntity> places)? placesLoaded,
    TResult Function(PlaceDetailEntity detail)? detailLoaded,
    TResult Function(List<double> origin, List<double> destination,
            ModeType? mode, bool listen, EstimateEntity result)?
        estimate,
    required TResult orElse(),
  }) {
    if (estimate != null) {
      return estimate(origin, destination, mode, listen, result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlacesInitial value) initial,
    required TResult Function(PlacesLoading value) loading,
    required TResult Function(PlacesFailure value) failure,
    required TResult Function(PlacesLoaded value) placesLoaded,
    required TResult Function(PlaceDetailLoaded value) detailLoaded,
    required TResult Function(PlacesEstimate value) estimate,
  }) {
    return estimate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PlacesInitial value)? initial,
    TResult Function(PlacesLoading value)? loading,
    TResult Function(PlacesFailure value)? failure,
    TResult Function(PlacesLoaded value)? placesLoaded,
    TResult Function(PlaceDetailLoaded value)? detailLoaded,
    TResult Function(PlacesEstimate value)? estimate,
  }) {
    return estimate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlacesInitial value)? initial,
    TResult Function(PlacesLoading value)? loading,
    TResult Function(PlacesFailure value)? failure,
    TResult Function(PlacesLoaded value)? placesLoaded,
    TResult Function(PlaceDetailLoaded value)? detailLoaded,
    TResult Function(PlacesEstimate value)? estimate,
    required TResult orElse(),
  }) {
    if (estimate != null) {
      return estimate(this);
    }
    return orElse();
  }
}

abstract class PlacesEstimate implements PlacesState {
  const factory PlacesEstimate(
      {final List<double> origin,
      final List<double> destination,
      final ModeType? mode,
      final bool listen,
      final EstimateEntity result}) = _$PlacesEstimate;

  List<double> get origin;
  List<double> get destination;
  ModeType? get mode;
  bool get listen;
  EstimateEntity get result;
  @JsonKey(ignore: true)
  _$$PlacesEstimateCopyWith<_$PlacesEstimate> get copyWith =>
      throw _privateConstructorUsedError;
}
