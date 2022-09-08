part of '../offer_details_page.dart';

class _OfferDetailsSliders extends StatelessWidget {
  final void Function(OfferSliderModel, double) onChanged;
  final List<OfferSliderModel> sliders;

  const _OfferDetailsSliders({
    required this.onChanged,
    required this.sliders,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecorations.defaultBorder(),
      padding: const EdgeInsets.all(24.0),
      child: Column(
        children: sliders
            .map(
              (element) => [
                _OfferDetailsSlider(
                  current: element.current,
                  divisions: element.maxValue ~/ element.frequency,
                  label: element.label,
                  onChanged: (value) => onChanged(element, value),
                  value: _buildValue(
                    context,
                    element.type,
                    (element.maxValue * element.current).toInt(),
                  ),
                ),
                SizedBox(
                  height: AppDimensions.padding.bigValue,
                )
              ],
            )
            .flattened
            .toList()
          ..removeLastIfNotEmpty(),
      ),
    );
  }

  String _buildValue(BuildContext context, OfferSliderType type, int value) {
    switch (type) {
      case OfferSliderType.month:
        return AppLoc.of(context)
            .offerDetailsPageSliderMonths(value.toString());
      case OfferSliderType.price:
        return CurrencyFormatterUtil.instance.format(
          value: value.toDouble(),
        );
      case OfferSliderType.year:
        return AppLoc.of(context).offerDetailsPageSliderYears(value.toString());
    }
  }
}
