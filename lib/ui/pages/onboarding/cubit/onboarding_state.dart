part of 'onboarding_cubit.dart';

@freezed
class OnboardingState with _$OnboardingState {
  factory OnboardingState({
    required bool firstTimeOpened,
    required int currentPage,
  }) = _OnboardingState;

  const OnboardingState._();

  factory OnboardingState.initial() => OnboardingState(
        firstTimeOpened: true,
        currentPage: 0,
      );

  bool get isLastPage => OnboardingItem.values.length == (currentPage + 1);
}
