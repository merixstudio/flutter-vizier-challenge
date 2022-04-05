import 'package:freezed_annotation/freezed_annotation.dart';

part 'retirement_plan_data_model.g.dart';
part 'retirement_plan_data_model.freezed.dart';

@freezed
class RetirementPlanDataModel with _$RetirementPlanDataModel {
  const factory RetirementPlanDataModel({
    required DateTime date,
    required double value,
  }) = _RetirementPlanDataModel;

  const RetirementPlanDataModel._();

  factory RetirementPlanDataModel.fromJson(Map<String, dynamic> json) => _$RetirementPlanDataModelFromJson(json);
}
