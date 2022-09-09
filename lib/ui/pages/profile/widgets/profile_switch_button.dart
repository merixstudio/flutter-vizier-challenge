part of '../profile_page.dart';

class _ProfileSwitchButton extends StatelessWidget {
  final bool isLoading;
  final String title;
  final bool? value;
  final Function(bool value) onChanged;

  const _ProfileSwitchButton({
    required this.isLoading,
    required this.title,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return AdaptiveButton(
      padding: EdgeInsets.symmetric(
        horizontal: AppDimensions.padding.defaultValue,
        vertical: 18.0,
      ),
      child: _buildContent(
        context,
      ),
    );
  }

  Widget _buildContent(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildTitle(context),
        AnimatedSwitcher(
          duration: AppConstants.animation.defaultDuration,
          child: isLoading ? _buildLoader() : _buildSwitch(context),
        ),
      ],
    );
  }

  Widget _buildTitle(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.headline6,
    );
  }

  Widget _buildLoader() {
    return const SizedBox(
      height: 20.0,
      child: AspectRatio(
        aspectRatio: 1,
        child: CircularProgressIndicator(),
      ),
    );
  }

  Widget _buildSwitch(BuildContext context) {
    if (value == null) {
      return const SizedBox.shrink();
    }
    return SizedBox(
      height: 20.0,
      width: 40.0,
      child: Switch(
        value: value!,
        activeColor: AppColors.primary100,
        activeTrackColor: AppColors.primary100.withOpacity(0.16),
        onChanged: onChanged,
      ),
    );
  }
}
