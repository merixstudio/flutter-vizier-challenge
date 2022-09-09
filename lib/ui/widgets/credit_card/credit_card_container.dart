part of 'animated_credit_card.dart';

class _CreditCardContainer extends StatelessWidget {
  final Widget child;

  const _CreditCardContainer({
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.75,
      child: DecoratedBox(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(12.0)),
          color: AppColors.primary100,
        ),
        child: child,
      ),
    );
  }
}
