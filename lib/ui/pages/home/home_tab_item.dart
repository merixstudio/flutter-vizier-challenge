import 'package:flutter/material.dart';
import 'package:vizier/l10n/app_loc.dart';
import 'package:vizier/ui/pages/home/add/home_add_content.dart';
import 'package:vizier/ui/pages/home/my_future/home_my_future_content.dart';
import 'package:vizier/ui/pages/home/my_wallet/home_my_wallet_content.dart';

enum HomeTabItem { myWallet, myFuture, add }

extension HomeTabItemExtension on HomeTabItem {
  String title(BuildContext context) {
    switch (this) {
      case HomeTabItem.myWallet:
        return AppLoc.of(context).homeTabItemWalletTitle;
      case HomeTabItem.myFuture:
        return AppLoc.of(context).homeTabItemFutureTitle;
      case HomeTabItem.add:
        return AppLoc.of(context).homeTabItemAddTitle;
    }
  }

  Widget content(BuildContext context) {
    switch (this) {
      case HomeTabItem.myWallet:
        return const HomeMyWalletContent();
      case HomeTabItem.myFuture:
        return const HomeMyFutureContent();
      case HomeTabItem.add:
        return const HomeAddContent();
    }
  }
}
