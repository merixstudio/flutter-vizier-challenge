import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vizier/config/constants/app_constants.dart';
import 'package:vizier/utils/adaptive_widget_util.dart';

class AdaptiveButton extends StatelessWidget {
  final Widget child;
  final BoxDecoration? decoration;
  final VoidCallback? onPressed;
  final EdgeInsetsGeometry? padding;

  const AdaptiveButton({
    required this.child,
    this.decoration,
    this.onPressed,
    this.padding = const EdgeInsets.all(16),
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
        return _buildBoxDecoration(
          child: _buildCupertinoButton(),
        );
      case AdaptiveWidgetType.material:
      default:
        return _buildBoxDecoration(
          child: _buildMaterialButton(),
        );
    }
  }

  Widget _buildBoxDecoration({
    required Widget child,
  }) {
    Widget circleChild = child;
    if (decoration?.shape == BoxShape.circle) {
      circleChild = ClipOval(
        child: child,
      );
    }
    return AnimatedContainer(
      decoration: decoration,
      duration: AppConstants.animation.defaultDuration,
      margin: EdgeInsets.zero,
      padding: EdgeInsets.zero,
      child: circleChild,
    );
  }

  Widget _buildCupertinoButton() {
    return CupertinoButton(
      onPressed: onPressed,
      padding: padding,
      minSize: 0,
      child: child,
    );
  }

  Widget _buildMaterialButton() {
    final BorderRadiusGeometry? borderRadiusGeometry = decoration?.borderRadius;
    final BorderRadius? borderRadius =
        borderRadiusGeometry is BorderRadius ? borderRadiusGeometry : null;

    return Material(
      borderRadius: borderRadius,
      type: MaterialType.transparency,
      child: InkWell(
        borderRadius: borderRadius,
        onTap: onPressed,
        child: Padding(
          padding: padding ?? EdgeInsets.zero,
          child: Center(
            child: child,
          ),
        ),
      ),
    );
  }
}
