import 'package:flutter/material.dart';
import 'package:vizier/config/styles/colors/app_colors.dart';
import 'package:vizier/config/styles/dimensions/app_dimensions.dart';
import 'package:vizier/config/styles/text_styles/app_text_styles.dart';
import 'package:vizier/ui/widgets/adaptive/adaptive_button.dart';

part 'widget/bottom_sheet_action_cell.dart';

class BottomActionsSheet extends StatelessWidget {
  final List<BottomSheetActionCell> actions;

  const BottomActionsSheet({
    required this.actions,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: AppDimensions.padding.bigValue,
        vertical: AppDimensions.padding.defaultValue,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: _buildStick(),
          ),
          SizedBox(
            height: AppDimensions.padding.smallValue,
          ),
          ...actions,
        ],
      ),
    );
  }

  Widget _buildStick() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(2.5),
        color: AppColors.gray400,
      ),
      height: 4.0,
      width: 51.0,
    );
  }
}
