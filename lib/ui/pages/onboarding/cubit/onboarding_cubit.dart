import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:vizier/data/storages/common_storage.dart';
import 'package:vizier/ui/pages/onboarding/onboarding_item.dart';

part 'onboarding_state.dart';

part 'onboarding_cubit.freezed.dart';

@injectable
class OnboardingCubit extends Cubit<OnboardingState> {
  CommonStorage storage;

  OnboardingCubit(this.storage) : super(OnboardingState.initial());

  void saveFirstTimeOpened({required bool isOpened}) {
    storage.storeIsFirstLaunch(isFirstLaunch: isOpened);
    emit(
      state.copyWith(
        firstTimeOpened: isOpened,
      ),
    );
  }

  void changePage(int currentPage) {
    emit(
      state.copyWith(
        currentPage: currentPage,
      ),
    );
  }
}
