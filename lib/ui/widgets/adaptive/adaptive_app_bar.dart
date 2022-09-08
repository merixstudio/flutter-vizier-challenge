import 'dart:io';

import 'package:flutter/material.dart';
import 'package:vizier/ui/widgets/adaptive/adaptive_button.dart';

class AdaptiveAppBar extends AppBar {
  AdaptiveAppBar(
    BuildContext context, {
    super.actions,
    super.backgroundColor,
    super.centerTitle,
    super.iconTheme,
    super.title,
  }) : super(
          elevation: 0.0,
          leading: _buildLeadingNavigationButton(
            context,
            iconTheme: iconTheme,
          ),
        );

  static Widget? _buildLeadingNavigationButton(
    BuildContext context, {
    IconThemeData? iconTheme,
  }) {
    final ModalRoute<Object?>? parentRoute = ModalRoute.of(context);
    final bool useCloseButton =
        parentRoute is PageRoute<dynamic> && parentRoute.fullscreenDialog;

    if (parentRoute?.canPop ?? true) {
      return _NavigationButton(
        icon: useCloseButton
            ? Icons.close
            : Platform.isIOS
                ? Icons.arrow_back_ios
                : Icons.arrow_back,
        iconTheme: iconTheme,
      );
    } else {
      return null;
    }
  }
}

class _NavigationButton extends StatelessWidget {
  final IconData icon;
  final IconThemeData? iconTheme;

  const _NavigationButton({
    required this.icon,
    required this.iconTheme,
  });

  @override
  Widget build(BuildContext context) {
    return AdaptiveButton(
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
      ),
      onPressed: () => Navigator.maybePop(context),
      child: Icon(
        icon,
        color:
            iconTheme?.color ?? Theme.of(context).appBarTheme.iconTheme?.color,
      ),
    );
  }
}
