import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:vizier/data/errors/app_error.dart';
import 'package:vizier/data/models/account/account_model.dart';
import 'package:vizier/data/repositories/wallet/wallet_repository.dart';
import 'package:vizier/data/responses/response_status.dart';

part 'card_add_state.dart';
part 'card_add_cubit.freezed.dart';

@injectable
class CardAddCubit extends Cubit<CardAddState> {
  final WalletRepository walletRepository;

  CardAddCubit({
    required this.walletRepository,
  }) : super(const CardAddState.initial());

  Future<void> add(AccountModel account) async {
    emit(
      const CardAddState.loading(),
    );

    final ResponseStatus<bool> response = await walletRepository.addWalletAccount(
      account: account,
    );
    response.result(
      onSuccess: (_) => emit(
        const CardAddState.success(),
      ),
      onError: (error) => emit(
        CardAddState.failure(
          error: error,
        ),
      ),
    );
  }
}
