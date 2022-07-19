// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product_detail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PlaceDetail _$PlaceDetailFromJson(Map<String, dynamic> json) {
  return _PlaceDetail.fromJson(json);
}

/// @nodoc
mixin _$PlaceDetail {
  @JsonKey(name: 'formatted_address')
  String get formattedAddress => throw _privateConstructorUsedError;
  Geometry get geometry => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlaceDetailCopyWith<PlaceDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceDetailCopyWith<$Res> {
  factory $PlaceDetailCopyWith(
          PlaceDetail value, $Res Function(PlaceDetail) then) =
      _$PlaceDetailCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'formatted_address') String formattedAddress,
      Geometry geometry});

  $GeometryCopyWith<$Res> get geometry;
}

/// @nodoc
class _$PlaceDetailCopyWithImpl<$Res> implements $PlaceDetailCopyWith<$Res> {
  _$PlaceDetailCopyWithImpl(this._value, this._then);

  final PlaceDetail _value;
  // ignore: unused_field
  final $Res Function(PlaceDetail) _then;

  @override
  $Res call({
    Object? formattedAddress = freezed,
    Object? geometry = freezed,
  }) {
    return _then(_value.copyWith(
      formattedAddress: formattedAddress == freezed
          ? _value.formattedAddress
          : formattedAddress // ignore: cast_nullable_to_non_nullable
              as String,
      geometry: geometry == freezed
          ? _value.geometry
          : geometry // ignore: cast_nullable_to_non_nullable
              as Geometry,
    ));
  }

  @override
  $GeometryCopyWith<$Res> get geometry {
    return $GeometryCopyWith<$Res>(_value.geometry, (value) {
      return _then(_value.copyWith(geometry: value));
    });
  }
}

/// @nodoc
abstract class _$$_PlaceDetailCopyWith<$Res>
    implements $PlaceDetailCopyWith<$Res> {
  factory _$$_PlaceDetailCopyWith(
          _$_PlaceDetail value, $Res Function(_$_PlaceDetail) then) =
      __$$_PlaceDetailCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'formatted_address') String formattedAddress,
      Geometry geometry});

  @override
  $GeometryCopyWith<$Res> get geometry;
}

