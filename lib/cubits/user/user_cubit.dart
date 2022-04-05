import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:vizier/data/errors/app_error.dart';
import 'package:vizier/data/models/user/user_model.dart';
import 'package:vizier/data/repositories/user/user_repository.dart';
import 'package:vizier/data/responses/response_status.dart';

part 'user_state.dart';
part 'user_cubit.freezed.dart';

@injectable
class UserCubit extends Cubit<UserState> {
  final UserRepository userRepository;

  UserCubit({
    required this.userRepository,
  }) : super(const UserState.initial());

  Future<void> fetchMe() async {
    _emitLoading();
    final ResponseStatus<UserModel> responseStatus = await userRepository.me();
    responseStatus.result(
      onSuccess: (response) {
        emit(
          UserState.loaded(response),
        );
      },
      onError: (error) => _emitError(error),
    );
  }

  void logout() {
    emit(
      const UserState.initial(),
    );
  }

  void _emitLoading() {
    if (state.user != null) {
      emit(
        UserState.upating(state.user!),
      );
    } else {
      emit(
        const UserState.loading(),
      );
    }
  }

  void _emitError(AppError appError) {
    if (state.user != null) {
      emit(
        UserState.errorWithData(
          userModel: state.user!,
          appError: appError,
        ),
      );
    } else {
      emit(
        UserState.error(appError),
      );
    }
  }
}
