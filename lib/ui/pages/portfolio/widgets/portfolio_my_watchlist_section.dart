part of '../portfolio_page.dart';

class _PortfolioMyWatchlistSection extends StatelessWidget {
  final List<CompanyAssetModel>? companyAssets;
  final void Function(CompanyAssetModel) onCompanyPressed;
  final VoidCallback onMorePressed;

  const _PortfolioMyWatchlistSection({
    required this.companyAssets,
    required this.onCompanyPressed,
    required this.onMorePressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionHeader(
          title: AppLoc.of(context).portfolioMyWatchlistSectionTitle,
          onMorePressed: onMorePressed,
        ),
        if (companyAssets?.isNotEmpty ?? false)
          Container(
            clipBehavior: Clip.antiAlias,
            decoration: AppDecorations.defaultBorder(),
            child: _buildCompanyAssetsList(),
          ),
      ],
    );
  }

  Widget _buildCompanyAssetsList() {
    return ListView.separated(
      itemBuilder: (context, index) {
        final CompanyAssetModel companyAsset = companyAssets![index];
        return PortfolioMyWatchlistCell(
          companyAsset: companyAsset,
          onPressed: onCompanyPressed,
        );
      },
      itemCount: companyAssets!.length,
      physics: const NeverScrollableScrollPhysics(),
      separatorBuilder: (_, __) => const Divider(),
      shrinkWrap: true,
    );
  }
}
