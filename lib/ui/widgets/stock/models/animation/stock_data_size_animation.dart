import 'package:flutter/material.dart';
import 'package:vizier/ui/widgets/stock/models/animation/stock_data_animation.dart';

class StockDataSizeAnimation implements StockDataAnimation {
  Size? size;
  Animation<Size>? _animation;
  Size _lastSize = Size.zero;

  StockDataSizeAnimation();

  Size get current => _lastSize = _animation?.value ?? Size.zero;

  @override
  bool get isInitialized => _animation != null;

  void setup({
    required AnimationController controller,
    required Size size,
    Size? initialSize,
    StockDataSizeAnimation? oldAnimation,
  }) {
    this.size = size;
    final Animation<Size> animation = Tween<Size>(
      begin: oldAnimation?._lastSize ?? initialSize ?? size,
      end: size,
    ).animate(
      CurvedAnimation(
        parent: controller,
        curve: Curves.easeOutExpo,
      ),
    );
    _animation = animation;
  }
}
