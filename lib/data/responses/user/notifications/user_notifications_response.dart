import 'package:json_annotation/json_annotation.dart';

part 'user_notifications_response.g.dart';

@JsonSerializable(
  createToJson: false,
)
class UserNotificationsResponse {
  final bool areNotificationsEnabled;

  UserNotificationsResponse({
    required this.areNotificationsEnabled,
  });

  factory UserNotificationsResponse.fromJson(Map<String, dynamic> json) => _$UserNotificationsResponseFromJson(json);
}
