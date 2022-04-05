import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vizier/data/models/account/account_model.dart';

part 'wallet_model.g.dart';
part 'wallet_model.freezed.dart';

@freezed
class WalletModel with _$WalletModel {
  const factory WalletModel({
    required double balance,
    required double goal,
    required List<AccountModel> accounts,
    required DateTime date,
  }) = _WalletModel;

  const WalletModel._();

  factory WalletModel.fromJson(Map<String, dynamic> json) => _$WalletModelFromJson(json);
}
