import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vizier/config/styles/colors/app_colors.dart';
import 'package:vizier/utils/adaptive_widget_util.dart';

class AdaptiveAlertDialogAction extends StatelessWidget {
  final String title;
  final VoidCallback? onPressed;
  final TextStyle? textStyle;

  const AdaptiveAlertDialogAction.adaptive({
    required this.title,
    this.onPressed,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    final AdaptiveWidgetType adaptiveWidgetType =
        AdaptiveWidgetUtil.getWidgetTypeOf(
      context,
      platform: Platform.adaptive,
    );
    switch (adaptiveWidgetType) {
      case AdaptiveWidgetType.cupertino:
        return _buildCupertinoDialogAction();
      case AdaptiveWidgetType.material:
      default:
        return _buildMaterialDialogAction();
    }
  }

  Widget _buildMaterialDialogAction() {
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
        overlayColor: MaterialStateProperty.all(
          AppColors.gray500,
        ),
      ),
      child: Text(
        title,
        style: textStyle ?? _defaultActionTextStyle(),
      ),
    );
  }

  Widget _buildCupertinoDialogAction() {
    return CupertinoDialogAction(
      onPressed: onPressed,
      child: Text(
        title,
        style: textStyle ?? _defaultActionTextStyle(),
      ),
    );
  }

  TextStyle _defaultActionTextStyle() {
    return const TextStyle(
      color: AppColors.black,
    );
  }
}
