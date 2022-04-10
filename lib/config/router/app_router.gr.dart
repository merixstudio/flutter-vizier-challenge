// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    BottomNavigationPageRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
          routeData: routeData, child: const BottomNavigationPage());
    },
    OnboardingPageRoute.name: (routeData) {
      return CustomPage<dynamic>(
          routeData: routeData,
          child: const OnboardingPage(),
          opaque: true,
          barrierDismissible: false);
    },
    AuthenticationLoginPageRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
          routeData: routeData, child: const AuthenticationLoginPage());
    },
    ProfilePageRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
          routeData: routeData,
          child: const ProfilePage(),
          fullscreenDialog: true);
    },
    CompanyListingPageRoute.name: (routeData) {
      final args = routeData.argsAs<CompanyListingPageRouteArgs>();
      return AdaptivePage<dynamic>(
          routeData: routeData,
          child: CompanyListingPage(
              companyAsset: args.companyAsset, key: args.key),
          fullscreenDialog: true);
    },
    OfferDetailsPageRoute.name: (routeData) {
      final args = routeData.argsAs<OfferDetailsPageRouteArgs>();
      return CustomPage<dynamic>(
          routeData: routeData,
          child: OfferDetailsPage(offer: args.offer, key: args.key),
          fullscreenDialog: true,
          transitionsBuilder: TransitionsBuilders.fadeIn,
          opaque: true,
          barrierDismissible: false);
    },
    CreditCardFormPageRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
          routeData: routeData,
          child: const CreditCardFormPage(),
          fullscreenDialog: true);
    },
    CreditCardOverviewPageRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
          routeData: routeData,
          child: const CreditCardOverviewPage(),
          fullscreenDialog: true);
    },
    FinancialBreakdownPageRoute.name: (routeData) {
      final args = routeData.argsAs<FinancialBreakdownPageRouteArgs>();
      return CustomPage<dynamic>(
          routeData: routeData,
          child:
              FinancialBreakdownPage(arguments: args.arguments, key: args.key),
          fullscreenDialog: true,
          opaque: true,
          barrierDismissible: false);
    },
    HomePageRoute.name: (routeData) {
      return CustomPage<dynamic>(
          routeData: routeData,
          child: const HomePage(),
          opaque: true,
          barrierDismissible: false);
    },
    FinancesPageRoute.name: (routeData) {
      return CustomPage<dynamic>(
          routeData: routeData,
          child: const FinancesPage(),
          opaque: true,
          barrierDismissible: false);
    },
    PortfolioPageRoute.name: (routeData) {
      return CustomPage<dynamic>(
          routeData: routeData,
          child: const PortfolioPage(),
          opaque: true,
          barrierDismissible: false);
    },
    OffersPageRoute.name: (routeData) {
      return CustomPage<dynamic>(
          routeData: routeData,
          child: const OffersPage(),
          opaque: true,
          barrierDismissible: false);
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(BottomNavigationPageRoute.name,
            path: 'bottom_navigation',
            children: [
              RouteConfig(HomePageRoute.name,
                  path: 'home-page', parent: BottomNavigationPageRoute.name),
              RouteConfig(FinancesPageRoute.name,
                  path: 'finances-page',
                  parent: BottomNavigationPageRoute.name),
              RouteConfig(PortfolioPageRoute.name,
                  path: 'portfolio-page',
                  parent: BottomNavigationPageRoute.name),
              RouteConfig(OffersPageRoute.name,
                  path: 'offers-page', parent: BottomNavigationPageRoute.name)
            ]),
        RouteConfig(OnboardingPageRoute.name, path: 'onboarding'),
        RouteConfig(AuthenticationLoginPageRoute.name, path: 'login'),
        RouteConfig(ProfilePageRoute.name, path: 'profile-page'),
        RouteConfig(CompanyListingPageRoute.name, path: 'company_listing_page'),
        RouteConfig(OfferDetailsPageRoute.name, path: 'offers-details-page'),
        RouteConfig(CreditCardFormPageRoute.name, path: 'card-form-page'),
        RouteConfig(CreditCardOverviewPageRoute.name,
            path: 'card-overview-page'),
        RouteConfig(FinancialBreakdownPageRoute.name,
            path: 'financial-breakdown-page')
      ];
}

/// generated route for
/// [BottomNavigationPage]
class BottomNavigationPageRoute extends PageRouteInfo<void> {
  const BottomNavigationPageRoute({List<PageRouteInfo>? children})
      : super(BottomNavigationPageRoute.name,
            path: 'bottom_navigation', initialChildren: children);

  static const String name = 'BottomNavigationPageRoute';
}

/// generated route for
/// [OnboardingPage]
class OnboardingPageRoute extends PageRouteInfo<void> {
  const OnboardingPageRoute()
      : super(OnboardingPageRoute.name, path: 'onboarding');

