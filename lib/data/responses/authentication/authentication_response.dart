import 'package:json_annotation/json_annotation.dart';

part 'authentication_response.g.dart';

@JsonSerializable(
  createToJson: false,
)
class AuthenticationResponse {
  final String token;

  AuthenticationResponse({
    required this.token,
  });

  factory AuthenticationResponse.fromJson(Map<String, dynamic> json) => _$AuthenticationResponseFromJson(json);
}
