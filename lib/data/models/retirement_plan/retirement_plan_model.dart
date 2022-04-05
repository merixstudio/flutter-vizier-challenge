import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vizier/data/models/retirement_plan/data/retirement_plan_data_model.dart';

part 'retirement_plan_model.g.dart';
part 'retirement_plan_model.freezed.dart';

@freezed
class RetirementPlanModel with _$RetirementPlanModel {
  const factory RetirementPlanModel({
    required List<RetirementPlanDataModel> data,
    required DateTime from,
    required DateTime to,
  }) = _RetirementPlanModel;

  const RetirementPlanModel._();

  factory RetirementPlanModel.fromJson(Map<String, dynamic> json) => _$RetirementPlanModelFromJson(json);
}
