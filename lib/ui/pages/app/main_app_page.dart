import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:vizier/config/router/app_router.dart';
import 'package:vizier/config/styles/theme/app_theme.dart';

class MainAppPage extends StatefulWidget {
  final AppRouter appRouter;
  final bool isFirstTimeOpened;
  final bool isSessionActive;

  const MainAppPage({
    required this.appRouter,
    required this.isFirstTimeOpened,
    required this.isSessionActive,
    super.key,
  });

  @override
  _MainAppPageState createState() => _MainAppPageState();
}

class _MainAppPageState extends State<MainAppPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      localizationsDelegates: const [
        AppLocalizations.delegate,
      ],
      routerDelegate: widget.appRouter.delegate(
        initialRoutes: [
          _prepareInitialRoute(),
        ],
      ),
      routeInformationParser: widget.appRouter.defaultRouteParser(),
      theme: AppTheme.fromType(ThemeType.light).themeData,
    );
  }

  PageRouteInfo _prepareInitialRoute() {
    if (widget.isFirstTimeOpened) {
      return const OnboardingPageRoute();
    } else {
      if (widget.isSessionActive) {
        return const BottomNavigationPageRoute();
      }
      return const AuthenticationLoginPageRoute();
    }
  }
}
