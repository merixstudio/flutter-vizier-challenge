part of 'app_decorations.dart';

class _Button {
  const _Button();

  BorderRadius get _borderRadius => BorderRadius.circular(8.0);

  BoxDecoration primary({
    bool isDisabled = false,
  }) {
    return BoxDecoration(
      borderRadius: _borderRadius,
      color: AppColors.primary100,
    );
  }

  BoxDecoration secondary({
    bool isDisabled = false,
  }) {
    return BoxDecoration(
      border: Border.all(
        color: AppColors.primary100,
        width: 2.0,
      ),
      borderRadius: _borderRadius,
      color: AppColors.white,
    );
  }

  BoxDecoration disabled() {
    return BoxDecoration(
      borderRadius: _borderRadius,
      color: AppColors.gray500,
    );
  }
}
