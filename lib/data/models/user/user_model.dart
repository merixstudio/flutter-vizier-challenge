import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.g.dart';
part 'user_model.freezed.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    required String avatar,
    required String email,
    required String firstName,
    required String lastName,
  }) = _UserModel;

  const UserModel._();

  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);

  String get fullName => '$firstName $lastName';
}
