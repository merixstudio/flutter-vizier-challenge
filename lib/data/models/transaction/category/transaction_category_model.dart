import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_category_model.g.dart';
part 'transaction_category_model.freezed.dart';

@freezed
class TransactionCategoryModel with _$TransactionCategoryModel {
  const factory TransactionCategoryModel({
    required String colorHex,
    required String name,
    required double value,
    required double percent,
  }) = _TransactionCategoryModel;

  const TransactionCategoryModel._();

  factory TransactionCategoryModel.fromJson(Map<String, dynamic> json) => _$TransactionCategoryModelFromJson(json);
}
