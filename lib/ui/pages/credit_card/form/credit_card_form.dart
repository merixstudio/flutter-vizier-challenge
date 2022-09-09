part of 'credit_card_form_page.dart';

class _CreditCardForm extends StatelessWidget {
  const _CreditCardForm({
    required this.autovalidateMode,
    required this.formKey,
    required this.onUpdateBillingCard,
    required this.onUpdateCvvCard,
    required this.onUpdateExpiryCard,
    required this.onUpdateNameCard,
    required this.onUpdateNumberCard,
  });

  final AutovalidateMode autovalidateMode;
  final GlobalKey<FormState> formKey;
  final void Function(String) onUpdateBillingCard;
  final void Function(String) onUpdateCvvCard;
  final void Function(String) onUpdateExpiryCard;
  final void Function(String) onUpdateNameCard;
  final void Function(String) onUpdateNumberCard;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          _buildNameTextField(context),
          SizedBox(
            height: AppDimensions.padding.defaultValue,
          ),
          _buildNameInputScanRow(context),
          SizedBox(
            height: AppDimensions.padding.defaultValue,
          ),
          _buildExpiryDateCCVInputsRow(context),
          SizedBox(
            height: AppDimensions.padding.defaultValue,
          ),
          _buildBillingTextField(context),
        ],
      ),
    );
  }

  Widget _buildNameInputScanRow(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: _buildNumberTextCard(context),
        ),
        const SizedBox(
          width: 8.0,
        ),
        _buildScanButton(context),
      ],
    );
  }

  Widget _buildExpiryDateCCVInputsRow(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: _buildExpiryTextField(context),
        ),
        const SizedBox(
          width: 8.0,
        ),
        Expanded(
          child: _buildCvvTextField(context),
        ),
      ],
    );
  }

  Widget _buildBillingTextField(BuildContext context) {
    return AdaptiveTextField(
      labelText: AppLoc.of(context).creditCardFormInputLabelBilling,
      onChanged: onUpdateBillingCard,
      validator: ValidationBuilder().isNotBlank().build,
    );
  }

  Widget _buildCvvTextField(BuildContext context) {
    return FocusScope(
      child: Focus(
        onFocusChange: (state) => context.read<CardFormCubit>().updateType(
              state ? CardAccountType.back : CardAccountType.front,
            ),
        child: AdaptiveTextField(
          inputFormatters: [
            FilteringTextInputFormatter.digitsOnly,
            LengthLimitingTextInputFormatter(3),
          ],
          keyboardType: TextInputType.number,
          labelText: AppLoc.of(context).creditCardFormInputLabelCvv,
          onChanged: onUpdateCvvCard,
          validator: ValidationBuilder().isValidCardCvv().build,
        ),
      ),
    );
  }

  Widget _buildExpiryTextField(BuildContext context) {
    return AdaptiveTextField(
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly,
        LengthLimitingTextInputFormatter(4),
        CardDateInputFormatter(),
      ],
      keyboardType: TextInputType.number,
      labelText: AppLoc.of(context).creditCardFormInputLabelExpiry,
      onChanged: onUpdateExpiryCard,
      validator: ValidationBuilder().isValidCardExpiry().build,
    );
  }

  Widget _buildNameTextField(BuildContext context) {
    return AdaptiveTextField(
      labelText: AppLoc.of(context).creditCardFormInputLabelName,
      onChanged: onUpdateNameCard,
      validator: ValidationBuilder().isNotBlank().build,
    );
  }

  Widget _buildNumberTextCard(BuildContext context) {
    return AdaptiveTextField(
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly,
        LengthLimitingTextInputFormatter(16),
        CardNumberInputFormatter(),
      ],
      keyboardType: TextInputType.number,
      labelText: AppLoc.of(context).creditCardFormInputLabelNumber,
      onChanged: onUpdateNumberCard,
      validator: ValidationBuilder().isValidCardNumber().build,
    );
  }

  Widget _buildScanButton(BuildContext context) {
    return AdaptiveButton(
      decoration: AppDecorations.button.secondary(),
      padding: EdgeInsets.symmetric(
        horizontal: AppDimensions.padding.bigValue,
        vertical: AppDimensions.padding.defaultValue - 2.0,
      ),
      onPressed: () =>
          AdaptiveAlertDialogFactory.showContentUnavailable(context),
      child: Text(
        AppLoc.of(context).creditCardFormInputLabelScan,
        style: AppTextStyles.button.secondary(),
      ),
    );
  }
}
