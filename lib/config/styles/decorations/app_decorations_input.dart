part of 'app_decorations.dart';

class _Input {
  const _Input();

  InputDecoration standard({
    required bool isValid,
    String? labelText,
  }) {
    return InputDecoration(
      border: _inputBorder(
        color: AppColors.gray400,
      ),
      contentPadding: AppDimensions.padding.defaultHorizontal(),
      disabledBorder: _inputBorder(
        color: AppColors.gray400,
      ),
      enabledBorder: _inputBorder(
        color: AppColors.gray400,
      ),
      errorBorder: _inputBorder(
        color: AppColors.error100,
      ),
      focusedErrorBorder: _inputBorder(
        color: AppColors.error100,
      ),
      errorStyle: AppTextStyles.caption2().copyWith(
        color: AppColors.error100,
      ),
      floatingLabelStyle: AppTextStyles.caption2().copyWith(
        color: isValid ? AppColors.navy : AppColors.error100,
      ),
      focusedBorder: _inputBorder(
        color: AppColors.primary100,
      ),
      hintStyle: AppTextStyles.text2().copyWith(
        color: AppColors.navy,
      ),
      labelText: labelText,
      labelStyle: AppTextStyles.text2().copyWith(
        color: AppColors.gray200,
      ),
    );
  }
}

InputBorder _inputBorder({
  required Color color,
}) {
  return OutlineInputBorder(
    borderSide: BorderSide(
      color: color,
    ),
    borderRadius: AppDimensions.radius.defaultRadius(),
  );
}
