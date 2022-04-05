import 'package:freezed_annotation/freezed_annotation.dart';

part 'authentication_request.g.dart';
part 'authentication_request.freezed.dart';

@freezed
class AuthenticationRequest with _$AuthenticationRequest {
  const factory AuthenticationRequest({
    required String email,
    required String password,
  }) = _AuthenticationRequest;

  factory AuthenticationRequest.fromJson(Map<String, dynamic> json) => _$AuthenticationRequestFromJson(json);
}
