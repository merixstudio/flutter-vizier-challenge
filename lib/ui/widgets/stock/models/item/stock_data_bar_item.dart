part of 'stock_data_item.dart';

class StockDataBarItem extends StockDataItem {
  final Color color;
  final String tooltip;
  final double value;
  final double x;
  final _StockDataBarItemTouch _animTouch;
  final _StockDataBarItemValue _animValue;

  StockDataBarItem({
    required this.color,
    required this.tooltip,
    required this.value,
    required this.x,
  })  : _animTouch = _StockDataBarItemTouch(),
        _animValue = _StockDataBarItemValue();

  Offset get currentTouchPosition => _animTouch.animPosition;

  StockPainterItem? get currentTouchPainterItem => _animTouch.painterItem;

  Rect get currentTouchRect => _animTouch.animRect;

  Size get currentTouchSize => _animTouch.animSize;

  Color get currentValueColor => _animValue.animColor;

  Offset get currentValuePosition => _animValue.animPosition;

  StockPainterItem? get currentValuePainterItem => _animValue.painterItem;

  Rect get currentValueRect => _animValue.animRect;

  Size get currentValueSize => _animValue.animSize;

  bool get isInitializedValue => _animValue.isInitialized;

  bool get isInitializedTouch => _animTouch.isInitialized;

  Offset get valuePosition => _animValue.position;

  Size get valueSize => _animValue.size;

  void initializeTouch({
    required AnimationController controller,
    required Offset initialPosition,
    required Offset position,
    required Size size,
    StockDataBarItem? oldItem,
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
    required Color color,
    required AnimationController controller,
    required Offset initialPosition,
    required Offset position,
    required Size size,
    StockDataBarItem? oldItem,
    StockPainterItem? painterItem,
  }) {
    _animValue.initialize(
      color: color,
      controller: controller,
      initialPosition: initialPosition,
      oldAnimation: oldItem?._animValue,
      position: position,
      painterItem: painterItem,
      size: size,
    );
  }
}

class _StockDataBarItemTouch {
  StockPainterItem? painterItem;
  final StockDataPositionAnimation _animPos;
  final StockDataSizeAnimation _animSize;

  _StockDataBarItemTouch()
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
    _StockDataBarItemTouch? oldAnimation,
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

class _StockDataBarItemValue {
  StockPainterItem? painterItem;
  final StockDataColorAnimation _animColor;
  final StockDataPositionAnimation _animPos;
  final StockDataSizeAnimation _animSize;

  _StockDataBarItemValue()
      : _animColor = StockDataColorAnimation(),
        _animPos = StockDataPositionAnimation(),
        _animSize = StockDataSizeAnimation(),
        painterItem = null;

  Color get animColor => _animColor.current;

  Offset get animPosition => _animPos.current;

  Rect get animRect => animPosition & animSize;

  Size get animSize => _animSize.current;

  Color get color => _animColor.color ?? Colors.transparent;

  bool get isInitialized => [
        _animColor,
        _animPos,
        _animSize,
      ].any((element) => element.isInitialized);

  Offset get position => _animPos.position ?? Offset.zero;

  Size get size => _animSize.size ?? Size.zero;

  void initialize({
    required Color color,
    required AnimationController controller,
    required Offset initialPosition,
    required Offset position,
    required Size size,
    _StockDataBarItemValue? oldAnimation,
    StockPainterItem? painterItem,
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
    _animSize.setup(
      controller: controller,
      oldAnimation: oldAnimation?._animSize,
      size: size,
    );
  }
}
