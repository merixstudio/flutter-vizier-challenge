part of '../offers_page.dart';

class _OfferCell extends StatelessWidget {
  final String title;
  final String content;
  final String assetImage;
  final VoidCallback onPressed;

  const _OfferCell({
    required this.title,
    required this.content,
    required this.assetImage,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return AdaptiveButton(
      decoration: AppDecorations.primaryBox(),
      padding: EdgeInsets.zero,
      onPressed: onPressed,
      child: Stack(
        children: [
          Positioned.fill(
            child: Align(
              alignment: Alignment.bottomRight,
              child: Hero(
                tag: assetImage,
                child: SvgPicture.asset(
                  assetImage,
                ),
              ),
            ),
          ),
          _buildBody(),
        ],
      ),
    );
  }

  Widget _buildBody() {
    return Padding(
      padding: EdgeInsets.all(AppDimensions.padding.defaultValue),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            title,
            style: AppTextStyles.caption2().copyWith(
              color: AppColors.white,
            ),
          ),
          const SizedBox(
            height: 2.0,
          ),
          Hero(
            tag: content,
            child: DefaultTextStyle(
              style: AppTextStyles.h4().copyWith(
                color: AppColors.white,
              ),
              child: Text(
                content,
              ),
            ),
          ),
          const SizedBox(
            height: 5.0,
          ),
          const Align(
            alignment: Alignment.bottomRight,
            child: Icon(
              Icons.arrow_forward,
              color: AppColors.white,
              size: 24.0,
            ),
          ),
        ],
      ),
    );
  }
}
