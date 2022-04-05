import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_model.g.dart';
part 'transaction_model.freezed.dart';

@freezed
class TransactionModel with _$TransactionModel {
  const factory TransactionModel({
    required String categoryName,
    required DateTime date,
    required String name,
    required double value,
    String? backgroundColorHex,
    String? image,
  }) = _TransactionModel;

  const TransactionModel._();

  factory TransactionModel.fromJson(Map<String, dynamic> json) => _$TransactionModelFromJson(json);
}
