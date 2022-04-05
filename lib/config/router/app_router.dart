import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:vizier/data/models/company_asset/company_asset_model.dart';
import 'package:vizier/data/models/offer/offer_model.dart';
import 'package:vizier/ui/pages/authentication/login/authentication_login_page.dart';
import 'package:vizier/ui/pages/bottom_navigation/bottom_navigation_page.dart';
import 'package:vizier/ui/pages/company_listing_details/company_listing_page.dart';
import 'package:vizier/ui/pages/credit_card/form/credit_card_form_page.dart';
import 'package:vizier/ui/pages/credit_card/overview/credit_card_overview.dart';
import 'package:vizier/ui/pages/finances/finances_page.dart';
import 'package:vizier/ui/pages/financial_breakdown/financial_breakdown_page.dart';
import 'package:vizier/ui/pages/financial_breakdown/financial_breakdown_page_arguments.dart';
import 'package:vizier/ui/pages/home/home_page.dart';
import 'package:vizier/ui/pages/offers/details/offer_details_page.dart';
import 'package:vizier/ui/pages/offers/offers_page.dart';
import 'package:vizier/ui/pages/onboarding/onboarding_page.dart';
import 'package:vizier/ui/pages/portfolio/portfolio_page.dart';
import 'package:vizier/ui/pages/profile/profile_page.dart';

part 'app_router.gr.dart';

@AdaptiveAutoRouter(
  routes: [
    AutoRoute(
      page: BottomNavigationPage,
      path: BottomNavigationPage.route,
      children: [
        CustomRoute(
          page: HomePage,
          path: HomePage.route,
        ),
        CustomRoute(
          page: FinancesPage,
          path: FinancesPage.route,
        ),
        CustomRoute(
          page: PortfolioPage,
          path: PortfolioPage.route,
        ),
        CustomRoute(
          page: OffersPage,
          path: OffersPage.route,
        ),
      ],
    ),
    CustomRoute(
      page: OnboardingPage,
      path: OnboardingPage.route,
    ),
    AutoRoute(
      page: AuthenticationLoginPage,
      path: AuthenticationLoginPage.route,
    ),
    AutoRoute(
      fullscreenDialog: true,
      page: ProfilePage,
      path: ProfilePage.route,
    ),
    AutoRoute(
      fullscreenDialog: true,
      page: CompanyListingPage,
      path: CompanyListingPage.route,
    ),
    CustomRoute(
      fullscreenDialog: true,
      transitionsBuilder: TransitionsBuilders.fadeIn,
      page: OfferDetailsPage,
      path: OfferDetailsPage.route,
    ),
    AutoRoute(
      fullscreenDialog: true,
      page: CreditCardFormPage,
      path: CreditCardFormPage.route,
    ),
    AutoRoute(
      fullscreenDialog: true,
      page: CreditCardOverviewPage,
      path: CreditCardOverviewPage.route,
    ),
    CustomRoute(
      fullscreenDialog: true,
      page: FinancialBreakdownPage,
      path: FinancialBreakdownPage.route,
    ),
  ],
)
@Singleton()
class AppRouter extends _$AppRouter {}
