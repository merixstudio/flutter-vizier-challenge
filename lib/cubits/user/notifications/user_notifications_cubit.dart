import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:vizier/data/errors/app_error.dart';
import 'package:vizier/data/repositories/user/user_repository.dart';
import 'package:vizier/data/responses/response_status.dart';
import 'package:vizier/data/responses/user/notifications/user_notifications_response.dart';

part 'user_notifications_state.dart';
part 'user_notifications_cubit.freezed.dart';

@injectable
class UserNotificationsCubit extends Cubit<UserNotificationsState> {
  final UserRepository userRepository;

  UserNotificationsCubit({
    required this.userRepository,
  }) : super(const UserNotificationsState.initial());

  Future<void> fetchData() async {
    emit(
      const UserNotificationsState.loading(),
    );
    final ResponseStatus<UserNotificationsResponse> response = await userRepository.notifications();
    response.result(
      onSuccess: (data) => emit(
        UserNotificationsState.loaded(
          areNotificationsEnabled: data.areNotificationsEnabled,
        ),
      ),
      onError: (error) => emit(
        UserNotificationsState.failure(
          appError: error,
        ),
      ),
    );
  }

  Future<void> update({
    required bool areNotificationsEnabled,
  }) async {
    emit(
      UserNotificationsState.loaded(
        areNotificationsEnabled: areNotificationsEnabled,
      ),
    );
  }
}
