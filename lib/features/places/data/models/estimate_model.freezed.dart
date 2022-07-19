// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'estimate_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Estimate _$EstimateFromJson(Map<String, dynamic> json) {
  return _Estimate.fromJson(json);
}

/// @nodoc
mixin _$Estimate {
  EstimateCommon get distance => throw _privateConstructorUsedError;
  EstimateCommon get duration => throw _privateConstructorUsedError;
  EstimateCommon? get fare => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EstimateCopyWith<Estimate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EstimateCopyWith<$Res> {
  factory $EstimateCopyWith(Estimate value, $Res Function(Estimate) then) =
      _$EstimateCopyWithImpl<$Res>;
  $Res call(
      {EstimateCommon distance, EstimateCommon duration, EstimateCommon? fare});

  $EstimateCommonCopyWith<$Res> get distance;
  $EstimateCommonCopyWith<$Res> get duration;
  $EstimateCommonCopyWith<$Res>? get fare;
}

/// @nodoc
class _$EstimateCopyWithImpl<$Res> implements $EstimateCopyWith<$Res> {
  _$EstimateCopyWithImpl(this._value, this._then);

  final Estimate _value;
  // ignore: unused_field
  final $Res Function(Estimate) _then;

  @override
  $Res call({
    Object? distance = freezed,
    Object? duration = freezed,
    Object? fare = freezed,
  }) {
    return _then(_value.copyWith(
      distance: distance == freezed
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as EstimateCommon,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as EstimateCommon,
      fare: fare == freezed
          ? _value.fare
          : fare // ignore: cast_nullable_to_non_nullable
              as EstimateCommon?,
    ));
  }

  @override
  $EstimateCommonCopyWith<$Res> get distance {
    return $EstimateCommonCopyWith<$Res>(_value.distance, (value) {
      return _then(_value.copyWith(distance: value));
    });
  }

  @override
  $EstimateCommonCopyWith<$Res> get duration {
    return $EstimateCommonCopyWith<$Res>(_value.duration, (value) {
      return _then(_value.copyWith(duration: value));
    });
  }

  @override
  $EstimateCommonCopyWith<$Res>? get fare {
    if (_value.fare == null) {
      return null;
    }

    return $EstimateCommonCopyWith<$Res>(_value.fare!, (value) {
      return _then(_value.copyWith(fare: value));
    });
  }
}

/// @nodoc
abstract class _$$_EstimateCopyWith<$Res> implements $EstimateCopyWith<$Res> {
  factory _$$_EstimateCopyWith(
          _$_Estimate value, $Res Function(_$_Estimate) then) =
      __$$_EstimateCopyWithImpl<$Res>;
  @override
  $Res call(
      {EstimateCommon distance, EstimateCommon duration, EstimateCommon? fare});

  @override
  $EstimateCommonCopyWith<$Res> get distance;
  @override
  $EstimateCommonCopyWith<$Res> get duration;
  @override
  $EstimateCommonCopyWith<$Res>? get fare;
}

/// @nodoc
class __$$_EstimateCopyWithImpl<$Res> extends _$EstimateCopyWithImpl<$Res>
    implements _$$_EstimateCopyWith<$Res> {
  __$$_EstimateCopyWithImpl(
      _$_Estimate _value, $Res Function(_$_Estimate) _then)
      : super(_value, (v) => _then(v as _$_Estimate));

  @override
  _$_Estimate get _value => super._value as _$_Estimate;

  @override
  $Res call({
    Object? distance = freezed,
    Object? duration = freezed,
    Object? fare = freezed,
  }) {
    return _then(_$_Estimate(
      distance: distance == freezed
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as EstimateCommon,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as EstimateCommon,
      fare: fare == freezed
          ? _value.fare
          : fare // ignore: cast_nullable_to_non_nullable
              as EstimateCommon?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Estimate implements _Estimate {
  const _$_Estimate(
      {required this.distance, required this.duration, this.fare});

  factory _$_Estimate.fromJson(Map<String, dynamic> json) =>
      _$$_EstimateFromJson(json);

  @override
  final EstimateCommon distance;
  @override
  final EstimateCommon duration;
  @override
  final EstimateCommon? fare;

  @override
  String toString() {
    return 'Estimate(distance: $distance, duration: $duration, fare: $fare)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Estimate &&
            const DeepCollectionEquality().equals(other.distance, distance) &&
            const DeepCollectionEquality().equals(other.duration, duration) &&
            const DeepCollectionEquality().equals(other.fare, fare));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(distance),
      const DeepCollectionEquality().hash(duration),
      const DeepCollectionEquality().hash(fare));

  @JsonKey(ignore: true)
  @override
  _$$_EstimateCopyWith<_$_Estimate> get copyWith =>
      __$$_EstimateCopyWithImpl<_$_Estimate>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EstimateToJson(
      this,
    );
  }
}

abstract class _Estimate implements Estimate {
  const factory _Estimate(
      {required final EstimateCommon distance,
      required final EstimateCommon duration,
      final EstimateCommon? fare}) = _$_Estimate;

  factory _Estimate.fromJson(Map<String, dynamic> json) = _$_Estimate.fromJson;

  @override
  EstimateCommon get distance;
  @override
  EstimateCommon get duration;
  @override
  EstimateCommon? get fare;
  @override
  @JsonKey(ignore: true)
  _$$_EstimateCopyWith<_$_Estimate> get copyWith =>
      throw _privateConstructorUsedError;
}

EstimateCommon _$EstimateCommonFromJson(Map<String, dynamic> json) {
  return _EstimateCommon.fromJson(json);
}

/// @nodoc
mixin _$EstimateCommon {
  String get text => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EstimateCommonCopyWith<EstimateCommon> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EstimateCommonCopyWith<$Res> {
  factory $EstimateCommonCopyWith(
          EstimateCommon value, $Res Function(EstimateCommon) then) =
      _$EstimateCommonCopyWithImpl<$Res>;
  $Res call({String text});
}

/// @nodoc
class _$EstimateCommonCopyWithImpl<$Res>
    implements $EstimateCommonCopyWith<$Res> {
  _$EstimateCommonCopyWithImpl(this._value, this._then);

  final EstimateCommon _value;
  // ignore: unused_field
  final $Res Function(EstimateCommon) _then;

  @override
  $Res call({
    Object? text = freezed,
  }) {
    return _then(_value.copyWith(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_EstimateCommonCopyWith<$Res>
    implements $EstimateCommonCopyWith<$Res> {
  factory _$$_EstimateCommonCopyWith(
          _$_EstimateCommon value, $Res Function(_$_EstimateCommon) then) =
      __$$_EstimateCommonCopyWithImpl<$Res>;
  @override
  $Res call({String text});
}

/// @nodoc
class __$$_EstimateCommonCopyWithImpl<$Res>
    extends _$EstimateCommonCopyWithImpl<$Res>
    implements _$$_EstimateCommonCopyWith<$Res> {
  __$$_EstimateCommonCopyWithImpl(
      _$_EstimateCommon _value, $Res Function(_$_EstimateCommon) _then)
      : super(_value, (v) => _then(v as _$_EstimateCommon));

  @override
  _$_EstimateCommon get _value => super._value as _$_EstimateCommon;

  @override
  $Res call({
    Object? text = freezed,
  }) {
    return _then(_$_EstimateCommon(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EstimateCommon implements _EstimateCommon {
  const _$_EstimateCommon({required this.text});

  factory _$_EstimateCommon.fromJson(Map<String, dynamic> json) =>
      _$$_EstimateCommonFromJson(json);

  @override
  final String text;

  @override
  String toString() {
    return 'EstimateCommon(text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EstimateCommon &&
            const DeepCollectionEquality().equals(other.text, text));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(text));

  @JsonKey(ignore: true)
  @override
  _$$_EstimateCommonCopyWith<_$_EstimateCommon> get copyWith =>
      __$$_EstimateCommonCopyWithImpl<_$_EstimateCommon>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EstimateCommonToJson(
      this,
    );
  }
}

abstract class _EstimateCommon implements EstimateCommon {
  const factory _EstimateCommon({required final String text}) =
      _$_EstimateCommon;

  factory _EstimateCommon.fromJson(Map<String, dynamic> json) =
      _$_EstimateCommon.fromJson;

  @override
  String get text;
  @override
  @JsonKey(ignore: true)
  _$$_EstimateCommonCopyWith<_$_EstimateCommon> get copyWith =>
      throw _privateConstructorUsedError;
}
