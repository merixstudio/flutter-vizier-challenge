import 'package:flutter/material.dart';
import 'package:vizier/l10n/app_loc.dart';

enum OfferType {
  retirementGoals,
  mortgage,
  loans,
}

extension OfferTypeExtension on OfferType {
  String leftContent(BuildContext context) {
    switch (this) {
      case OfferType.retirementGoals:
        return AppLoc.of(context).offerTypeRetirementGoalsLeftContent;
      case OfferType.mortgage:
        return AppLoc.of(context).offerTypeMortgagesLeftContent;
      case OfferType.loans:
        return AppLoc.of(context).offerTypeLoansLeftContent;
    }
  }

  String rightContent(BuildContext context) {
    switch (this) {
      default:
        return AppLoc.of(context).offerTypeRightContent;
    }
  }
}
