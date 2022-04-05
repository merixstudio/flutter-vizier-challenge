import 'package:vizier/data/models/user/user_model.dart';
import 'package:vizier/data/responses/response_status.dart';
import 'package:vizier/data/responses/user/notifications/user_notifications_response.dart';

abstract class UserRepository {
  Future<ResponseStatus<UserModel>> me();
  Future<ResponseStatus<UserNotificationsResponse>> notifications();
}
