part of '../home_my_wallet_content.dart';

class _HomeMyWalletFooterBanner extends StatelessWidget {
  final VoidCallback onPressed;

  const _HomeMyWalletFooterBanner({
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return AdaptiveButton(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        color: AppColors.primary100,
      ),
      onPressed: onPressed,
      padding: AppDimensions.padding.defaultHorizontal(),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: SvgPicture.asset(
              AppImages.svg.banerBoy,
              fit: BoxFit.cover,
            ),
          ),
          Positioned.fill(
            child: _buildBody(context),
          ),
        ],
      ),
    );
  }

  Widget _buildBody(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        _buildTitle(context),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: EdgeInsets.only(
              bottom: AppDimensions.padding.defaultValue,
            ),
            child: _buildArrow(),
          ),
        ),
      ],
    );
  }

  Widget _buildTitle(BuildContext context) {
    return Text(
      AppLoc.of(context).homeMyWalletFooterTitle,
      style: Theme.of(context).textTheme.headline6?.copyWith(
            color: AppColors.white,
          ),
    );
  }

  Widget _buildArrow() {
    return const Icon(
      Icons.arrow_forward,
      color: AppColors.white,
    );
  }
}
