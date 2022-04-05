import 'package:flutter/cupertino.dart';
import 'package:vizier/config/styles/images/app_images.dart';
import 'package:vizier/l10n/app_loc.dart';

enum OnboardingItem {
  trackMoney,
  stayFocused,
  allMoney,
}

extension OnboardingItemExtension on OnboardingItem {
  String title(BuildContext context) {
    switch (this) {
      case OnboardingItem.trackMoney:
        return AppLoc.of(context).onboardingTrackMoneyTitle;
      case OnboardingItem.stayFocused:
        return AppLoc.of(context).onboardingStayFocusedTitle;
      case OnboardingItem.allMoney:
        return AppLoc.of(context).onboardingAllMoneyTitle;
      default:
        throw UnimplementedError(
          'Type: $this is not implemented in title(context)',
        );
    }
  }

  String description(BuildContext context) {
    switch (this) {
      case OnboardingItem.trackMoney:
        return AppLoc.of(context).onboardingTrackMoneyDescription;
      case OnboardingItem.stayFocused:
        return AppLoc.of(context).onboardingStayFocusedDescription;
      case OnboardingItem.allMoney:
        return AppLoc.of(context).onboardingAllMoneyDescription;
      default:
        throw UnimplementedError(
          'Type: $this is not implemented in content(context)',
        );
    }
  }

  String image(BuildContext context) {
    switch (this) {
      case OnboardingItem.trackMoney:
        return AppImages.svg.manageMoney;
      case OnboardingItem.stayFocused:
        return AppImages.svg.stayFocused;
      case OnboardingItem.allMoney:
        return AppImages.svg.allMoney;
      default:
        throw UnimplementedError(
          'Type: $this is not implemented in image(context)',
        );
    }
  }
}
