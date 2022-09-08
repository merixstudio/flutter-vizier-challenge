import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vizier/config/constants/app_constants.dart';
import 'package:vizier/config/injector/di.dart';
import 'package:vizier/config/styles/dimensions/app_dimensions.dart';
import 'package:vizier/cubits/goals/goals_cubit.dart';
import 'package:vizier/cubits/retirement_plan/retirement_plan_cubit.dart';
import 'package:vizier/cubits/user/user_cubit.dart';
import 'package:vizier/ui/modals/alert_dialog/adaptive_alert_dialog_factory.dart';
import 'package:vizier/ui/pages/home/home_tab_item.dart';
import 'package:vizier/ui/pages/home/widgets/home_app_bar.dart';
import 'package:vizier/ui/pages/home/widgets/home_tab_bar.dart';
import 'package:vizier/ui/pages/profile/profile_page.dart';

class HomePage extends StatefulWidget {
  static const String route = 'home-page';

  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late final TabController tabController = TabController(
    initialIndex: HomeTabItem.myWallet.index,
    length: HomeTabItem.values.length,
    vsync: this,
  );
  late final PageController pageController = PageController();

  @override
  void dispose() {
    tabController.dispose();
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            HomeAppBar(
              userModel: context.watch<UserCubit>().state.user,
              onAlertsPressed: () =>
                  AdaptiveAlertDialogFactory.showContentUnavailable(context),
              onProfilePressed: () =>
                  context.router.pushNamed(ProfilePage.route),
            ),
          ],
          body: _buildBody(),
        ),
      ),
    );
  }

  Widget _buildBody() {
    final HomeTabItem selectedItem = HomeTabItem.values[tabController.index];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: EdgeInsets.all(AppDimensions.padding.defaultValue),
          child: HomeTabBar(
            onSelectedTabItemChanged: (tabItem) => setState(() {
              pageController.animateToPage(
                tabItem.index,
                duration: AppConstants.animation.defaultDuration,
                curve: Curves.decelerate,
              );
            }),
            selectedItem: selectedItem,
            tabController: tabController,
          ),
        ),
        MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (_) => DI.resolve<GoalsCubit>()..fetchData(),
            ),
            BlocProvider(
              create: (_) => DI.resolve<RetirementPlanCubit>(),
            ),
          ],
          child: Flexible(
            child: PageView.builder(
              controller: pageController,
              itemBuilder: (context, index) =>
                  HomeTabItem.values[index].content(context),
              itemCount: HomeTabItem.values.length,
              onPageChanged: (index) => setState(() {
                tabController.index = index;
              }),
            ),
          ),
        ),
      ],
    );
  }
}
