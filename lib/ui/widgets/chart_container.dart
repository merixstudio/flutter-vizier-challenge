import 'package:flutter/material.dart';
import 'package:vizier/config/styles/colors/app_colors.dart';
import 'package:vizier/config/styles/decorations/app_decorations.dart';
import 'package:vizier/config/styles/dimensions/app_dimensions.dart';
import 'package:vizier/config/styles/text_styles/app_text_styles.dart';
import 'package:vizier/cubits/chart_tabs/chart_tab.dart';
import 'package:vizier/extensions/extensions.dart';
import 'package:vizier/ui/widgets/adaptive/adaptive_button.dart';
import 'package:vizier/ui/widgets/chart_tabs_bar.dart';

class ChartContainer extends StatelessWidget {
  final String? title;
  final String? content;
  final bool isLoading;
  final Widget? chart;
  final ChartTab selectedTab;
  final Function(ChartTab tab) onTabSelected;
  final VoidCallback? onMorePressed;

  const ChartContainer({
    required this.chart,
    required this.selectedTab,
    required this.onTabSelected,
    this.title,
    this.content,
    this.isLoading = false,
    this.onMorePressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecorations.navyBox(),
      padding: EdgeInsets.symmetric(
        vertical: AppDimensions.padding.bigValue,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          if ((title ?? '').isNotBlank) ...[
            Padding(
              padding: AppDimensions.padding.defaultHorizontal(),
              child: _buildHeader(context),
            ),
            SizedBox(
              height: AppDimensions.padding.defaultValue,
            ),
            Divider(
              color: AppColors.white12,
            ),
            SizedBox(
              height: AppDimensions.padding.defaultValue,
            ),
          ],
          Expanded(
            child: Padding(
              padding: AppDimensions.padding.defaultHorizontal(),
              child: isLoading
                  ? const Center(
                      child: CircularProgressIndicator(
                        color: AppColors.white,
                      ),
                    )
                  : chart ?? const SizedBox.shrink(),
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Align(
            child: ChartTabsBar(
              selectedTab: selectedTab,
              onTabSelected: onTabSelected,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                title ?? '',
                style: Theme.of(context).textTheme.headline5?.copyWith(
                      color: AppColors.white,
                    ),
              ),
              const SizedBox(
                height: 4.0,
              ),
              Text(
                content ?? '',
                style: AppTextStyles.caption2().copyWith(
                  color: AppColors.white64,
                ),
              ),
            ],
          ),
        ),
        if (onMorePressed != null) _buildMoreButton(),
      ],
    );
  }

  Widget _buildMoreButton() {
    return AdaptiveButton(
      onPressed: onMorePressed,
      padding: EdgeInsets.all(AppDimensions.padding.smallValue),
      child: const Icon(
        Icons.more_horiz,
        color: AppColors.white,
      ),
    );
  }
}
