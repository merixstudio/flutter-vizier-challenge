import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vizier/config/injector/di.dart';
import 'package:vizier/config/styles/colors/app_colors.dart';
import 'package:vizier/config/styles/decorations/app_decorations.dart';
import 'package:vizier/config/styles/dimensions/app_dimensions.dart';
import 'package:vizier/config/styles/text_styles/app_text_styles.dart';
import 'package:vizier/cubits/authentication/authentication_cubit.dart';
import 'package:vizier/cubits/authentication/login/authentication_login_cubit.dart';
import 'package:vizier/data/requests/authentication/authentication_request.dart';
import 'package:vizier/l10n/app_loc.dart';
import 'package:vizier/ui/modals/alert_dialog/adaptive_alert_dialog_factory.dart';
import 'package:vizier/ui/pages/authentication/login/widgets/login_header.dart';
import 'package:vizier/ui/pages/bottom_navigation/bottom_navigation_page.dart';
import 'package:vizier/ui/widgets/adaptive/adaptive_button.dart';
import 'package:vizier/ui/widgets/adaptive/adaptive_loading_button.dart';
import 'package:vizier/ui/widgets/adaptive/adaptive_text_field.dart';
import 'package:vizier/ui/widgets/unfocus_keyboard_outside.dart';
import 'package:vizier/utils/validation/validation_builder.dart';

class AuthenticationLoginPage extends StatefulWidget {
  static const String route = 'login';

  const AuthenticationLoginPage({super.key});

  @override
  State<StatefulWidget> createState() => _AuthenticationLoginPageState();
}

class _AuthenticationLoginPageState extends State<AuthenticationLoginPage> {
  final AuthenticationLoginCubit _loginCubit =
      DI.resolve<AuthenticationLoginCubit>();
  final GlobalKey<FormState> _formKey = GlobalKey();
  AutovalidateMode _autovalidateMode = AutovalidateMode.disabled;

  final AuthenticationRequest _request = const AuthenticationRequest(
    email: '',
    password: '',
  );

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthenticationLoginCubit, AuthenticationLoginState>(
      bloc: _loginCubit,
      listener: (context, state) => state.mapOrNull(
        error: (state) => AdaptiveAlertDialogFactory.showError(
          context,
          appError: state.error,
        ),
        success: (state) {
          context.read<AuthenticationCubit>().authenticate(
                accessToken: state.token,
              );
          return context.router.replaceNamed(BottomNavigationPage.route);
        },
      ),
      builder: (context, state) => UnfocusKeyboardOutside(
        child: Scaffold(
          body: Padding(
            padding: AppDimensions.padding.bigHorizontal(),
            child: SafeArea(
              child: _buildBody(
                state: state,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildBody({
    required AuthenticationLoginState state,
  }) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Spacer(
          flex: 4,
        ),
        const LoginHeader(),
        const Spacer(
          flex: 3,
        ),
        _buildForm(),
        SizedBox(
          height: AppDimensions.padding.bigValue,
        ),
        _buildLoginButton(
          isLoading: state.isLoading,
        ),
        SizedBox(
          height: AppDimensions.padding.bigValue,
        ),
        _buildFooter(),
        const Spacer(),
      ],
    );
  }

  Widget _buildForm() {
    return Form(
      key: _formKey,
      autovalidateMode: _autovalidateMode,
      child: Column(
        children: [
          AdaptiveTextField(
            labelText: AppLoc.of(context).inputEmailLabel,
            validator: ValidationBuilder().isValidEmail().build,
          ),
          SizedBox(
            height: AppDimensions.padding.bigValue,
          ),
          AdaptiveTextField(
            labelText: AppLoc.of(context).inputPasswordLabel,
            obscureText: true,
            validator: ValidationBuilder().isNotBlank().build,
          ),
        ],
      ),
    );
  }

  Widget _buildLoginButton({
    required bool isLoading,
  }) {
    return AdaptiveLoadingButton(
      decoration: AppDecorations.button.primary(),
      isLoading: isLoading,
      onPressed: () {
        setState(() {
          _autovalidateMode = AutovalidateMode.always;
        });
        if (_formKey.currentState?.validate() ?? false) {
          _loginCubit.login(_request);
        }
      },
      padding: EdgeInsets.all(AppDimensions.padding.defaultValue),
      child: Text(
        AppLoc.of(context).logInPageLogInButton,
        style: AppTextStyles.button.primary(),
      ),
    );
  }

  Widget _buildFooter() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          AppLoc.of(context).logInPageFooterTitle,
          style: AppTextStyles.caption2().copyWith(
            color: AppColors.navy,
          ),
        ),
        AdaptiveButton(
          //TODO (MT): Handle SignUp
          onPressed: () =>
              AdaptiveAlertDialogFactory.showContentUnavailable(context),
          padding: EdgeInsets.all(AppDimensions.padding.smallValue),
          child: Text(
            AppLoc.of(context).logInPageSignUpButton,
            style: AppTextStyles.caption2().copyWith(
              color: AppColors.primary100,
            ),
          ),
        ),
      ],
    );
  }
}
