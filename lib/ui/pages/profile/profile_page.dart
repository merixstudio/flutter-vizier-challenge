import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vizier/config/constants/app_constants.dart';
import 'package:vizier/config/injector/di.dart';
import 'package:vizier/config/styles/colors/app_colors.dart';
import 'package:vizier/config/styles/decorations/app_decorations.dart';
import 'package:vizier/config/styles/dimensions/app_dimensions.dart';
import 'package:vizier/cubits/authentication/authentication_cubit.dart';
import 'package:vizier/cubits/user/notifications/user_notifications_cubit.dart';
import 'package:vizier/cubits/user/user_cubit.dart';
import 'package:vizier/data/models/user/user_model.dart';
import 'package:vizier/l10n/app_loc.dart';
import 'package:vizier/ui/modals/alert_dialog/adaptive_alert_dialog_factory.dart';
import 'package:vizier/ui/widgets/adaptive/adaptive_app_bar.dart';
import 'package:vizier/ui/widgets/adaptive/adaptive_button.dart';

part 'widgets/profile_action_button.dart';
part 'widgets/profile_app_bar.dart';
part 'widgets/profile_header.dart';
part 'widgets/profile_switch_button.dart';

class ProfilePage extends StatelessWidget implements AutoRouteWrapper {
  static const String route = 'profile-page';

  const ProfilePage({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => DI.resolve<UserNotificationsCubit>()..fetchData(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _ProfileAppBar(
        context,
        onLogoutPressed: () => context.read<AuthenticationCubit>().logout(),
      ),
      body: Padding(
        padding: AppDimensions.padding.defaultHorizontal(),
        child: _buildBody(context),
      ),
    );
  }

  Widget _buildBody(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(
          height: AppDimensions.padding.biggerValue,
        ),
        _ProfileHeader(
          user: context.watch<UserCubit>().state.user,
        ),
        SizedBox(
          height: AppDimensions.padding.bigValue,
        ),
        Container(
          clipBehavior: Clip.antiAlias,
          decoration: AppDecorations.defaultBorder(),
          child: _buildFirstActions(context),
        ),
        SizedBox(
          height: AppDimensions.padding.defaultValue,
        ),
        Container(
          clipBehavior: Clip.antiAlias,
          decoration: AppDecorations.defaultBorder(),
          child: _buildSecondActions(context),
        ),
      ],
    );
  }

  Widget _buildFirstActions(BuildContext context) {
    return _ProfileActionButton(
      title: AppLoc.of(context).profilePageMyAccountButton,
      onPressed: () =>
          AdaptiveAlertDialogFactory.showContentUnavailable(context),
    );
  }

  Widget _buildSecondActions(BuildContext context) {
    return Column(
      children: [
        _buildNotificationsCell(context),
        _ProfileActionButton(
          title: AppLoc.of(context).profilePageAboutUsButton,
          onPressed: () =>
              AdaptiveAlertDialogFactory.showContentUnavailable(context),
        ),
        const Divider(),
        _ProfileActionButton(
          title: AppLoc.of(context).profilePageTermsButton,
          onPressed: () =>
              AdaptiveAlertDialogFactory.showContentUnavailable(context),
        ),
      ],
    );
  }

  Widget _buildNotificationsCell(BuildContext context) {
    return BlocConsumer<UserNotificationsCubit, UserNotificationsState>(
      listener: (context, state) => state.mapOrNull(
        failure: (state) => AdaptiveAlertDialogFactory.showError(
          context,
          appError: state.appError,
        ),
      ),
      builder: (context, state) => Column(
        children: [
          _ProfileSwitchButton(
            isLoading: state.isLoading,
            title: AppLoc.of(context).profilePageNotificationstButton,
            value: state.areNotificationsEnabled,
            onChanged: (value) => context.read<UserNotificationsCubit>().update(
                  areNotificationsEnabled: value,
                ),
          ),
          const Divider(),
        ],
      ),
    );
  }
}
