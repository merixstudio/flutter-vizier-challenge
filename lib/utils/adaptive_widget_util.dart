import 'package:flutter/material.dart';

enum Platform { material, cupertino, adaptive }
enum AdaptiveWidgetType { material, cupertino }

class AdaptiveWidgetUtil {
  const AdaptiveWidgetUtil._();

  static AdaptiveWidgetType getWidgetTypeOf(
      BuildContext context, {
        required Platform platform,
      }) {
    switch (platform) {
      case Platform.adaptive:
        final ThemeData theme = Theme.of(context);
        switch (theme.platform) {
          case TargetPlatform.iOS:
            return AdaptiveWidgetType.cupertino;
          case TargetPlatform.android:
          case TargetPlatform.fuchsia:
          default:
            return AdaptiveWidgetType.material;
        }
      case Platform.cupertino:
        return AdaptiveWidgetType.cupertino;
      case Platform.material:
      default:
        return AdaptiveWidgetType.material;
    }
  }
}
