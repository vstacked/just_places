import 'package:freezed_annotation/freezed_annotation.dart';

part 'estimate_model.freezed.dart';
part 'estimate_model.g.dart';

@freezed
class Estimate with _$Estimate {
  const factory Estimate({
    required EstimateCommon distance,
    required EstimateCommon duration,
    EstimateCommon? fare,
  }) = _Estimate;

  factory Estimate.fromJson(Map<String, dynamic> json) =>
      _$EstimateFromJson(json);
}

@freezed
class EstimateCommon with _$EstimateCommon {
  const factory EstimateCommon({required String text}) = _EstimateCommon;

  factory EstimateCommon.fromJson(Map<String, dynamic> json) =>
      _$EstimateCommonFromJson(json);
}
