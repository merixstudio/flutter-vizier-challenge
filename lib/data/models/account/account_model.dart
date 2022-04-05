import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_model.g.dart';
part 'account_model.freezed.dart';

@freezed
class AccountModel with _$AccountModel {
  const factory AccountModel({
    required String logo,
    required String name,
    required String number,
    required double balance,
    required double change,
    required String expiry,
  }) = _AccountModel;

  const AccountModel._();

  factory AccountModel.fromJson(Map<String, dynamic> json) => _$AccountModelFromJson(json);
}
