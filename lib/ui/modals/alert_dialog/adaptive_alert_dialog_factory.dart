import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vizier/data/errors/app_error.dart';
import 'package:vizier/l10n/app_loc.dart';
import 'package:vizier/ui/modals/alert_dialog/adaptive_alert_dialog.dart';
import 'package:vizier/ui/modals/alert_dialog/adaptive_alert_dialog_action.dart';
import 'package:vizier/utils/adaptive_widget_util.dart';

abstract class AdaptiveAlertDialogFactory {
  const AdaptiveAlertDialogFactory._();

  static void _showDialog(
    BuildContext context, {
    required String title,
    required List<AdaptiveAlertDialogAction> actions,
    String? content,
    bool rootNavigator = false,
  }) {
    final AdaptiveWidgetType adaptiveWidgetType =
        AdaptiveWidgetUtil.getWidgetTypeOf(
      context,
      platform: Platform.adaptive,
    );
    switch (adaptiveWidgetType) {
      case AdaptiveWidgetType.cupertino:
        return _showCupertinoDialog(
          context,
          title: title,
          content: content,
          rootNavigator: rootNavigator,
          actions: actions,
        );
      case AdaptiveWidgetType.material:
      default:
        return _showMaterialDialog(
          context,
          title: title,
          content: content,
          rootNavigator: rootNavigator,
          actions: actions,
        );
    }
  }

  static void _showCupertinoDialog(
    BuildContext context, {
    required String title,
    required List<AdaptiveAlertDialogAction> actions,
    String? content,
    bool rootNavigator = false,
  }) {
    showCupertinoDialog(
      context: context,
      useRootNavigator: rootNavigator,
      builder: (BuildContext context) => AdaptiveAlertDialog(
        title: title,
        content: content,
        actions: actions,
      ),
    );
  }

  static void _showMaterialDialog(
    BuildContext context, {
    required String title,
    required List<AdaptiveAlertDialogAction> actions,
    String? content,
    bool rootNavigator = false,
  }) {
    showDialog(
      context: context,
      useRootNavigator: rootNavigator,
      builder: (BuildContext context) => AdaptiveAlertDialog(
        title: title,
        content: content,
        actions: actions,
      ),
    );
  }

// Generic dialogs
  static void showOKAlert(
    BuildContext context, {
    required String title,
    String? content,
    bool rootNavigator = false,
    VoidCallback? onPressed,
  }) {
    _showDialog(
      context,
      title: title,
      content: content,
      rootNavigator: rootNavigator,
      actions: <AdaptiveAlertDialogAction>[
        AdaptiveAlertDialogAction.adaptive(
          title: AppLoc.of(context).ok,
          onPressed: onPressed ??
              () => Navigator.of(
                    context,
                    rootNavigator: rootNavigator,
                  ).pop(),
        ),
      ],
    );
  }

  static void showContentUnavailable(
    BuildContext context, {
    bool rootNavigator = false,
    VoidCallback? onPressed,
  }) {
    showOKAlert(
      context,
      title: AppLoc.of(context).contentUnavailableAlertTitle,
      content: AppLoc.of(context).contentUnavailableAlertContent,
      rootNavigator: rootNavigator,
      onPressed: onPressed,
    );
  }

  static void showError(
    BuildContext context, {
    required AppError appError,
    bool rootNavigator = false,
    VoidCallback? onPressed,
  }) {
    showOKAlert(
      context,
      title: appError.localizedTitle(context),
      content: appError.localizedMessage(context),
      rootNavigator: rootNavigator,
      onPressed: onPressed,
    );
  }
}
