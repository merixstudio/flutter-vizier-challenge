import 'package:flutter/material.dart';
import 'package:vizier/config/styles/colors/app_colors.dart';
import 'package:vizier/config/styles/dimensions/app_dimensions.dart';
import 'package:vizier/ui/pages/home/home_tab_item.dart';
import 'package:vizier/ui/widgets/adaptive/adaptive_button.dart';
import 'package:vizier/ui/widgets/ripple_remover.dart';

class HomeTabBar extends StatelessWidget {
  final Function(HomeTabItem tabItem) onSelectedTabItemChanged;
  final HomeTabItem selectedItem;
  final TabController tabController;

  const HomeTabBar({
    required this.onSelectedTabItemChanged,
    required this.selectedItem,
    required this.tabController,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RippleRemover(
      child: TabBar(
        controller: tabController,
        enableFeedback: true,
        indicator: const BoxDecoration(),
        isScrollable: true,
        labelPadding: EdgeInsets.only(
          right: AppDimensions.padding.smallValue,
        ),
        padding: EdgeInsets.zero,
        tabs: HomeTabItem.values
            .map(
              (e) => _buildTabItem(
                context: context,
                item: e,
              ),
            )
            .toList(),
      ),
    );
  }

  Widget _buildTabItem({
    required BuildContext context,
    required HomeTabItem item,
  }) {
    final bool isSelected = item == selectedItem;
    return AdaptiveButton(
      decoration: BoxDecoration(
        color: isSelected ? AppColors.primary100.withOpacity(0.16) : AppColors.white,
        borderRadius: AppDimensions.radius.defaultRadius(),
      ),
      onPressed: () {
        tabController.animateTo(item.index);
        onSelectedTabItemChanged(item);
      },
      padding: EdgeInsets.symmetric(
        horizontal: AppDimensions.padding.defaultValue,
        vertical: AppDimensions.padding.smallValue,
      ),
      child: Text(
        item.title(context),
        style: Theme.of(context).textTheme.headline6?.copyWith(
              color: AppColors.primary100,
            ),
      ),
    );
  }
}
