import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vizier/config/constants/app_constants.dart';
import 'package:vizier/config/injector/di.dart';
import 'package:vizier/config/styles/colors/app_colors.dart';
import 'package:vizier/config/styles/decorations/app_decorations.dart';
import 'package:vizier/config/styles/dimensions/app_dimensions.dart';
import 'package:vizier/config/styles/text_styles/app_text_styles.dart';
import 'package:vizier/l10n/app_loc.dart';
import 'package:vizier/ui/pages/authentication/login/authentication_login_page.dart';
import 'package:vizier/ui/pages/onboarding/cubit/onboarding_cubit.dart';
import 'package:vizier/ui/pages/onboarding/onboarding_item.dart';
import 'package:vizier/ui/pages/onboarding/widgets/onboarding_item_content.dart';
import 'package:vizier/ui/widgets/adaptive/adaptive_app_bar.dart';
import 'package:vizier/ui/widgets/adaptive/adaptive_button.dart';

class OnboardingPage extends StatefulWidget {
  static const String route = 'onboarding';

  const OnboardingPage({super.key});

  @override
  State<StatefulWidget> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final PageController controller = PageController();
  bool isSaved = false;

  final OnboardingCubit _onboardingCubit = DI.resolve<OnboardingCubit>();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnboardingCubit, OnboardingState>(
      bloc: _onboardingCubit,
      builder: (context, state) {
        if (!isSaved) {
          isSaved = true;
          _onboardingCubit.saveFirstTimeOpened(
            isOpened: false,
          );
        }
        return Scaffold(
          appBar: AdaptiveAppBar(
            context,
            actions: [
              AnimatedSwitcher(
                duration: AppConstants.animation.defaultDuration,
                child: state.isLastPage
                    ? const SizedBox.shrink()
                    : _buildSkipButton(),
              ),
            ],
          ),
          body: SafeArea(
            child: _buildContent(
              state.currentPage,
              isLastPage: state.isLastPage,
            ),
          ),
        );
      },
    );
  }

  Widget _buildSkipButton() {
    return AdaptiveButton(
      onPressed: () =>
          context.router.replaceNamed(AuthenticationLoginPage.route),
      child: Text(
        AppLoc.of(context).oboardingSkipButton,
        style: Theme.of(context).textTheme.headline6?.copyWith(
              color: AppColors.primary100,
            ),
      ),
    );
  }

  Widget _buildContent(
    int currentPage, {
    required bool isLastPage,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 8,
          child: _buildPageView(),
        ),
        const Spacer(
          flex: 2,
        ),
        _buildPageControl(
          currentPage: currentPage,
        ),
        const Spacer(),
        Padding(
          padding: AppDimensions.padding.defaultHorizontal(),
          child: AnimatedOpacity(
            duration: AppConstants.animation.defaultDuration,
            opacity: isLastPage ? 1.0 : 0.0,
            child: IgnorePointer(
              ignoring: !isLastPage,
              child: _buildBeginButton(),
            ),
          ),
        ),
        SizedBox(
          height: AppDimensions.padding.defaultValue,
        ),
      ],
    );
  }

  Widget _buildPageView() {
    return PageView.builder(
      controller: controller,
      itemCount: OnboardingItem.values.length,
      itemBuilder: (context, index) {
        final OnboardingItem currentItem = OnboardingItem.values[index];
        return Padding(
          padding: AppDimensions.padding.defaultHorizontal(),
          child: OnboardingItemContent(
            pageIndex: index,
            title: currentItem.title(context),
            description: currentItem.description(context),
            imageAsset: currentItem.image(context),
          ),
        );
      },
      onPageChanged: (current) => _onboardingCubit.changePage(current),
    );
  }

  Widget _buildPageControl({
    required int currentPage,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: OnboardingItem.values
          .map(
            (e) => Padding(
              padding: EdgeInsets.only(
                right: e.index == OnboardingItem.values.last.index ? 0.0 : 10.0,
              ),
              child: _buildPageControlDot(currentPage, e.index),
            ),
          )
          .toList(),
    );
  }

  Widget _buildPageControlDot(int pageIndex, int dotIndex) {
    return Container(
      width: 6.0,
      height: 6.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: pageIndex == dotIndex ? AppColors.primary100 : AppColors.gray500,
      ),
    );
  }

  Widget _buildBeginButton() {
    return AdaptiveButton(
      decoration: AppDecorations.button.primary(),
      onPressed: () =>
          context.router.replaceNamed(AuthenticationLoginPage.route),
      child: Text(
        AppLoc.of(context).oboardingBeginButton,
        style: AppTextStyles.button.primary(),
      ),
    );
  }
}
