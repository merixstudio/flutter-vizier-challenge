part of '../profile_page.dart';

class _ProfileHeader extends StatelessWidget {
  final UserModel? user;

  const _ProfileHeader({
    required this.user,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (user != null) ...[
          _buildAvatar(
            avatar: user!.avatar,
          ),
          const SizedBox(
            height: 12.0,
          ),
          _buildFullName(
            context,
            fullName: user!.fullName,
          ),
          _buildEmail(
            context,
            email: user!.email,
          ),
        ]
      ],
    );
  }

  Widget _buildAvatar({
    required String avatar,
  }) {
    return CircleAvatar(
      backgroundColor: AppColors.white,
      backgroundImage: AssetImage(avatar),
      radius: 40.0,
    );
  }

  Widget _buildFullName(
    BuildContext context, {
    required String fullName,
  }) {
    return Text(
      fullName,
      style: Theme.of(context).textTheme.headline5,
      textAlign: TextAlign.center,
    );
  }

  Widget _buildEmail(
    BuildContext context, {
    required String email,
  }) {
    return Text(
      email,
      style: Theme.of(context).textTheme.bodyText2?.copyWith(
            color: AppColors.navy.withOpacity(0.5),
          ),
      textAlign: TextAlign.center,
    );
  }
}
