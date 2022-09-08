import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vizier/config/styles/colors/app_colors.dart';
import 'package:vizier/config/styles/images/app_images.dart';
import 'package:vizier/config/styles/text_styles/app_text_styles.dart';
import 'package:vizier/l10n/app_loc.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(
          AppImages.svg.moneyLogin,
        ),
        const SizedBox(
          height: 20.0,
        ),
        _buildTitle(context),
        const SizedBox(
          height: 16.0,
        ),
        _buildSubTitle(context),
      ],
    );
  }

  Widget _buildTitle(BuildContext context) {
    return Text(
      AppLoc.of(context).logInPageHeaderTitle,
      style: AppTextStyles.h2(),
    );
  }

  Widget _buildSubTitle(BuildContext context) {
    return Text(
      AppLoc.of(context).logInPageHeaderSubtitle,
      style: AppTextStyles.text2().copyWith(
        color: AppColors.gray200,
      ),
    );
  }
}