  static const String name = 'OnboardingPageRoute';
}

/// generated route for
/// [AuthenticationLoginPage]
class AuthenticationLoginPageRoute extends PageRouteInfo<void> {
  const AuthenticationLoginPageRoute()
      : super(AuthenticationLoginPageRoute.name, path: 'login');

  static const String name = 'AuthenticationLoginPageRoute';
}

/// generated route for
/// [ProfilePage]
class ProfilePageRoute extends PageRouteInfo<void> {
  const ProfilePageRoute() : super(ProfilePageRoute.name, path: 'profile-page');

  static const String name = 'ProfilePageRoute';
}

/// generated route for
/// [CompanyListingPage]
class CompanyListingPageRoute
    extends PageRouteInfo<CompanyListingPageRouteArgs> {
  CompanyListingPageRoute({required CompanyAssetModel companyAsset, Key? key})
      : super(CompanyListingPageRoute.name,
            path: 'company_listing_page',
            args: CompanyListingPageRouteArgs(
                companyAsset: companyAsset, key: key));

  static const String name = 'CompanyListingPageRoute';
}

class CompanyListingPageRouteArgs {
  const CompanyListingPageRouteArgs({required this.companyAsset, this.key});

  final CompanyAssetModel companyAsset;

  final Key? key;

  @override
  String toString() {
    return 'CompanyListingPageRouteArgs{companyAsset: $companyAsset, key: $key}';
  }
}

/// generated route for
/// [OfferDetailsPage]
class OfferDetailsPageRoute extends PageRouteInfo<OfferDetailsPageRouteArgs> {
  OfferDetailsPageRoute({required OfferModel offer, Key? key})
      : super(OfferDetailsPageRoute.name,
            path: 'offers-details-page',
            args: OfferDetailsPageRouteArgs(offer: offer, key: key));

  static const String name = 'OfferDetailsPageRoute';
}

class OfferDetailsPageRouteArgs {
  const OfferDetailsPageRouteArgs({required this.offer, this.key});

  final OfferModel offer;

  final Key? key;

  @override
  String toString() {
    return 'OfferDetailsPageRouteArgs{offer: $offer, key: $key}';
  }
}

/// generated route for
/// [CreditCardFormPage]
class CreditCardFormPageRoute extends PageRouteInfo<void> {
  const CreditCardFormPageRoute()
      : super(CreditCardFormPageRoute.name, path: 'card-form-page');

  static const String name = 'CreditCardFormPageRoute';
}

/// generated route for
/// [CreditCardOverviewPage]
class CreditCardOverviewPageRoute extends PageRouteInfo<void> {
  const CreditCardOverviewPageRoute()
      : super(CreditCardOverviewPageRoute.name, path: 'card-overview-page');

  static const String name = 'CreditCardOverviewPageRoute';
}

/// generated route for
/// [FinancialBreakdownPage]
class FinancialBreakdownPageRoute
    extends PageRouteInfo<FinancialBreakdownPageRouteArgs> {
  FinancialBreakdownPageRoute(
      {required FinancialBreakdownPageArguments arguments, Key? key})
      : super(FinancialBreakdownPageRoute.name,
            path: 'financial-breakdown-page',
            args: FinancialBreakdownPageRouteArgs(
                arguments: arguments, key: key));

  static const String name = 'FinancialBreakdownPageRoute';
}

class FinancialBreakdownPageRouteArgs {
  const FinancialBreakdownPageRouteArgs({required this.arguments, this.key});

  final FinancialBreakdownPageArguments arguments;

  final Key? key;

  @override
  String toString() {
    return 'FinancialBreakdownPageRouteArgs{arguments: $arguments, key: $key}';
  }
}

/// generated route for
/// [HomePage]
class HomePageRoute extends PageRouteInfo<void> {
  const HomePageRoute() : super(HomePageRoute.name, path: 'home-page');

  static const String name = 'HomePageRoute';
}

/// generated route for
/// [FinancesPage]
class FinancesPageRoute extends PageRouteInfo<void> {
  const FinancesPageRoute()
      : super(FinancesPageRoute.name, path: 'finances-page');

  static const String name = 'FinancesPageRoute';
}

/// generated route for
/// [PortfolioPage]
class PortfolioPageRoute extends PageRouteInfo<void> {
  const PortfolioPageRoute()
      : super(PortfolioPageRoute.name, path: 'portfolio-page');

  static const String name = 'PortfolioPageRoute';
}

/// generated route for
/// [OffersPage]
class OffersPageRoute extends PageRouteInfo<void> {
  const OffersPageRoute() : super(OffersPageRoute.name, path: 'offers-page');

  static const String name = 'OffersPageRoute';
}
