import 'package:flutter/material.dart';
import 'package:vizier/config/constants/app_constants.dart';
import 'package:vizier/config/styles/colors/app_colors.dart';
import 'package:vizier/config/styles/dimensions/app_dimensions.dart';
import 'package:vizier/ui/widgets/adaptive/adaptive_button.dart';

class AdaptiveLoadingButton extends StatelessWidget {
  final bool isLoading;
  final Widget child;
  final Color? loaderColor;
  final BoxDecoration? decoration;
  final VoidCallback? onPressed;
  final EdgeInsets? padding;

  const AdaptiveLoadingButton({
    required this.isLoading,
    required this.child,
    this.loaderColor,
    this.decoration,
    this.onPressed,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: isLoading,
      child: AdaptiveButton(
        padding: padding,
        decoration: decoration,
        onPressed: onPressed,
        child: _buildChild(),
      ),
    );
  }

  Widget _buildChild() {
    return IntrinsicHeight(
      child: Stack(
        children: <Widget>[
          AnimatedOpacity(
            duration: AppConstants.animation.defaultDuration,
            opacity: isLoading ? 0.0 : 1.0,
            child: Align(
              child: child,
            ),
          ),
          SizedBox.fromSize(
            size: Size.fromHeight(AppDimensions.padding.defaultValue),
            child: Offstage(
              offstage: !isLoading,
              child: Align(
                child: AspectRatio(
                  aspectRatio: 1,
                  child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(loaderColor ?? AppColors.white),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
