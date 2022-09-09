part of '../offer_details_page.dart';

class _OfferDetailsSummary extends StatelessWidget {
  final Widget left;
  final Widget right;

  const _OfferDetailsSummary({
    required this.left,
    required this.right,
  });

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: DecoratedBox(
        decoration: AppDecorations.defaultBorder(),
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Center(
                  child: left,
                ),
              ),
            ),
            Container(
              width: 1.0,
              color: AppColors.gray400,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Center(
                  child: right,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
