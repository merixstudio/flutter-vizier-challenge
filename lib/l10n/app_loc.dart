import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AppLoc {
  const AppLoc._();

  static AppLocalizations of(BuildContext context) {
    if (AppLocalizations.of(context) != null) {
      return AppLocalizations.of(context)!;
    } else {
      throw _AppLocalizationsContextNotAvailableException();
    }
  }
}

class _AppLocalizationsContextNotAvailableException implements Exception {
  @override
  String toString() {
    return 'Provided context is ether null or doesn\'t contain AppLocalizations';
  }
}
