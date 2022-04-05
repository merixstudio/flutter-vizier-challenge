import 'package:flutter/material.dart';
import 'package:vizier/ui/widgets/stock/models/animation/stock_data_animation.dart';

class StockDataPositionAnimation implements StockDataAnimation {
  Offset? position;
  Animation<Offset>? _animation;
  Offset _lastPosition = Offset.zero;

  StockDataPositionAnimation();

  Offset get current => _lastPosition = _animation?.value ?? Offset.zero;

  @override
  bool get isInitialized => _animation != null;

  void setup({
    required AnimationController controller,
    required Offset position,
    Offset? initialPosition,
    StockDataPositionAnimation? oldAnimation,
  }) {
    this.position = position;
    final Animation<Offset> animation = Tween<Offset>(
      begin: oldAnimation?._lastPosition ?? initialPosition ?? position,
      end: position,
    ).animate(
      CurvedAnimation(
        parent: controller,
        curve: Curves.easeOutExpo,
      ),
    );
    _animation = animation;
  }
}
