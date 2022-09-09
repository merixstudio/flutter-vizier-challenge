import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vizier/ui/modals/alert_dialog/adaptive_alert_dialog_action.dart';
import 'package:vizier/utils/adaptive_widget_util.dart';

class AdaptiveAlertDialog extends StatelessWidget {
  final String title;
  final String? content;
  final List<AdaptiveAlertDialogAction> actions;

  const AdaptiveAlertDialog({
    required this.title,
    required this.actions,
    this.content,
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
        return _buildCupertinoAlertDialog(
          context,
        );
      case AdaptiveWidgetType.material:
      default:
        return _buildMaterialAlertDialog(
          context,
        );
    }
  }

  Widget _buildCupertinoAlertDialog(
    BuildContext context,
  ) {
    return CupertinoAlertDialog(
      title: Text(
        title,
      ),
      content: content?.isNotEmpty ?? false
          ? Padding(
              padding: const EdgeInsets.only(
                top: 2,
              ),
              child: Text(
                content!,
              ),
            )
          : null,
      actions: actions,
    );
  }

  Widget _buildMaterialAlertDialog(BuildContext context) {
    return AlertDialog(
      title: Text(
        title,
      ),
      content: content?.isNotEmpty ?? false
          ? Text(
              content!,
            )
          : null,
      actions: actions,
    );
  }
}
