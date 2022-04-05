import 'package:vizier/data/requests/authentication/authentication_request.dart';
import 'package:vizier/data/responses/authentication/authentication_response.dart';
import 'package:vizier/data/responses/response_status.dart';

abstract class AuthenticationDataSource {
  Future<ResponseStatus<AuthenticationResponse>> getLogin(AuthenticationRequest request);
}
