import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vizier/config/styles/colors/app_colors.dart';
import 'package:vizier/config/styles/dimensions/app_dimensions.dart';

class OnboardingItemContent extends StatelessWidget {
  final int pageIndex;
  final String title;
  final String description;
  final String imageAsset;

  const OnboardingItemContent({
    required this.pageIndex,
    required this.title,
    required this.description,
    required this.imageAsset,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        _buildTitle(context),
        SizedBox(
          height: AppDimensions.padding.defaultValue,
        ),
        _buildDescription(context),
        const Spacer(),
        SvgPicture.asset(imageAsset),
      ],
    );
  }

  Widget _buildTitle(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.headline2,
      textAlign: TextAlign.center,
    );
  }

  Widget _buildDescription(BuildContext context) {
    return Text(
      description,
      style: Theme.of(context).textTheme.bodyText2?.copyWith(
            color: AppColors.gray200,
          ),
      textAlign: TextAlign.center,
    );
  }
}
