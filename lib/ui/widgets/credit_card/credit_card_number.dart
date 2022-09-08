part of 'animated_credit_card.dart';

class _CreditCardNumber extends StatelessWidget {
  final String number;

  const _CreditCardNumber({
    required this.number,
  });

  @override
  Widget build(BuildContext context) {
    final String mask = number.mask('**** **** **** ****');
    return Row(
      children: List.generate(
        mask.length,
        (index) => Expanded(
          child: FittedBox(
            child: _buildLetter(mask[index]),
          ),
        ),
      ),
    );
  }

  Widget _buildLetter(String text) {
    return AnimatedText(
      text: text,
      style: AppTextStyles.h3().copyWith(
        color: AppColors.white,
        fontWeight: FontWeight.w500,
        fontFeatures: [
          const FontFeature.tabularFigures(),
        ],
        shadows: [
          Shadow(
            color: AppColors.black.withOpacity(0.2),
            offset: const Offset(0.0, 2.0),
          ),
        ],
      ),
    );
  }
}
