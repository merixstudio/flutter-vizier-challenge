part of 'wallet_cubit.dart';

@freezed
class WalletState with _$WalletState {
  const WalletState._();

  const factory WalletState.initial() = _Initial;
  const factory WalletState.loading() = _Loading;
  const factory WalletState.loaded({
    required WalletModel wallet,
  }) = _Loaded;
  const factory WalletState.failure({
    required AppError error,
  }) = _Failure;

  bool get isLoading => maybeMap(
        loading: (state) => true,
        orElse: () => false,
      );

  WalletModel? get wallet => mapOrNull(
        loaded: (state) => state.wallet,
      );

  double? get assetsChange => mapOrNull(
        loaded: (state) => state.wallet.accounts.map((e) => e.change).reduce(
              (value, element) => value + element,
            ),
      );

  double? get assetsPercentageChange => mapOrNull(
        loaded: (state) => state.assetsChange != null ? (state.assetsChange! / state.wallet.balance * 100) : 0.0,
      );

  int? get goalProgress => mapOrNull(
        loaded: (state) => (state.wallet.balance / state.wallet.goal * 100).ceil(),
      );
}
