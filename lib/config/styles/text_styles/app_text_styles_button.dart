part of 'app_text_styles.dart';

class _Button {
  const _Button();

  TextStyle defaultStyle() {
    return AppTextStyles.defaultStyle().copyWith(
      color: AppColors.black,
      fontSize: 14.0,
      fontWeight: FontWeight.bold,
      letterSpacing: 0.5,
    );
  }

  TextStyle primary({
    bool isDisabled = false,
  }) {
    return defaultStyle().copyWith(
      color: AppColors.white,
    );
  }

  TextStyle secondary({
    bool isDisabled = false,
  }) {
    return defaultStyle().copyWith(
      color: AppColors.primary100,
    );
  }

  TextStyle disabled() {
    return defaultStyle().copyWith(
      color: AppColors.gray200,
    );
  }
}
