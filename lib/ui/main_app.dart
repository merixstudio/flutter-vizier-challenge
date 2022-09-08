import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vizier/config/injector/di.dart';
import 'package:vizier/config/router/app_router.dart';
import 'package:vizier/cubits/authentication/authentication_cubit.dart';
import 'package:vizier/cubits/user/user_cubit.dart';
import 'package:vizier/cubits/wallet/wallet_cubit.dart';
import 'package:vizier/ui/app_coordinator.dart';
import 'package:vizier/ui/pages/app/main_app_page.dart';

class MainApp extends StatefulWidget {
  final bool isFirstTimeOpened;
  final bool isSessionActive;

  const MainApp({
    required this.isFirstTimeOpened,
    required this.isSessionActive,
    super.key,
  });

  @override
  _MainAppState createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => DI.resolve<AuthenticationCubit>()..checkAuth(),
        ),
        BlocProvider(
          create: (_) => DI.resolve<WalletCubit>(),
        ),
        BlocProvider(
          create: (_) {
            final UserCubit userCubit = DI.resolve<UserCubit>();
            if (widget.isSessionActive) {
              userCubit.fetchMe();
            }
            return userCubit;
          },
        ),
      ],
      child: BlocListener<AuthenticationCubit, AuthenticationState>(
        listenWhen: (_, state) => state.isLogged,
        listener: (context, state) => context.read<WalletCubit>().fetchData(),
        child: AppCoordinator(
          appRouter: DI.resolve<AppRouter>(),
          child: MainAppPage(
            appRouter: DI.resolve<AppRouter>(),
            isFirstTimeOpened: widget.isFirstTimeOpened,
            isSessionActive: widget.isSessionActive,
          ),
        ),
      ),
    );
  }
}
