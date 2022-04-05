import 'package:flutter/material.dart';
import 'package:vizier/config/styles/decorations/app_decorations.dart';
import 'package:vizier/l10n/app_loc.dart';
import 'package:vizier/ui/modals/bottom_actions_sheet/bottom_actions_sheet.dart';

abstract class BottomActionsSheetFactory {
  const BottomActionsSheetFactory._();

  static void _showBottomSheet(
    BuildContext context, {
    required Widget child,
  }) {
    showModalBottomSheet(
      shape: AppDecorations.bottomSheetShape,
      context: context,
      builder: (context) => child,
    );
  }

  static void showWalletMoreModal(
    BuildContext context, {
    required VoidCallback onCardsOverviewPressed,
  }) {
    _showBottomSheet(
      context,
      child: BottomActionsSheet(
        actions: [
          BottomSheetActionCell(
            title: AppLoc.of(context).financesHistoryChartBottomSheetCardsOverviewButton,
            onPressed: () {
              Navigator.of(context).pop();
              onCardsOverviewPressed();
            },
          ),
        ],
      ),
    );
  }
}
