import 'package:flutter/material.dart';
import 'package:vizier/ui/widgets/stock/models/animation/stock_data_animation.dart';

class StockDataColorAnimation implements StockDataAnimation {
  Color? color;
  Animation<Color?>? _animation;
  Color _lastColor = Colors.transparent;

  StockDataColorAnimation();

  Color get current => _lastColor = _animation?.value ?? Colors.transparent;

  @override
  bool get isInitialized => _animation != null;

  void setup({
    required Color color,
    required AnimationController controller,
    Color? initialColor,
    StockDataColorAnimation? oldAnimation,
  }) {
    this.color = color;
    final Animation<Color?> animation = ColorTween(
      begin: oldAnimation?._lastColor ?? initialColor ?? Colors.transparent,
      end: color,
    ).animate(
      CurvedAnimation(
        parent: controller,
        curve: Curves.easeInOut,
      ),
    );
    _animation = animation;
  }
}
