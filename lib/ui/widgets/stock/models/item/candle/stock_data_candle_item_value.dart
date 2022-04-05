part of '../stock_data_item.dart';

class StockDataCandleItemValue {
  final double max;
  final double min;
  StockPainterItem? painterItem;
  final StockDataColorAnimation _animColor;
  final StockDataPositionAnimation _animPos;
  final StockDataSizeAnimation _animSize;

  StockDataCandleItemValue({
    required this.max,
    required this.min,
  })  : _animColor = StockDataColorAnimation(),
        _animPos = StockDataPositionAnimation(),
        _animSize = StockDataSizeAnimation(),
        painterItem = null;

  double get calcMax => max - min;

  Color get currentColor => _animColor.current;

  Offset get currentPosition => _animPos.current;

  Rect get currentRect => _animPos.current & _animSize.current;

  Size get currentSize => _animSize.current;

  Offset get position => _animPos.position ?? Offset.zero;

  Size get size => _animSize.size ?? Size.zero;

  bool get isInitialized => [
        _animColor,
        _animPos,
        _animSize,
      ].any((element) => element.isInitialized);

  void initialize({
    required Color color,
    required AnimationController controller,
    required Offset initialPosition,
    required Offset position,
    required Size size,
    StockDataCandleItemValue? oldItem,
    StockPainterItem? painterItem,
  }) {
    this.painterItem = painterItem;
    _animColor.setup(
      color: color,
      controller: controller,
      oldAnimation: oldItem?._animColor,
    );
    _animPos.setup(
      controller: controller,
      initialPosition: initialPosition,
      oldAnimation: oldItem?._animPos,
      position: position,
    );
    _animSize.setup(
      controller: controller,
      oldAnimation: oldItem?._animSize,
      size: size,
    );
  }
}
