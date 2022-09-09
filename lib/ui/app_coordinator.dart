import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vizier/config/router/app_router.dart';
import 'package:vizier/cubits/authentication/authentication_cubit.dart';
import 'package:vizier/cubits/user/user_cubit.dart';
import 'package:vizier/cubits/wallet/wallet_cubit.dart';

//This class should add listeners to global cubits if
//there is need to use Global context (eg. show page after push notification)
class AppCoordinator extends StatelessWidget {
  final AppRouter appRouter;
  final Widget child;

  const AppCoordinator({
    required this.appRouter,
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        _authenticationListener(),
      ],
      child: child,
    );
  }

  BlocListener _authenticationListener() {
    return BlocListener<AuthenticationCubit, AuthenticationState>(
      listener: (context, state) {
        state.maybeMap(
          authenticated: (_) => context.read<UserCubit>().fetchMe(),
          logout: (_) {
            context.read<WalletCubit>().logout();
            context.read<UserCubit>().logout();
            appRouter.pushAndPopUntil(
              const AuthenticationLoginPageRoute(),
              predicate: (_) => false,
            );
          },
          orElse: () => null,
        );
      },
    );
  }
}
