part of 'stock_data_item.dart';

class StockDataLineItem extends StockDataItem {
  final Color color;
  final String tooltip;
  final double value;
  final double x;
  final _StockDataLineItemTouch _animTouch;
  final _StockDataLineItemValue _animValue;

  StockDataLineItem({
    required this.color,
    required this.tooltip,
    required this.value,
    required this.x,
  })  : _animTouch = _StockDataLineItemTouch(),
        _animValue = _StockDataLineItemValue();

  StockPainterItem? get currentTouchPainterItem => _animTouch.painterItem;

  Offset get currentTouchPosition => _animTouch.animPosition;

  Rect get currentTouchRect => _animTouch.animRect;

  Size get currentTouchSize => _animTouch.animSize;

  Color get currentValueColor => _animValue.animColor;

  StockPainterItem? get currentValuePainterItem => _animValue.painterItem;

  Offset get currentValuePosition => _animValue.animPosition;

  bool get isInitializedTouch => _animTouch.isInitialized;

  bool get isInitializedValue => _animValue.isInitialized;

  Offset get valuePosition => _animValue.position;

  void initializeTouch({
    required AnimationController controller,
    required Offset initialPosition,
    required Offset position,
    required Size size,
    StockDataLineItem? oldItem,
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

  void initializeValue({
    required AnimationController controller,
    required Color color,
    required Offset initialPosition,
    required Offset position,
    StockDataLineItem? oldItem,
    StockPainterItem? painterItem,
  }) {
    _animValue.initialize(
      color: color,
      controller: controller,
      initialPosition: initialPosition,
      oldAnimation: oldItem?._animValue,
      painterItem: painterItem,
      position: position,
    );
  }
}

class _StockDataLineItemTouch {
  StockPainterItem? painterItem;
  final StockDataPositionAnimation _animPos;
  final StockDataSizeAnimation _animSize;

  _StockDataLineItemTouch()
      : _animPos = StockDataPositionAnimation(),
        _animSize = StockDataSizeAnimation(),
        painterItem = null;

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
    _StockDataLineItemTouch? oldAnimation,
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

class _StockDataLineItemValue {
  StockPainterItem? painterItem;
  final StockDataColorAnimation _animColor;
  final StockDataPositionAnimation _animPos;

  _StockDataLineItemValue()
      : _animColor = StockDataColorAnimation(),
        _animPos = StockDataPositionAnimation(),
        painterItem = null;

  Color get animColor => _animColor.current;

  Offset get animPosition => _animPos.current;

  Color get color => _animColor.color ?? Colors.transparent;

  Offset get position => _animPos.position ?? Offset.zero;

  bool get isInitialized => [
        _animColor,
        _animPos,
      ].any((element) => element.isInitialized);

  void initialize({
    required AnimationController controller,
    required Color color,
    required Offset initialPosition,
    required Offset position,
    StockPainterItem? painterItem,
    _StockDataLineItemValue? oldAnimation,
  }) {
    this.painterItem = painterItem;
    _animColor.setup(
      color: color,
      controller: controller,
      oldAnimation: oldAnimation?._animColor,
    );
    _animPos.setup(
      controller: controller,
      initialPosition: initialPosition,
      oldAnimation: oldAnimation?._animPos,
      position: position,
    );
  }
}
