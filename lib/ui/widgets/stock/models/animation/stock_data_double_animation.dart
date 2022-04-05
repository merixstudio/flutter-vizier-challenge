import 'package:flutter/material.dart';
import 'package:vizier/ui/widgets/stock/models/animation/stock_data_animation.dart';

class StockDataDoubleAnimation implements StockDataAnimation {
  double? value;
  Animation<double>? _animation;
  double _lastValue = 0.0;

  StockDataDoubleAnimation();

  double get current => _lastValue = _animation?.value ?? 0.0;

  @override
  bool get isInitialized => _animation != null;

  void setup({
    required AnimationController controller,
    required double value,
    double? initialValue,
    StockDataDoubleAnimation? oldAnimation,
  }) {
    this.value = value;
    final Animation<double> animation = Tween<double>(
      begin: oldAnimation?._lastValue ?? initialValue ?? value,
      end: value,
    ).animate(
      CurvedAnimation(
        parent: controller,
        curve: Curves.easeOutExpo,
      ),
    );
    _animation = animation;
  }
}
