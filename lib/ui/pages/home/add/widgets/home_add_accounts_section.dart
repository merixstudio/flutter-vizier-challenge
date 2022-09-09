part of '../home_add_content.dart';

class _HomeAddAccountsSection extends StatelessWidget {
  final VoidCallback onMorePressed;

  const _HomeAddAccountsSection({
    required this.onMorePressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionHeader(
          title: AppLoc.of(context).homeAddAccountsSectionTitle,
          onMorePressed: onMorePressed,
        ),
        DecoratedBox(
          decoration: AppDecorations.defaultBorder(),
          child: _buildActions(context),
        ),
      ],
    );
  }

  Widget _buildActions(BuildContext context) {
    return Column();
  }
}
