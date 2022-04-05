import 'package:flutter/material.dart';
import 'package:vizier/config/styles/colors/app_colors.dart';
import 'package:vizier/data/models/user/user_model.dart';
import 'package:vizier/ui/widgets/adaptive/adaptive_button.dart';

class HomeAppBar extends SliverAppBar {
  HomeAppBar({
    required UserModel? userModel,
    required VoidCallback onAlertsPressed,
    required VoidCallback onProfilePressed,
  }) : super(
          actions: [
            _buildAlertsButton(
              onPressed: onAlertsPressed,
            ),
          ],
          leading: _buildProfileButton(
            avatar: userModel?.avatar,
            onPressed: onProfilePressed,
          ),
        );

  static Widget _buildAlertsButton({
    required VoidCallback onPressed,
  }) {
    return AspectRatio(
      aspectRatio: 1,
      child: AdaptiveButton(
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
        ),
        padding: EdgeInsets.zero,
        onPressed: onPressed,
        child: const Icon(
          //TODO (MT): Change icon
          Icons.notifications,
          color: AppColors.black,
        ),
      ),
    );
  }

  static Widget _buildProfileButton({
    required String? avatar,
    required VoidCallback onPressed,
  }) {
    return AspectRatio(
      aspectRatio: 1,
      child: AdaptiveButton(
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
        ),
        onPressed: onPressed,
        padding: EdgeInsets.zero,
        child: avatar != null
            ? CircleAvatar(
                backgroundColor: AppColors.white,
                backgroundImage: AssetImage(avatar),
                radius: 16.0,
              )
            : const SizedBox.shrink(),
      ),
    );
  }
}
