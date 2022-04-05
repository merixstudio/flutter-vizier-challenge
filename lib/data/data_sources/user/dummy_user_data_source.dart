import 'package:injectable/injectable.dart';
import 'package:vizier/config/constants/app_constants.dart';
import 'package:vizier/data/data_sources/user/user_data_source.dart';
import 'package:vizier/data/models/user/user_model.dart';
import 'package:vizier/data/responses/response_status.dart';
import 'package:vizier/data/responses/user/notifications/user_notifications_response.dart';
import 'package:vizier/mocks/mock_factory.dart';

@Injectable(as: UserDataSource)
class DummyUserDataSource extends UserDataSource {
  final MockFactory mockFactory;

  DummyUserDataSource({
    required this.mockFactory,
  });

  @override
  Future<ResponseStatus<UserModel>> me() async {
    await Future.delayed(AppConstants.api.dummyLoadingDuration);

    return ResponseStatus.success(
      mockFactory.user.prepareUser(),
    );
  }

  @override
  Future<ResponseStatus<UserNotificationsResponse>> notifications() async {
    await Future.delayed(AppConstants.api.dummyLoadingDuration);

    return ResponseStatus.success(
      mockFactory.user.prepareUserNotificationsResponse(),
    );
  }
}
