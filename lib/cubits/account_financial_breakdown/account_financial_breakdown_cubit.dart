import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:vizier/data/errors/app_error.dart';
import 'package:vizier/data/factory/chart_factory.dart';
import 'package:vizier/data/models/account/account_model.dart';
import 'package:vizier/data/models/account/breakdown/account_breakdown_model.dart';
import 'package:vizier/data/models/transaction/category/transaction_category_model.dart';
import 'package:vizier/data/repositories/wallet/wallet_repository.dart';
import 'package:vizier/data/responses/response_status.dart';
import 'package:vizier/ui/models/chart_multi_pie_section.dart';

part 'account_financial_breakdown_state.dart';
part 'account_financial_breakdown_cubit.freezed.dart';

@injectable
class AccountFinancialBreakdownCubit extends Cubit<AccountFinancialBreakdownState> {
  final WalletRepository walletRepository;

  final Map<int, AccountBreakdownModel> _cachedData = {};

  AccountFinancialBreakdownCubit({
    required this.walletRepository,
  }) : super(const AccountFinancialBreakdownState.initial());

  Future<void> fetchData({
    required int daysBack,
    required AccountModel accountModel,
  }) async {
    if (_cachedData.containsKey(daysBack)) {
      final AccountBreakdownModel cachedBreakdown = _cachedData[daysBack]!;
      emit(
        AccountFinancialBreakdownState.loaded(
          transactionCategories: cachedBreakdown.transactionCategories,
          from: cachedBreakdown.from,
          to: cachedBreakdown.to,
          sections: ChartFactory.fromAccountBreakdownModel(cachedBreakdown),
        ),
      );
      return;
    }
    emit(
      const AccountFinancialBreakdownState.loading(),
    );

    final ResponseStatus<AccountBreakdownModel> response = await walletRepository.accountBreakdown(
      daysBack: daysBack,
      account: accountModel,
    );
    response.result(
      onSuccess: (data) {
        _cachedData[daysBack] = data;
        emit(
          AccountFinancialBreakdownState.loaded(
            transactionCategories: data.transactionCategories,
            from: data.from,
            to: data.to,
            sections: ChartFactory.fromAccountBreakdownModel(data),
          ),
        );
      },
      onError: (error) => emit(
        AccountFinancialBreakdownState.failure(
          appError: error,
        ),
      ),
    );
  }
}
