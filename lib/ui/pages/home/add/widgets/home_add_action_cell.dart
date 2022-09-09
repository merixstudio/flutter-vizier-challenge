part of '../home_add_content.dart';

class _HomeAddActionCell extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onPressed;

  const _HomeAddActionCell({
    required this.title,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return AdaptiveButton(
      onPressed: onPressed,
      padding: const EdgeInsets.symmetric(
        horizontal: 8.0,
        vertical: 12.0,
      ),
      child: Row(
        children: [
          _buildIcon(),
          const SizedBox(
            width: 12.0,
          ),
          _buildTitle(context),
        ],
      ),
    );
  }

  Widget _buildIcon() {
    return CircleAvatar(
      backgroundColor: AppColors.primary100.withOpacity(0.16),
      radius: 21.0,
      child: Icon(
        icon,
        color: AppColors.primary100,
      ),
    );
  }

  Widget _buildTitle(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.headline6,
    );
  }
}
