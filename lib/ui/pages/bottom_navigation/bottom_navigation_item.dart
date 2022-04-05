import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:vizier/config/router/app_router.dart';
import 'package:vizier/l10n/app_loc.dart';

enum BottomNavigationItem { home, finances, portfolio, offers }

extension BottomNavigationItemExtension on BottomNavigationItem {
  String title(BuildContext context) {
    switch (this) {
      case BottomNavigationItem.home:
        return AppLoc.of(context).bottomBarItemHomeTitle;
      case BottomNavigationItem.finances:
        return AppLoc.of(context).bottomBarItemFinancesTitle;
      case BottomNavigationItem.portfolio:
        return AppLoc.of(context).bottomBarItemPortfolioTitle;
      case BottomNavigationItem.offers:
        return AppLoc.of(context).bottomBarItemOffersTitle;
    }
  }

  IconData get icon {
    //TODO (MT): Change icons
    switch (this) {
      case BottomNavigationItem.home:
        return Icons.home;
      case BottomNavigationItem.finances:
        return Icons.pie_chart_outline;
      case BottomNavigationItem.portfolio:
        return Icons.account_balance_wallet;
      case BottomNavigationItem.offers:
        return Icons.flag;
    }
  }

  PageRouteInfo get route {
    switch (this) {
      case BottomNavigationItem.home:
        return const HomePageRoute();
      case BottomNavigationItem.finances:
        return const FinancesPageRoute();
      case BottomNavigationItem.portfolio:
        return const PortfolioPageRoute();
      case BottomNavigationItem.offers:
        return const OffersPageRoute();
    }
  }
}