/// @nodoc
class __$$_PlaceDetailCopyWithImpl<$Res> extends _$PlaceDetailCopyWithImpl<$Res>
    implements _$$_PlaceDetailCopyWith<$Res> {
  __$$_PlaceDetailCopyWithImpl(
      _$_PlaceDetail _value, $Res Function(_$_PlaceDetail) _then)
      : super(_value, (v) => _then(v as _$_PlaceDetail));

  @override
  _$_PlaceDetail get _value => super._value as _$_PlaceDetail;

  @override
  $Res call({
    Object? formattedAddress = freezed,
    Object? geometry = freezed,
  }) {
    return _then(_$_PlaceDetail(
      formattedAddress: formattedAddress == freezed
          ? _value.formattedAddress
          : formattedAddress // ignore: cast_nullable_to_non_nullable
              as String,
      geometry: geometry == freezed
          ? _value.geometry
          : geometry // ignore: cast_nullable_to_non_nullable
              as Geometry,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PlaceDetail implements _PlaceDetail {
  const _$_PlaceDetail(
      {@JsonKey(name: 'formatted_address') required this.formattedAddress,
      required this.geometry});

  factory _$_PlaceDetail.fromJson(Map<String, dynamic> json) =>
      _$$_PlaceDetailFromJson(json);

  @override
  @JsonKey(name: 'formatted_address')
  final String formattedAddress;
  @override
  final Geometry geometry;

  @override
  String toString() {
    return 'PlaceDetail(formattedAddress: $formattedAddress, geometry: $geometry)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlaceDetail &&
            const DeepCollectionEquality()
                .equals(other.formattedAddress, formattedAddress) &&
            const DeepCollectionEquality().equals(other.geometry, geometry));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(formattedAddress),
      const DeepCollectionEquality().hash(geometry));

  @JsonKey(ignore: true)
  @override
  _$$_PlaceDetailCopyWith<_$_PlaceDetail> get copyWith =>
      __$$_PlaceDetailCopyWithImpl<_$_PlaceDetail>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PlaceDetailToJson(
      this,
    );
  }
}

abstract class _PlaceDetail implements PlaceDetail {
  const factory _PlaceDetail(
      {@JsonKey(name: 'formatted_address')
          required final String formattedAddress,
      required final Geometry geometry}) = _$_PlaceDetail;

  factory _PlaceDetail.fromJson(Map<String, dynamic> json) =
      _$_PlaceDetail.fromJson;

  @override
  @JsonKey(name: 'formatted_address')
  String get formattedAddress;
  @override
  Geometry get geometry;
  @override
  @JsonKey(ignore: true)
  _$$_PlaceDetailCopyWith<_$_PlaceDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

Geometry _$GeometryFromJson(Map<String, dynamic> json) {
  return _Geometry.fromJson(json);
}

/// @nodoc
mixin _$Geometry {
  Location get location => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GeometryCopyWith<Geometry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeometryCopyWith<$Res> {
  factory $GeometryCopyWith(Geometry value, $Res Function(Geometry) then) =
      _$GeometryCopyWithImpl<$Res>;
  $Res call({Location location});

  $LocationCopyWith<$Res> get location;
}

/// @nodoc
class _$GeometryCopyWithImpl<$Res> implements $GeometryCopyWith<$Res> {
  _$GeometryCopyWithImpl(this._value, this._then);

  final Geometry _value;
  // ignore: unused_field
  final $Res Function(Geometry) _then;

  @override
  $Res call({
    Object? location = freezed,
  }) {
    return _then(_value.copyWith(
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location,
    ));
  }

  @override
  $LocationCopyWith<$Res> get location {
    return $LocationCopyWith<$Res>(_value.location, (value) {
      return _then(_value.copyWith(location: value));
    });
  }
}

/// @nodoc
abstract class _$$_GeometryCopyWith<$Res> implements $GeometryCopyWith<$Res> {
  factory _$$_GeometryCopyWith(
          _$_Geometry value, $Res Function(_$_Geometry) then) =
      __$$_GeometryCopyWithImpl<$Res>;
  @override
  $Res call({Location location});

  @override
  $LocationCopyWith<$Res> get location;
}

/// @nodoc
class __$$_GeometryCopyWithImpl<$Res> extends _$GeometryCopyWithImpl<$Res>
    implements _$$_GeometryCopyWith<$Res> {
  __$$_GeometryCopyWithImpl(
      _$_Geometry _value, $Res Function(_$_Geometry) _then)
      : super(_value, (v) => _then(v as _$_Geometry));

  @override
  _$_Geometry get _value => super._value as _$_Geometry;

  @override
  $Res call({
    Object? location = freezed,
  }) {
    return _then(_$_Geometry(
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Geometry implements _Geometry {
  const _$_Geometry({required this.location});

  factory _$_Geometry.fromJson(Map<String, dynamic> json) =>
      _$$_GeometryFromJson(json);

  @override
  final Location location;

  @override
  String toString() {
    return 'Geometry(location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Geometry &&
            const DeepCollectionEquality().equals(other.location, location));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(location));

  @JsonKey(ignore: true)
  @override
  _$$_GeometryCopyWith<_$_Geometry> get copyWith =>
      __$$_GeometryCopyWithImpl<_$_Geometry>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GeometryToJson(
      this,
    );
  }
}

abstract class _Geometry implements Geometry {
  const factory _Geometry({required final Location location}) = _$_Geometry;

  factory _Geometry.fromJson(Map<String, dynamic> json) = _$_Geometry.fromJson;

  @override
  Location get location;
  @override
  @JsonKey(ignore: true)
  _$$_GeometryCopyWith<_$_Geometry> get copyWith =>
      throw _privateConstructorUsedError;
}

Location _$LocationFromJson(Map<String, dynamic> json) {
  return _Location.fromJson(json);
}

/// @nodoc
mixin _$Location {
  double get lat => throw _privateConstructorUsedError;
  double get lng => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationCopyWith<Location> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationCopyWith<$Res> {
  factory $LocationCopyWith(Location value, $Res Function(Location) then) =
      _$LocationCopyWithImpl<$Res>;
  $Res call({double lat, double lng});
}

/// @nodoc
class _$LocationCopyWithImpl<$Res> implements $LocationCopyWith<$Res> {
  _$LocationCopyWithImpl(this._value, this._then);

  final Location _value;
  // ignore: unused_field
  final $Res Function(Location) _then;

  @override
  $Res call({
    Object? lat = freezed,
    Object? lng = freezed,
  }) {
    return _then(_value.copyWith(
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lng: lng == freezed
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$$_LocationCopyWith<$Res> implements $LocationCopyWith<$Res> {
  factory _$$_LocationCopyWith(
          _$_Location value, $Res Function(_$_Location) then) =
      __$$_LocationCopyWithImpl<$Res>;
  @override
  $Res call({double lat, double lng});
}

/// @nodoc
class __$$_LocationCopyWithImpl<$Res> extends _$LocationCopyWithImpl<$Res>
    implements _$$_LocationCopyWith<$Res> {
  __$$_LocationCopyWithImpl(
      _$_Location _value, $Res Function(_$_Location) _then)
      : super(_value, (v) => _then(v as _$_Location));

  @override
  _$_Location get _value => super._value as _$_Location;

  @override
  $Res call({
    Object? lat = freezed,
    Object? lng = freezed,
  }) {
    return _then(_$_Location(
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lng: lng == freezed
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Location implements _Location {
  const _$_Location({required this.lat, required this.lng});

  factory _$_Location.fromJson(Map<String, dynamic> json) =>
      _$$_LocationFromJson(json);

  @override
  final double lat;
  @override
  final double lng;

  @override
  String toString() {
    return 'Location(lat: $lat, lng: $lng)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Location &&
            const DeepCollectionEquality().equals(other.lat, lat) &&
            const DeepCollectionEquality().equals(other.lng, lng));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(lat),
      const DeepCollectionEquality().hash(lng));

  @JsonKey(ignore: true)
  @override
  _$$_LocationCopyWith<_$_Location> get copyWith =>
      __$$_LocationCopyWithImpl<_$_Location>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LocationToJson(
      this,
    );
  }
}

abstract class _Location implements Location {
  const factory _Location(
      {required final double lat, required final double lng}) = _$_Location;

  factory _Location.fromJson(Map<String, dynamic> json) = _$_Location.fromJson;

  @override
  double get lat;
  @override
  double get lng;
  @override
  @JsonKey(ignore: true)
  _$$_LocationCopyWith<_$_Location> get copyWith =>
      throw _privateConstructorUsedError;
}
