import 'package:flutter/material.dart';
import 'package:vizier/config/constants/app_constants.dart';
import 'package:vizier/config/styles/colors/app_colors.dart';
import 'package:vizier/config/styles/dimensions/app_dimensions.dart';
import 'package:vizier/config/styles/text_styles/app_text_styles.dart';
import 'package:vizier/cubits/chart_tabs/chart_tab.dart';
import 'package:vizier/ui/widgets/adaptive/adaptive_button.dart';

class ChartTabsBar extends StatelessWidget {
  final ChartTab selectedTab;
  final Function(ChartTab tab) onTabSelected;

  const ChartTabsBar({
    required this.selectedTab,
    required this.onTabSelected,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32.0,
      child: ListView.separated(
        itemBuilder: (context, index) {
          final ChartTab tab = ChartTab.values[index];
          return AnimatedSwitcher(
            duration: AppConstants.animation.defaultDuration,
            child: SizedBox.fromSize(
              size: const Size.square(32.0),
              child: tab == selectedTab
                  ? _buildActiveTab(
                      tab.title(context),
                    )
                  : AdaptiveButton(
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      padding: EdgeInsets.zero,
                      onPressed: () => onTabSelected(tab),
                      child: _buildInActiveTab(
                        tab.title(context),
                      ),
                    ),
            ),
          );
        },
        itemCount: ChartTab.values.length,
        separatorBuilder: (_, __) => SizedBox(
          width: AppDimensions.padding.smallValue,
        ),
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
      ),
    );
  }

  Widget _buildActiveTab(String text) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        color: AppColors.white,
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Text(
          text,
          style: AppTextStyles.caption2Bold().copyWith(
            color: AppColors.navy,
          ),
        ),
      ),
    );
  }

  Widget _buildInActiveTab(String text) {
    return Center(
      child: Text(
        text,
        style: AppTextStyles.caption2Bold().copyWith(
          color: AppColors.white,
        ),
      ),
    );
  }
}
