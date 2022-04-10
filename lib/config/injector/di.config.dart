// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i9;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i23;

import '../../cubits/account_financial_breakdown/account_financial_breakdown_cubit.dart'
    as _i34;
import '../../cubits/authentication/authentication_cubit.dart' as _i35;
import '../../cubits/authentication/login/authentication_login_cubit.dart'
    as _i59;
import '../../cubits/card_form/add/card_add_cubit.dart' as _i40;
import '../../cubits/card_form/card_form_cubit.dart' as _i4;
import '../../cubits/chart_tabs/chart_tabs_cubit.dart' as _i5;
import '../../cubits/company_listing/details/company_listing_details_cubit.dart'
    as _i42;
import '../../cubits/company_listing/history/company_listing_history_cubit.dart'
    as _i43;
import '../../cubits/financial_history/financial_history_cubit.dart' as _i48;
import '../../cubits/goals/goals_cubit.dart' as _i49;
import '../../cubits/my_finances/my_finances_cubit.dart' as _i50;
import '../../cubits/my_portfolio/my_portfolio_cubit.dart' as _i51;
import '../../cubits/offers/details/offer_details_cubit.dart' as _i11;
import '../../cubits/offers/list/offer_list_cubit.dart' as _i52;
import '../../cubits/portfolio_watchlist/portfolio_watchlist_cubit.dart'
    as _i21;
import '../../cubits/retirement_plan/retirement_plan_cubit.dart' as _i54;
import '../../cubits/transaction_history/transaction_history_cubit.dart'
    as _i55;
import '../../cubits/user/notifications/user_notifications_cubit.dart' as _i57;
import '../../cubits/user/user_cubit.dart' as _i56;
import '../../cubits/wallet/wallet_cubit.dart' as _i58;
import '../../data/data_sources/authentication/authentication_data_source.dart'
    as _i36;
import '../../data/data_sources/authentication/dummy_authentication_data_source.dart'
    as _i37;
import '../../data/data_sources/finances/dummy_finances_data_source.dart'
    as _i45;
import '../../data/data_sources/finances/finances_data_source.dart' as _i44;
import '../../data/data_sources/offers/dummy_offers_data_source.dart' as _i13;
import '../../data/data_sources/offers/offers_data_source.dart' as _i12;
import '../../data/data_sources/portfolio/dummy_portfolio_data_source.dart'
    as _i18;
import '../../data/data_sources/portfolio/portfolio_data_source.dart' as _i17;
import '../../data/data_sources/user/dummy_user_data_source.dart' as _i27;
import '../../data/data_sources/user/user_data_source.dart' as _i26;
import '../../data/data_sources/wallet/dummy_wallet_data_source.dart' as _i31;
import '../../data/data_sources/wallet/wallet_data_source.dart' as _i30;
import '../../data/repositories/authentication/authentication_repository.dart'
    as _i38;
import '../../data/repositories/authentication/data_authentication_repository.dart'
    as _i39;
import '../../data/repositories/finances/data_finances_repository.dart' as _i47;
import '../../data/repositories/finances/finances_repository.dart' as _i46;
import '../../data/repositories/offers/data_offers_repository.dart' as _i15;
import '../../data/repositories/offers/offers_repository.dart' as _i14;
import '../../data/repositories/portfolio/data_portfolio_repository.dart'
    as _i20;
