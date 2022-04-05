part of 'stock_painter.dart';

class _StockGridPainter {
  const _StockGridPainter._();

  static void draw({
    required Canvas canvas,
    required AnimationController controller,
    required StockData data,
    required StockPainterItem painterItem,
    required StockDataAxis x,
    required StockDataAxis y,
    StockDataAxis? oldX,
    StockDataAxis? oldY,
  }) {
    final painter = Paint()..color;
    for (int i = 0; i < x.items.length; i++) {
      final StockDataAxisItem axisXItem = x.items[i];
      final StockDataAxisItem? oldAxisXItem = (oldX?.items)?.getOrNull(i);
      _calculateX(
        axis: x,
        axisItem: axisXItem,
        controller: controller,
        index: i,
        oldAxisItem: oldAxisXItem,
        painterItem: painterItem,
      );
      canvas.drawLine(
        axisXItem.currentGridStartPos,
        axisXItem.currentGridEndPos,
        painter..color = axisXItem.currentGridColor,
      );
    }
    for (int i = 0; i < y.items.length; i++) {
      final StockDataAxisItem axisYItem = y.items[i];
      final StockDataAxisItem? oldAxisYItem = (oldY?.items)?.getOrNull(i);
      _calculateY(
        axis: y,
        axisItem: axisYItem,
        controller: controller,
        index: i,
        oldAxisItem: oldAxisYItem,
        painterItem: painterItem,
      );
      canvas.drawLine(
        axisYItem.currentGridStartPos,
        axisYItem.currentGridEndPos,
        painter..color = axisYItem.currentGridColor,
      );
    }
  }

  static void _calculateX({
    required StockDataAxis axis,
    required StockDataAxisItem axisItem,
    required AnimationController controller,
    required int index,
    required StockPainterItem painterItem,
    StockDataAxisItem? oldAxisItem,
  }) {
    if (axisItem.isInitializedGrid && oldAxisItem?.currentGridPainterItem == painterItem) {
      return;
    }
    final double x = painterItem.size.width * axis.calcValue(index);
    final Offset start = Offset(
      painterItem.position.dx + x,
      painterItem.position.dy,
    );
    final Offset end = Offset(
      start.dx,
      painterItem.position.dy + painterItem.size.height,
    );
    axisItem.initializeGrid(
      color: Colors.grey,
      controller: controller,
      startPos: start,
      endPos: end,
      oldItem: oldAxisItem,
      painterItem: painterItem,
    );
  }

  static void _calculateY({
    required StockDataAxis axis,
    required StockDataAxisItem axisItem,
    required AnimationController controller,
    required int index,
    required StockPainterItem painterItem,
    StockDataAxisItem? oldAxisItem,
  }) {
    if (axisItem.isInitializedGrid && oldAxisItem?.currentGridPainterItem == painterItem) {
      return;
    }
    final double y = painterItem.size.height * axis.calcValue(index);
    final Offset start = Offset(
      painterItem.position.dx,
      painterItem.position.dy + y,
    );
    final Offset end = Offset(
      painterItem.position.dx + painterItem.size.width,
      start.dy,
    );
    axisItem.initializeGrid(
      color: Colors.grey,
      controller: controller,
      startPos: start,
      endPos: end,
      painterItem: painterItem,
      oldItem: oldAxisItem,
    );
  }
}
