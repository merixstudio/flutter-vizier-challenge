import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vizier/config/formatters/card_date_input_formatter.dart';
import 'package:vizier/config/formatters/card_number_input_formatter.dart';
import 'package:vizier/config/injector/di.dart';
import 'package:vizier/config/styles/decorations/app_decorations.dart';
import 'package:vizier/config/styles/dimensions/app_dimensions.dart';
import 'package:vizier/config/styles/text_styles/app_text_styles.dart';
import 'package:vizier/cubits/card_form/add/card_add_cubit.dart';
import 'package:vizier/cubits/card_form/card_form_cubit.dart';
import 'package:vizier/cubits/wallet/wallet_cubit.dart';
import 'package:vizier/l10n/app_loc.dart';
import 'package:vizier/ui/modals/alert_dialog/adaptive_alert_dialog_factory.dart';
import 'package:vizier/ui/models/card_account_type.dart';
import 'package:vizier/ui/widgets/adaptive/adaptive_app_bar.dart';
import 'package:vizier/ui/widgets/adaptive/adaptive_button.dart';
import 'package:vizier/ui/widgets/adaptive/adaptive_loading_button.dart';
import 'package:vizier/ui/widgets/adaptive/adaptive_text_field.dart';
import 'package:vizier/ui/widgets/credit_card/animated_credit_card.dart';
import 'package:vizier/ui/widgets/unfocus_keyboard_outside.dart';
import 'package:vizier/utils/validation/validation_builder.dart';

part 'credit_card_form.dart';

class CreditCardFormPage extends StatefulWidget implements AutoRouteWrapper {
  static const String route = 'card-form-page';

  const CreditCardFormPage();

  @override
  Widget wrappedRoute(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => DI.resolve<CardAddCubit>(),
        ),
        BlocProvider(
          create: (_) => DI.resolve<CardFormCubit>(),
        ),
      ],
      child: this,
    );
  }

  @override
  State<CreditCardFormPage> createState() => _CreditCardFormPageState();
}

class _CreditCardFormPageState extends State<CreditCardFormPage> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  AutovalidateMode _autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return UnfocusKeyboardOutside(
      child: Scaffold(
        appBar: AdaptiveAppBar(
          context,
          backgroundColor: Colors.transparent,
          centerTitle: false,
          title: Text(
            AppLoc.of(context).creditCardFormTitle,
          ),
        ),
        body: SafeArea(
          child: Padding(
            padding: AppDimensions.padding.defaultHorizontal(),
            child: Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                      bottom: AppDimensions.padding.defaultValue,
                    ),
                    child: _buildBody(),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: AppDimensions.padding.defaultValue,
                  ),
                  child: BlocConsumer<CardAddCubit, CardAddState>(
                    listenWhen: (_, state) => state.isSuccess,
                    listener: (_, state) => context
                      ..read<WalletCubit>().fetchData()
                      ..popRoute(),
                    builder: (_, state) => _buildAddButton(
                      isLoading: state.isLoading,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildBody() {
    return Column(
      children: [
        BlocBuilder<CardFormCubit, CardFormState>(
          builder: (_, state) => AnimatedCreditCard(
            cvv: state.cvv,
            expiry: state.expiry,
            number: state.number,
            type: state.type,
          ),
        ),
        SizedBox(
          height: AppDimensions.padding.biggerValue,
        ),
        _CreditCardForm(
          autovalidateMode: _autovalidateMode,
          formKey: _formKey,
          onUpdateBillingCard: context.read<CardFormCubit>().updateBilling,
          onUpdateCvvCard: context.read<CardFormCubit>().updateCvv,
          onUpdateExpiryCard: context.read<CardFormCubit>().updateExpiry,
          onUpdateNameCard: context.read<CardFormCubit>().updateName,
          onUpdateNumberCard: context.read<CardFormCubit>().updateNumber,
        ),
      ],
    );
  }

  Widget _buildAddButton({
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
          context
              .read<CardAddCubit>()
              .add(context.read<CardFormCubit>().state.account);
        }
      },
      padding: EdgeInsets.all(AppDimensions.padding.defaultValue),
      child: Text(
        AppLoc.of(context).creditCardFormAdd,
        style: AppTextStyles.button.primary(),
      ),
    );
  }
}
