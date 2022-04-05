import 'package:flutter/material.dart';
import 'package:vizier/config/styles/colors/app_colors.dart';
import 'package:vizier/config/styles/dimensions/app_dimensions.dart';
import 'package:vizier/config/styles/text_styles/app_text_styles.dart';

part 'app_decorations_button.dart';
part 'app_decorations_input.dart';

class AppDecorations {
  const AppDecorations._();

  static const _Button button = _Button();
  static const _Input input = _Input();

  static BoxDecoration defaultBorder() {
    return BoxDecoration(
      border: Border.all(
        color: AppColors.gray400,
      ),
      borderRadius: AppDimensions.radius.borderedRadius(),
    );
  }

  static BoxDecoration navyBox() {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(12.0),
      color: AppColors.navy,
    );
  }

  static BoxDecoration primaryBox() {
    return navyBox().copyWith(
      color: AppColors.primary100,
    );
  }

  static ShapeBorder get bottomSheetShape => const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(24.0),
        ),
      );
}
