import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vizier/data/models/account/account_model.dart';
import 'package:vizier/data/models/transaction/category/transaction_category_model.dart';

part 'account_breakdown_model.g.dart';
part 'account_breakdown_model.freezed.dart';

@freezed
class AccountBreakdownModel with _$AccountBreakdownModel {
  const factory AccountBreakdownModel({
    required DateTime from,
    required DateTime to,
    required List<TransactionCategoryModel> transactionCategories,
    required AccountModel account,
  }) = _AccountBreakdownModel;

  const AccountBreakdownModel._();

  factory AccountBreakdownModel.fromJson(Map<String, dynamic> json) => _$AccountBreakdownModelFromJson(json);
}
