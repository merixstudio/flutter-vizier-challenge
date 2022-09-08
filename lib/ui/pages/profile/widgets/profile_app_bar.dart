part of '../profile_page.dart';

class _ProfileAppBar extends AdaptiveAppBar {
  _ProfileAppBar(
    super.context, {
    required VoidCallback onLogoutPressed,
  }) : super(
          actions: [
            _buildLogoutButton(
              context,
              onPressed: onLogoutPressed,
            )
          ],
          centerTitle: false,
          title: Text(
            AppLoc.of(context).profilePageTitle,
          ),
        );

  static Widget _buildLogoutButton(
    BuildContext context, {
    required VoidCallback onPressed,
  }) {
    return AdaptiveButton(
      onPressed: onPressed,
      child: Text(
        AppLoc.of(context).profilePageLogoutButton,
        style: Theme.of(context).textTheme.headline6?.copyWith(
              color: AppColors.primary100,
            ),
      ),
    );
  }
}
