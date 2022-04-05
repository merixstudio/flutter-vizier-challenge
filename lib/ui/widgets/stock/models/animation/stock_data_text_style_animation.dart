import 'package:flutter/material.dart';
import 'package:vizier/ui/widgets/stock/models/animation/stock_data_animation.dart';

class StockDataTextStyleAnimation implements StockDataAnimation {
  TextStyle? textStyle;
  Animation<TextStyle>? _animation;
  TextStyle _lastTextStyle = const TextStyle(
    color: Colors.transparent,
  );

  StockDataTextStyleAnimation();

  TextStyle get current => _lastTextStyle = _animation?.value ??
      const TextStyle(
        color: Colors.transparent,
      );

  @override
  bool get isInitialized => _animation != null;

  void setup({
    required AnimationController controller,
    required TextStyle textStyle,
    TextStyle? initialTextSyle,
    StockDataTextStyleAnimation? oldAnimation,
  }) {
    this.textStyle = textStyle;
    final Animation<TextStyle> animation = TextStyleTween(
      begin: oldAnimation?._lastTextStyle ??
          initialTextSyle ??
          const TextStyle(
            color: Colors.transparent,
          ),
      end: textStyle,
    ).animate(
      CurvedAnimation(
        parent: controller,
        curve: Curves.easeInOut,
      ),
    );
    _animation = animation;
  }
}
