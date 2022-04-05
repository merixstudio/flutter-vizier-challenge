part of 'stock_data_item.dart';

class StockDataPieItem extends StockDataItem {
  final Color color;
  final String name;
  final double amount;
  final String tooltipAmount;
  final _StockDataPieItemValue _animValue;

  Color get currentValueColor => _animValue.animColor;

  StockPainterItem? get currentValuePainterItem => _animValue.painterItem;

  double get currentValueStart => _animValue.animStart;

  double get currentValueSweep => _animValue.animSweep;

  bool get isInitializedValue => _animValue.isInitialized;

  StockDataPieItem({
    required this.color,
    required this.name,
    required this.amount,
    required this.tooltipAmount,
  }) : _animValue = _StockDataPieItemValue();

  void initializeValue({
    required AnimationController controller,
    required Color color,
    required double startAngle,
    required double initialStartAngle,
    required double sweepAngle,
    required double initialSweepAngle,
    StockDataPieItem? oldAnimation,
    StockPainterItem? painterItem,
  }) {
    _animValue.initialize(
      color: color,
      controller: controller,
      initialStartAngle: initialStartAngle,
      initialSweepAngle: initialSweepAngle,
      oldAnimation: oldAnimation?._animValue,
      painterItem: painterItem,
      startAngle: startAngle,
      sweepAngle: sweepAngle,
    );
  }
}

class _StockDataPieItemValue {
  StockPainterItem? painterItem;
  final StockDataColorAnimation _animColor;
  final StockDataDoubleAnimation _animStart;
  final StockDataDoubleAnimation _animSweep;

  _StockDataPieItemValue()
      : _animColor = StockDataColorAnimation(),
        _animStart = StockDataDoubleAnimation(),
        _animSweep = StockDataDoubleAnimation(),
        painterItem = null;

  Color get animColor => _animColor.current;

  double get animStart => _animStart.current;

  double get animSweep => _animSweep.current;

  Color get color => _animColor.color ?? Colors.transparent;

  double get start => _animStart.value ?? 0.0;

  double get sweep => _animSweep.value ?? 0.0;

  bool get isInitialized => [
        _animColor,
        _animStart,
        _animSweep,
      ].any((element) => element.isInitialized);

  void initialize({
    required AnimationController controller,
    required Color color,
    required double startAngle,
    required double initialStartAngle,
    required double sweepAngle,
    required double initialSweepAngle,
    _StockDataPieItemValue? oldAnimation,
    StockPainterItem? painterItem,
  }) {
    this.painterItem = painterItem;
    _animColor.setup(
      color: color,
      controller: controller,
      oldAnimation: oldAnimation?._animColor,
    );
    _animStart.setup(
      controller: controller,
      initialValue: initialStartAngle,
      oldAnimation: oldAnimation?._animStart,
      value: startAngle,
    );
    _animSweep.setup(
      controller: controller,
      initialValue: initialSweepAngle,
      oldAnimation: oldAnimation?._animSweep,
      value: sweepAngle,
    );
  }
}
