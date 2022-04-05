import 'package:freezed_annotation/freezed_annotation.dart';

part 'goal_model.g.dart';
part 'goal_model.freezed.dart';

@freezed
class GoalModel with _$GoalModel {
  const factory GoalModel({
    required String name,
    required double goal,
    required double change,
    required int reached,
  }) = _GoalModel;

  const GoalModel._();

  factory GoalModel.fromJson(Map<String, dynamic> json) => _$GoalModelFromJson(json);
}
