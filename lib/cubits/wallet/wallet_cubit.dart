import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:vizier/data/errors/app_error.dart';
import 'package:vizier/data/models/wallet/wallet_model.dart';
import 'package:vizier/data/repositories/wallet/wallet_repository.dart';
import 'package:vizier/data/responses/response_status.dart';

part 'wallet_state.dart';
part 'wallet_cubit.freezed.dart';

@injectable
class WalletCubit extends Cubit<WalletState> {
  final WalletRepository walletRepository;

  WalletCubit({
    required this.walletRepository,
  }) : super(const WalletState.initial());

  Future<void> fetchData() async {
    emit(
      const WalletState.loading(),
    );

    final ResponseStatus<WalletModel> response = await walletRepository.wallet();
    response.result(
      onSuccess: (data) => emit(
        WalletState.loaded(
          wallet: data,
        ),
      ),
      onError: (error) => emit(
        WalletState.failure(
          error: error,
        ),
      ),
    );
  }

  void logout() {
    emit(
      const WalletState.initial(),
    );
  }
}
