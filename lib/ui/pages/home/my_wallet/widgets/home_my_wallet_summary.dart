part of '../home_my_wallet_content.dart';

class _HomeMyWalletSummary extends StatelessWidget {
  final bool isLoading;
  final double? walletBalance;
  final List<AccountModel>? accounts;
  final Function(AccountModel account) onAccountPressed;
  final VoidCallback onConnectPressed;
  final VoidCallback? onMorePressed;

  const _HomeMyWalletSummary({
    required this.isLoading,
    required this.walletBalance,
    required this.accounts,
    required this.onAccountPressed,
    required this.onConnectPressed,
    required this.onMorePressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecorations.navyBox(),
      padding: EdgeInsets.only(
        top: AppDimensions.padding.defaultValue,
        bottom: AppDimensions.padding.bigValue,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: AppDimensions.padding.defaultHorizontal(),
            child: isLoading ? _buildLoading() : _buildHeader(context),
          ),
          SizedBox(
            height: AppDimensions.padding.defaultValue,
          ),
          Divider(
            color: AppColors.white.withOpacity(0.16),
          ),
          AnimatedExpand(
            expand: accounts?.isNotEmpty ?? false,
            child: _buildAccountsList(
              context,
              accounts: accounts ?? [],
            ),
          ),
          SizedBox(
            height: AppDimensions.padding.smallValue,
          ),
          Padding(
            padding: AppDimensions.padding.defaultHorizontal(),
            child: _buildConnectButton(context),
          ),
        ],
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                walletBalance != null
                    ? CurrencyFormatterUtil.instance.format(
                        value: walletBalance!,
                      )
                    : '',
                style: Theme.of(context).textTheme.headline1?.copyWith(
                      color: AppColors.white,
                    ),
              ),
              Text(
                AppLoc.of(context).homeMyWalletSummaryBalanceInfo,
                style: AppTextStyles.caption2().copyWith(
                  color: AppColors.white.withOpacity(0.6),
                ),
              )
            ],
          ),
        ),
        if (onMorePressed != null) _buildMoreButton()
      ],
    );
  }

  Widget _buildMoreButton() {
    return AdaptiveButton(
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
      ),
      onPressed: onMorePressed,
      padding: EdgeInsets.all(AppDimensions.padding.smallValue),
      child: const Icon(
        Icons.more_horiz,
        color: AppColors.white,
      ),
    );
  }

  Widget _buildLoading() {
    return const Center(
      child: CircularProgressIndicator(
        color: AppColors.white,
      ),
    );
  }

  Widget _buildAccountsList(
    BuildContext context, {
    required List<AccountModel> accounts,
  }) {
    return ListView.separated(
      itemBuilder: (context, index) {
        final AccountModel account = accounts[index];
        return AccountSummaryCell.fromAccountModel(
          account,
          onPressed: () => onAccountPressed(account),
        );
      },
      itemCount: accounts.length,
      padding: EdgeInsets.symmetric(
        vertical: AppDimensions.padding.smallValue,
      ),
      physics: const NeverScrollableScrollPhysics(),
      separatorBuilder: (_, __) => SizedBox(
        height: AppDimensions.padding.smallValue,
      ),
      shrinkWrap: true,
    );
  }

  Widget _buildConnectButton(BuildContext context) {
    return AdaptiveButton(
      decoration: AppDecorations.button.primary(),
      onPressed: onConnectPressed,
      child: Text(
        AppLoc.of(context).homeMyWalletSummaryConnectAccountButton,
        style: AppTextStyles.button.primary(),
      ),
    );
  }
}
