part of '../profile_page.dart';

class _ProfileActionButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;

  const _ProfileActionButton({
    required this.title,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return AdaptiveButton(
      padding: EdgeInsets.symmetric(
        horizontal: AppDimensions.padding.defaultValue,
        vertical: 18.0,
      ),
      onPressed: onPressed,
      child: _buildContent(
        context,
      ),
    );
  }

  Widget _buildContent(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildTitle(context),
        const Icon(
          Icons.arrow_forward_ios,
          color: AppColors.navy,
          size: 12.0,
        ),
      ],
    );
  }

  Widget _buildTitle(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.headline6,
    );
  }
}
