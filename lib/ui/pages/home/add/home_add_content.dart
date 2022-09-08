import 'package:flutter/material.dart';
import 'package:vizier/config/styles/colors/app_colors.dart';
import 'package:vizier/config/styles/decorations/app_decorations.dart';
import 'package:vizier/config/styles/dimensions/app_dimensions.dart';
import 'package:vizier/l10n/app_loc.dart';
import 'package:vizier/ui/modals/alert_dialog/adaptive_alert_dialog_factory.dart';
import 'package:vizier/ui/widgets/adaptive/adaptive_button.dart';
import 'package:vizier/ui/widgets/section_header.dart';

part 'widgets/home_add_accounts_section.dart';
part 'widgets/home_add_action_cell.dart';
part 'widgets/home_add_other_services_section.dart';

class HomeAddContent extends StatelessWidget {
  const HomeAddContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppDimensions.padding.defaultHorizontal(),
      child: Column(
        children: [
          _HomeAddAccountsSection(
            onMorePressed: () =>
                AdaptiveAlertDialogFactory.showContentUnavailable(context),
          ),
          _HomeAddOtherServicesSection(
            onMorePressed: () =>
                AdaptiveAlertDialogFactory.showContentUnavailable(context),
            onVaultPressed: () =>
                AdaptiveAlertDialogFactory.showContentUnavailable(context),
            onCommoditiesPressed: () =>
                AdaptiveAlertDialogFactory.showContentUnavailable(context),
            onCreditPressed: () =>
                AdaptiveAlertDialogFactory.showContentUnavailable(context),
            onInsurancePressed: () =>
                AdaptiveAlertDialogFactory.showContentUnavailable(context),
          ),
        ],
      ),
    );
  }
}
