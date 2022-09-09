part of '../home_add_content.dart';

class _HomeAddOtherServicesSection extends StatelessWidget {
  final VoidCallback onMorePressed;
  final VoidCallback onVaultPressed;
  final VoidCallback onCommoditiesPressed;
  final VoidCallback onCreditPressed;
  final VoidCallback onInsurancePressed;

  const _HomeAddOtherServicesSection({
    required this.onMorePressed,
    required this.onVaultPressed,
    required this.onCommoditiesPressed,
    required this.onCreditPressed,
    required this.onInsurancePressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionHeader(
          title: AppLoc.of(context).homeAddOtherServicesSectionTitle,
          onMorePressed: onMorePressed,
        ),
        Container(
          clipBehavior: Clip.antiAlias,
          decoration: AppDecorations.defaultBorder(),
          child: _buildActions(context),
        ),
      ],
    );
  }

  Widget _buildActions(BuildContext context) {
    return Column(
      children: [
        _HomeAddActionCell(
          title: AppLoc.of(context).homeAddOtherServicesVaultCellTitle,
          icon: Icons.lock,
          onPressed: onVaultPressed,
        ),
        const Divider(),
        _HomeAddActionCell(
          title: AppLoc.of(context).homeAddOtherServicesCommoditiesCellTitle,
          //TODO (MT): Change icon
          icon: Icons.window_sharp,
          onPressed: onCommoditiesPressed,
        ),
        const Divider(),
        _HomeAddActionCell(
          title: AppLoc.of(context).homeAddOtherServicesCreditCellTitle,
          icon: Icons.account_balance,
          onPressed: onCreditPressed,
        ),
        const Divider(),
        _HomeAddActionCell(
          title: AppLoc.of(context).homeAddOtherServicesInsuranceCellTitle,
          icon: Icons.local_police,
          onPressed: onInsurancePressed,
        ),
      ],
    );
  }
}
