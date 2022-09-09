import 'package:injectable/injectable.dart';
import 'package:vizier/data/data_sources/user/user_data_source.dart';
import 'package:vizier/data/models/user/user_model.dart';
import 'package:vizier/data/repositories/user/user_repository.dart';
import 'package:vizier/data/responses/response_status.dart';
import 'package:vizier/data/responses/user/notifications/user_notifications_response.dart';

@Injectable(as: UserRepository)
class DataUserRepository extends UserRepository {
  final UserDataSource userDataSource;

  DataUserRepository({
    required this.userDataSource,
  });

  @override
  Future<ResponseStatus<UserModel>> me() async {
    try {
      final ResponseStatus<UserModel> response = await userDataSource.me();
      return ResponseStatus<UserModel>.success(response.data!);
    } catch (error) {
      return ResponseStatus<UserModel>.error(error);
    }
  }

  @override
  Future<ResponseStatus<UserNotificationsResponse>> notifications() async {
    try {
      final ResponseStatus<UserNotificationsResponse> response =
          await userDataSource.notifications();
      return ResponseStatus<UserNotificationsResponse>.success(response.data!);
    } catch (error) {
      return ResponseStatus<UserNotificationsResponse>.error(error);
    }
  }
}
