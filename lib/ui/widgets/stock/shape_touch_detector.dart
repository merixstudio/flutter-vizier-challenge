import 'package:flutter/widgets.dart';
import 'package:vizier/ui/widgets/stock/models/touchable_shape/touchable_shape.dart';

class ShapeTouchDetector<T> extends StatefulWidget {
  final Widget? child;
  final void Function(Offset touchPosition, T? data)? onTap;
  final List<TouchableShape<T>>? shapes;

  const ShapeTouchDetector({
    this.child,
    this.onTap,
    this.shapes,
    Key? key,
  }) : super(key: key);

  @override
  State<ShapeTouchDetector<T>> createState() => _ShapeTouchDetectorState<T>();
}

class _ShapeTouchDetectorState<T> extends State<ShapeTouchDetector<T>> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapUp: (TapUpDetails tapUpDetails) {
        if(widget.onTap == null) {
          return;
        }
        for(final TouchableShape<T> shape in widget.shapes ?? []) {
          if(shape.isHit(tapUpDetails.localPosition)) {
            widget.onTap?.call(tapUpDetails.localPosition, shape.data);
            return;
          }
        }
        widget.onTap?.call(tapUpDetails.localPosition, null);
      },
      child: widget.child,
    );
  }
}
