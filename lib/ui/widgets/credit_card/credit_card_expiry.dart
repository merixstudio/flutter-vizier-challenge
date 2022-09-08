part of 'animated_credit_card.dart';

class _CreditCardExpiry extends StatelessWidget {
  final String expiry;

  const _CreditCardExpiry({
    required this.expiry,
  });

  @override
  Widget build(BuildContext context) {
    final String mask = expiry.mask('**/**');
    return Row(
      children: List.generate(
        mask.length,
        (index) => _buildLetter(mask[index]),
      ),
    );
  }

  Widget _buildLetter(String text) {
    return SizedBox(
      width: 10.0,
      child: AnimatedText(
        text: text,
        style: AppTextStyles.caption2().copyWith(
          color: AppColors.white,
        ),
      ),
    );
  }
}
