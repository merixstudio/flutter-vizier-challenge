import 'package:injectable/injectable.dart';
import 'package:vizier/data/data_sources/authentication/authentication_data_source.dart';
import 'package:vizier/data/repositories/authentication/authentication_repository.dart';
import 'package:vizier/data/requests/authentication/authentication_request.dart';
import 'package:vizier/data/responses/authentication/authentication_response.dart';
import 'package:vizier/data/responses/response_status.dart';

@Injectable(as: AuthenticationRepository)
class DataAuthenticationRepository extends AuthenticationRepository {
  final AuthenticationDataSource authenticationDataSource;

  DataAuthenticationRepository(this.authenticationDataSource);

  @override
  Future<ResponseStatus<AuthenticationResponse>> login(
    AuthenticationRequest request,
  ) async {
    try {
      final ResponseStatus<AuthenticationResponse> response =
          await authenticationDataSource.getLogin(request);
      return ResponseStatus<AuthenticationResponse>.success(response.data!);
    } catch (error) {
      return ResponseStatus<AuthenticationResponse>.error(error);
    }
  }
}
