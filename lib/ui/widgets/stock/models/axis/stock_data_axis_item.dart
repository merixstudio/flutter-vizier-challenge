part of 'stock_data_axis.dart';

class StockDataAxisItem {
  final String label;
  final double value;
  final _StockDataAxisGridItem _animGrid;
  final _StockDataAxisLabelItem _animLabel;

  StockDataAxisItem({
    required this.label,
    required this.value,
  })  : _animGrid = _StockDataAxisGridItem(),
        _animLabel = _StockDataAxisLabelItem();

  Color get currentGridColor => _animGrid.currentColor;

  Offset get currentGridEndPos => _animGrid.currentEndPos;

  StockPainterItem? get currentGridPainterItem => _animGrid.painterItem;

  Offset get currentGridStartPos => _animGrid.currentStartPos;

  StockPainterItem? get currentLabelPainterItem => _animLabel.painterItem;

  Offset get currentLabelPosition => _animLabel.currentPosition;

  TextStyle get currentLabelTextStyle => _animLabel.currentTextStyle;

  bool get isInitializedGrid => _animGrid.isInitialized;

  bool get isInitializedLabel => _animLabel.isInitialized;

  void initializeGrid({
    required AnimationController controller,
    required Color color,
    required Offset endPos,
    required Offset startPos,
    StockDataAxisItem? oldItem,
    StockPainterItem? painterItem,
  }) {
    _animGrid.initialize(
      color: color,
      controller: controller,
      endPos: endPos,
      oldAnimation: oldItem?._animGrid,
      painterItem: painterItem,
      startPos: startPos,
    );
  }

  void initializeLabel({
    required AnimationController controller,
    required Offset initialPosition,
    required TextStyle initialTextStyle,
    required Offset position,
    required TextStyle textStyle,
    StockDataAxisItem? oldItem,
    StockPainterItem? painterItem,
  }) {
    _animLabel.initialize(
      controller: controller,
      initialPosition: initialPosition,
      initialTextStyle: initialTextStyle,
      oldAnimation: oldItem?._animLabel,
      painterItem: painterItem,
      position: position,
      textStyle: textStyle,
    );
  }
}

class _StockDataAxisGridItem {
  StockPainterItem? painterItem;
  final StockDataColorAnimation _animColor;
  final StockDataPositionAnimation _animEndPos;
  final StockDataPositionAnimation _animStartPos;

  _StockDataAxisGridItem()
      : _animColor = StockDataColorAnimation(),
        _animEndPos = StockDataPositionAnimation(),
        _animStartPos = StockDataPositionAnimation();

  Color get currentColor => _animColor.current;

  Offset get currentEndPos => _animEndPos.current;

  Offset get currentStartPos => _animStartPos.current;

  bool get isInitialized => [
        _animColor,
        _animEndPos,
        _animStartPos,
      ].any((element) => element.isInitialized);

  void initialize({
    required AnimationController controller,
    required Color color,
    required Offset endPos,
    required Offset startPos,
    _StockDataAxisGridItem? oldAnimation,
    StockPainterItem? painterItem,
  }) {
    this.painterItem = painterItem;
    _animColor.setup(
      controller: controller,
      color: color,
      oldAnimation: oldAnimation?._animColor,
    );
    _animEndPos.setup(
      controller: controller,
      oldAnimation: oldAnimation?._animEndPos,
      position: endPos,
    );
    _animStartPos.setup(
      controller: controller,
      oldAnimation: oldAnimation?._animStartPos,
      position: startPos,
    );
  }
}

class _StockDataAxisLabelItem {
  StockPainterItem? painterItem;
  final StockDataPositionAnimation _animPos;
  final StockDataTextStyleAnimation _animTextStyle;

  _StockDataAxisLabelItem()
      : _animPos = StockDataPositionAnimation(),
        _animTextStyle = StockDataTextStyleAnimation(),
        painterItem = null;

  Offset get currentPosition => _animPos.current;

  TextStyle get currentTextStyle => _animTextStyle.current;

  bool get isInitialized => [
        _animPos,
        _animTextStyle,
      ].any((element) => element.isInitialized);

  void initialize({
    required AnimationController controller,
    required Offset initialPosition,
    required TextStyle initialTextStyle,
    required Offset position,
    required TextStyle textStyle,
    _StockDataAxisLabelItem? oldAnimation,
    StockPainterItem? painterItem,
  }) {
    this.painterItem = painterItem;
    _animPos.setup(
      controller: controller,
      initialPosition: initialPosition,
      oldAnimation: oldAnimation?._animPos,
      position: position,
    );
    _animTextStyle.setup(
      controller: controller,
      initialTextSyle: initialTextStyle,
      oldAnimation: oldAnimation?._animTextStyle,
      textStyle: textStyle,
    );
  }
}
