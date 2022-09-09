part of '../offer_details_page.dart';

class _OfferDetailsSlider extends StatelessWidget {
  final double current;
  final int divisions;
  final String label;
  final void Function(double) onChanged;
  final String value;

  const _OfferDetailsSlider({
    required this.current,
    required this.divisions,
    required this.label,
    required this.onChanged,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Text(
                label,
                style: AppTextStyles.h6(),
              ),
            ),
            Text(
              value,
              style: AppTextStyles.h6().copyWith(
                color: AppColors.primary100,
              ),
            ),
          ],
        ),
        SizedBox(
          height: AppDimensions.padding.defaultValue,
        ),
        _buildSlider(context),
      ],
    );
  }

  Widget _buildSlider(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        sliderTheme: Theme.of(context).sliderTheme.copyWith(
              thumbShape: _CustomThumbShape(),
              trackShape: _CustomTrackShape(),
            ),
      ),
      child: Slider(
        divisions: 100,
        activeColor: AppColors.primary100,
        inactiveColor: AppColors.gray400,
        value: current,
        onChanged: onChanged,
      ),
    );
  }
}

class _CustomThumbShape extends SliderComponentShape {
  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) =>
      const Size.fromRadius(14.0);

  @override
  void paint(
    PaintingContext context,
    Offset center, {
    required Animation<double> activationAnimation,
    required Animation<double> enableAnimation,
    required bool isDiscrete,
    required TextPainter labelPainter,
    required RenderBox parentBox,
    required SliderThemeData sliderTheme,
    required TextDirection textDirection,
    required double value,
    required double textScaleFactor,
    required Size sizeWithOverflow,
  }) {
    final Path path = Path()
      ..addOval(
        Rect.fromCircle(
          center: center,
          radius: 14.0,
        ),
      );
    context.canvas
      ..drawShadow(path, AppColors.black.withOpacity(0.4), 6, true)
      ..drawCircle(
        center,
        14.0,
        Paint()..color = AppColors.white,
      )
      ..drawCircle(
        center,
        10.0,
        Paint()..color = AppColors.primary100,
      );
  }
}

class _CustomTrackShape extends RoundedRectSliderTrackShape {
  @override
  Rect getPreferredRect({
    required RenderBox parentBox,
    required SliderThemeData sliderTheme,
    Offset offset = Offset.zero,
    bool isEnabled = false,
    bool isDiscrete = false,
  }) {
    final double trackHeight = sliderTheme.trackHeight ?? 0.0;
    final double trackLeft = offset.dx;
    final double trackTop =
        offset.dy + (parentBox.size.height - trackHeight).half;
    final double trackWidth = parentBox.size.width;
    return Rect.fromLTWH(trackLeft, trackTop, trackWidth, trackHeight);
  }
}
