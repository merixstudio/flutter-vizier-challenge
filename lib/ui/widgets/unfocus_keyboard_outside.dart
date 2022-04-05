import 'package:flutter/material.dart';

class UnfocusKeyboardOutside extends StatelessWidget {
  final Widget child;

  const UnfocusKeyboardOutside({
    required this.child,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: child,
    );
  }
}
