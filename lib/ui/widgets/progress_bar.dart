import 'package:flutter/material.dart';
import 'package:vizier/config/styles/colors/app_colors.dart';
import 'package:vizier/config/styles/text_styles/app_text_styles.dart';

class ProgressBar extends StatelessWidget {
  // Value between 0 and 100
  final int currentProgress;
  final String? summary;
  final String? goal;

  double get _progress => currentProgress.clamp(0, 100).toDouble();

  const ProgressBar({
    required this.currentProgress,
    this.summary,
    this.goal,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Stack(
          children: [
            _buildBar(
              color: AppColors.gray400,
            ),
            FractionallySizedBox(
              widthFactor: _progress / 100,
              child: _buildBar(
                color: AppColors.primary100,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 4.0,
        ),
        Row(
          children: [
            if (summary != null)
              Expanded(
                child: _buildSummary(
                  context,
                  summary: summary!,
                ),
              ),
            if (goal != null)
              _buildGoal(
                context,
                goal: goal!,
              ),
          ],
        ),
      ],
    );
  }

  Widget _buildBar({
    required Color color,
  }) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3.0),
        color: color,
      ),
      height: 6.0,
    );
  }

  Widget _buildSummary(
    BuildContext context, {
    required String summary,
  }) {
    return Text(
      summary,
      style: AppTextStyles.caption3().copyWith(
        color: AppColors.primary100,
      ),
    );
  }

  Widget _buildGoal(
    BuildContext context, {
    required String goal,
  }) {
    return Text(
      goal,
      style: AppTextStyles.caption3().copyWith(
        color: AppColors.gray100.withOpacity(0.4),
      ),
    );
  }
}
