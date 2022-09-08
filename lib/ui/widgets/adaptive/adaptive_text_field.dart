import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vizier/config/styles/colors/app_colors.dart';
import 'package:vizier/config/styles/decorations/app_decorations.dart';
import 'package:vizier/config/styles/text_styles/app_text_styles.dart';
import 'package:vizier/ui/widgets/adaptive/adaptive_button.dart';
import 'package:vizier/utils/validation/validation_builder.dart';

class AdaptiveTextField extends StatefulWidget {
  final bool autocorrect;
  final AutovalidateMode autovalidateMode;
  final List<TextInputFormatter>? inputFormatters;
  final String? labelText;
  final TextInputType? keyboardType;
  final bool obscureText;
  final ValueChanged<String>? onChanged;
  final TextInputAction? textInputAction;
  final ValidationRuleCallback? validator;

  const AdaptiveTextField({
    this.autocorrect = true,
    this.autovalidateMode = AutovalidateMode.onUserInteraction,
    this.inputFormatters,
    this.labelText,
    this.keyboardType,
    this.obscureText = false,
    this.onChanged,
    this.textInputAction,
    this.validator,
    super.key,
  });

  @override
  _AdaptiveTextFieldState createState() => _AdaptiveTextFieldState();
}

class _AdaptiveTextFieldState extends State<AdaptiveTextField> {
  late TextEditingController controller = TextEditingController();

  late bool obscureText = widget.obscureText;
  bool hasFocus = false;
  late bool hasText = controller.text.isNotEmpty;
  bool hadFirstFocus = false;
  bool forcedValidation = false;

  bool get isValid => widget.validator?.call(controller.text, context) == null;

  bool get showError {
    if (forcedValidation && !isValid) {
      return true;
    }
    switch (widget.autovalidateMode) {
      case AutovalidateMode.always:
        return !isValid;
      case AutovalidateMode.onUserInteraction:
        return !isValid && hadFirstFocus;
      case AutovalidateMode.disabled:
        return false;
    }
  }

  @override
  void initState() {
    super.initState();
    controller.addListener(textEditingControllerListener);
  }

  @override
  void dispose() {
    controller
      ..removeListener(textEditingControllerListener)
      ..dispose();
    super.dispose();
  }

  void focusNodeListener() {
    setState(() {
      if (!hasFocus) {
        hadFirstFocus = true;
      }
    });
  }

  void textEditingControllerListener() {
    setState(() => hasText = controller.text.isNotEmpty);
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autocorrect: widget.autocorrect,
      controller: controller,
      decoration: AppDecorations.input
          .standard(
            isValid: !showError || isValid,
            labelText: widget.labelText,
          )
          .copyWith(
            suffixIcon: widget.obscureText
                ? IntrinsicWidth(
                    child: _buildShowObsureTextButton(),
                  )
                : null,
          ),
      inputFormatters: widget.inputFormatters,
      keyboardType: widget.keyboardType,
      obscureText: obscureText,
      onChanged: widget.onChanged,
      style: AppTextStyles.h6().copyWith(
        fontWeight: FontWeight.normal,
      ),
      validator: (text) {
        setState(
          () => forcedValidation = true,
        );
        return widget.validator?.call(text, context);
      },
    );
  }

  Widget _buildShowObsureTextButton() {
    return AdaptiveButton(
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
      ),
      onPressed: () => setState(
        () => obscureText = !obscureText,
      ),
      padding: EdgeInsets.zero,
      child: Icon(
        obscureText ? Icons.remove_red_eye_outlined : Icons.remove_red_eye,
        color: AppColors.black,
      ),
    );
  }
}
