part of 'animated_credit_card.dart';

class _CreditCardCvv extends StatelessWidget {
  final String cvv;

  const _CreditCardCvv({
    required this.cvv,
  });

  @override
  Widget build(BuildContext context) {
    final String mask = cvv.mask('***');
    return Row(
      children: List.generate(
        mask.length,
        (index) => _buildLetter(mask[index]),
      ),
    );
  }

  Widget _buildLetter(String text) {
    return SizedBox(
      width: 16.0,
      child: AnimatedText(
        text: text,
        style: AppTextStyles.caption1Bold().copyWith(
          color: AppColors.white,
        ),
      ),
    );
  }
}
