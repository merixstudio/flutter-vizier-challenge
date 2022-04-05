part of '../stock_data_item.dart';

class StockDataCandleItem extends StockDataItem {
  final Color color;
  final StockDataCandleItemValue value1;
  final StockDataCandleItemValue value2;
  final double x;
  final _StockDataCandleItemTouch _animTouch;

  StockDataCandleItem({
    required this.color,
    required this.value1,
    required this.value2,
    required this.x,
  }) : _animTouch = _StockDataCandleItemTouch();

  StockPainterItem? get currentTouchPainterItem => _animTouch.painterItem;

  Offset get currentTouchPosition => _animTouch.animPosition;

  Rect get currentTouchRect => _animTouch.animRect;

  Size get currentTouchSize => _animTouch.animSize;

  bool get isInitializedTouch => _animTouch.isInitialized;

  void initializeTouch({
    required AnimationController controller,
    required Offset initialPosition,
    required Offset position,
    required Size size,
    StockDataCandleItem? oldItem,
    StockPainterItem? painterItem,
  }) {
    _animTouch.initialize(
      controller: controller,
      initialPosition: initialPosition,
      oldAnimation: oldItem?._animTouch,
      painterItem: painterItem,
      position: position,
      size: size,
    );
  }
}

class _StockDataCandleItemTouch {
  StockPainterItem? painterItem;
  final StockDataPositionAnimation _animPos;
  final StockDataSizeAnimation _animSize;

  _StockDataCandleItemTouch()
      : _animPos = StockDataPositionAnimation(),
        _animSize = StockDataSizeAnimation();

  Offset get animPosition => _animPos.current;

  Rect get animRect => animPosition & animSize;

  Size get animSize => _animSize.current;

  bool get isInitialized => [
        _animPos,
        _animSize,
      ].any((element) => element.isInitialized);

  Offset get position => _animPos.position ?? Offset.zero;

  Size get size => _animSize.size ?? Size.zero;

  void initialize({
    required AnimationController controller,
    required Offset initialPosition,
    required Offset position,
    required Size size,
    _StockDataCandleItemTouch? oldAnimation,
    StockPainterItem? painterItem,
  }) {
    this.painterItem = painterItem;
    _animPos.setup(
      controller: controller,
      initialPosition: initialPosition,
      oldAnimation: oldAnimation?._animPos,
      position: position,
    );
    _animSize.setup(
      controller: controller,
      oldAnimation: oldAnimation?._animSize,
      size: size,
    );
  }
}