import '../../data/repositories/portfolio/portfolio_repository.dart' as _i19;
import '../../data/repositories/user/data_user_repository.dart' as _i29;
import '../../data/repositories/user/user_repository.dart' as _i28;
import '../../data/repositories/wallet/data_wallet_repository.dart' as _i33;
import '../../data/repositories/wallet/wallet_repository.dart' as _i32;
import '../../data/storages/common_storage.dart' as _i41;
import '../../data/storages/secure_storage.dart' as _i22;
import '../../data/storages/storage.dart' as _i24;
import '../../data/storages/token_storage.dart' as _i25;
import '../../mocks/mock_factory.dart' as _i10;
import '../../ui/pages/onboarding/cubit/onboarding_cubit.dart' as _i53;
import '../../utils/currency_formatter_util.dart' as _i6;
import '../../utils/date_formatter_util.dart' as _i7;
import '../../utils/dummy_util.dart' as _i8;
import '../../utils/percentage_formatter_util.dart' as _i16;
import '../router/app_router.dart' as _i3;
import 'module/common_module.dart'
    as _i60; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final commonModule = _$CommonModule();
  gh.singleton<_i3.AppRouter>(_i3.AppRouter());
  gh.factory<_i4.CardFormCubit>(() => _i4.CardFormCubit());
  gh.factory<_i5.ChartTabsCubit>(() => _i5.ChartTabsCubit());
  gh.singleton<_i6.CurrencyFormatterUtil>(_i6.CurrencyFormatterUtil());
  gh.singleton<_i7.DateFormatterUtil>(_i7.DateFormatterUtil());
  gh.factory<_i8.DummyUtil>(() => _i8.DummyUtil());
  gh.factory<_i9.FlutterSecureStorage>(() => commonModule.flutterSecureStorage);
  gh.singleton<_i10.MockFactory>(
      _i10.MockFactory(dummyUtil: get<_i8.DummyUtil>()));
  gh.factory<_i11.OfferDetailsCubit>(() => _i11.OfferDetailsCubit());
  gh.factory<_i12.OffersDataSource>(
      () => _i13.DummyOffersDataSource(mockFactory: get<_i10.MockFactory>()));
  gh.factory<_i14.OffersRepository>(() => _i15.DataOffersRepository(
      offersDataSource: get<_i12.OffersDataSource>()));
  gh.singleton<_i16.PercentageFormatterUtil>(_i16.PercentageFormatterUtil());
  gh.factory<_i17.PortfolioDataSource>(() =>
      _i18.DummyPortfolioDataSource(mockFactory: get<_i10.MockFactory>()));
  gh.factory<_i19.PortfolioRepository>(() => _i20.DataPortfolioRepository(
      portfolioDataSource: get<_i17.PortfolioDataSource>()));
  gh.factory<_i21.PortfolioWatchlistCubit>(() => _i21.PortfolioWatchlistCubit(
      portfolioRepository: get<_i19.PortfolioRepository>()));
  gh.factory<_i22.SecureStorage>(() => _i22.SecureStorage(
      flutterSecureStorage: get<_i9.FlutterSecureStorage>()));
  await gh.factoryAsync<_i23.SharedPreferences>(() => commonModule.prefs,
      preResolve: true);
  gh.factory<_i24.Storage>(
      () => _i24.Storage(sharedPreferences: get<_i23.SharedPreferences>()));
  gh.factory<_i25.TokenStorage>(
      () => _i25.TokenStorage(secureStorage: get<_i22.SecureStorage>()));
  gh.factory<_i26.UserDataSource>(
      () => _i27.DummyUserDataSource(mockFactory: get<_i10.MockFactory>()));
  gh.factory<_i28.UserRepository>(() =>
      _i29.DataUserRepository(userDataSource: get<_i26.UserDataSource>()));
  gh.factory<_i30.WalletDataSource>(
      () => _i31.DummyWalletDataSource(mockFactory: get<_i10.MockFactory>()));
  gh.factory<_i32.WalletRepository>(() => _i33.DataWalletRepository(
      walletDataSource: get<_i30.WalletDataSource>()));
  gh.factory<_i34.AccountFinancialBreakdownCubit>(() =>
      _i34.AccountFinancialBreakdownCubit(
          walletRepository: get<_i32.WalletRepository>()));
  gh.factory<_i35.AuthenticationCubit>(
      () => _i35.AuthenticationCubit(tokenStorage: get<_i25.TokenStorage>()));
  gh.factory<_i36.AuthenticationDataSource>(() =>
      _i37.DummyAuthenticationDataSource(dummyUtil: get<_i8.DummyUtil>()));
  gh.factory<_i38.AuthenticationRepository>(() =>
      _i39.DataAuthenticationRepository(get<_i36.AuthenticationDataSource>()));
  gh.factory<_i40.CardAddCubit>(
      () => _i40.CardAddCubit(walletRepository: get<_i32.WalletRepository>()));
  gh.factory<_i41.CommonStorage>(
      () => _i41.CommonStorage(storage: get<_i24.Storage>()));
  gh.factory<_i42.CompanyListingDetailsCubit>(() =>
      _i42.CompanyListingDetailsCubit(
          portfolioRepository: get<_i19.PortfolioRepository>()));
  gh.factory<_i43.CompanyListingHistoryCubit>(() =>
      _i43.CompanyListingHistoryCubit(
          portfolioRepository: get<_i19.PortfolioRepository>()));
  gh.factory<_i44.FinancesDataSource>(
      () => _i45.DummyFinancesDataSource(mockFactory: get<_i10.MockFactory>()));
  gh.factory<_i46.FinancesRepository>(() => _i47.DataFinancesRepository(
      financesDataSource: get<_i44.FinancesDataSource>()));
  gh.factory<_i48.FinancialHistoryCubit>(() => _i48.FinancialHistoryCubit(
      financesRepository: get<_i46.FinancesRepository>()));
  gh.factory<_i49.GoalsCubit>(
      () => _i49.GoalsCubit(walletRepository: get<_i32.WalletRepository>()));
  gh.factory<_i50.MyFinancesCubit>(() =>
      _i50.MyFinancesCubit(financesRepository: get<_i46.FinancesRepository>()));
  gh.factory<_i51.MyPortfolioCubit>(() => _i51.MyPortfolioCubit(
      portfolioRepository: get<_i19.PortfolioRepository>()));
  gh.factory<_i52.OfferListCubit>(() =>
      _i52.OfferListCubit(offersRepository: get<_i14.OffersRepository>()));
  gh.factory<_i53.OnboardingCubit>(
      () => _i53.OnboardingCubit(get<_i41.CommonStorage>()));
  gh.factory<_i54.RetirementPlanCubit>(() => _i54.RetirementPlanCubit(
      financesRepository: get<_i46.FinancesRepository>()));
  gh.factory<_i55.TransactionHistoryCubit>(() => _i55.TransactionHistoryCubit(
      walletRepository: get<_i32.WalletRepository>()));
  gh.factory<_i56.UserCubit>(
      () => _i56.UserCubit(userRepository: get<_i28.UserRepository>()));
  gh.factory<_i57.UserNotificationsCubit>(() =>
      _i57.UserNotificationsCubit(userRepository: get<_i28.UserRepository>()));
  gh.factory<_i58.WalletCubit>(
      () => _i58.WalletCubit(walletRepository: get<_i32.WalletRepository>()));
  gh.factory<_i59.AuthenticationLoginCubit>(() => _i59.AuthenticationLoginCubit(
      authenticationRepository: get<_i38.AuthenticationRepository>()));
  return get;
}

class _$CommonModule extends _i60.CommonModule {}
