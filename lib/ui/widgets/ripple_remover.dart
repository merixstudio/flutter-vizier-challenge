import 'dart:io';

import 'package:flutter/material.dart';

class RippleRemover extends StatelessWidget {
  final Widget child;
  final bool isActive;

  RippleRemover({
    required this.child,
  }) : isActive = Platform.isIOS;

  @override
  Widget build(BuildContext context) {
    if (isActive) {
      return Theme(
        data: Theme.of(context).copyWith(
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
        ),
        child: child,
      );
    } else {
      return child;
    }
  }
}
