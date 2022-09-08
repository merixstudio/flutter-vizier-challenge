part of '../home_my_wallet_content.dart';

class _HomeMyWalletGoalsSection extends StatelessWidget {
  final List<GoalModel> goals;
  final VoidCallback onMorePressed;

  const _HomeMyWalletGoalsSection({
    required this.goals,
    required this.onMorePressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionHeader(
          title: AppLoc.of(context).homeMyWalletSummaryGoalsSectionTitle,
          onMorePressed: onMorePressed,
        ),
        _buildGoalsList(context)
      ],
    );
  }

  Widget _buildGoalsList(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: goals
          .getRange(0, 2)
          .map<Widget>(
            (goal) => Expanded(
              child: _HomeMyWalletGoalCell(
                title: goal.name,
                goal: goal.goal,
                change: goal.change,
                reached: goal.reached,
                onPressed: () =>
                    AdaptiveAlertDialogFactory.showContentUnavailable(context),
              ),
            ),
          )
          .toList()
        ..insert(
          1,
          SizedBox(
            width: AppDimensions.padding.defaultValue,
          ),
        ),
    );
  }
}
