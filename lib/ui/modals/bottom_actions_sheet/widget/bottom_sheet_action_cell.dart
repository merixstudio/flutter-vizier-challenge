part of '../bottom_actions_sheet.dart';

class BottomSheetActionCell extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;

  const BottomSheetActionCell({
    required this.title,
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AdaptiveButton(
      onPressed: onPressed,
      child: Text(
        title,
        style: AppTextStyles.caption1(),
      ),
    );
  }
}
