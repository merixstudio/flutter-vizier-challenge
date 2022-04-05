import 'package:injectable/injectable.dart';
import 'package:vizier/config/constants/app_constants.dart';
import 'package:vizier/data/data_sources/authentication/authentication_data_source.dart';
import 'package:vizier/data/requests/authentication/authentication_request.dart';
import 'package:vizier/data/responses/authentication/authentication_response.dart';
import 'package:vizier/data/responses/response_status.dart';
import 'package:vizier/utils/dummy_util.dart';

@Injectable(as: AuthenticationDataSource)
class DummyAuthenticationDataSource extends AuthenticationDataSource {
  final DummyUtil dummyUtil;

  DummyAuthenticationDataSource({
    required this.dummyUtil,
  });

  @override
  Future<ResponseStatus<AuthenticationResponse>> getLogin(
    AuthenticationRequest request,
  ) async {
    await Future.delayed(AppConstants.api.dummyLoadingDuration);
    return ResponseStatus.success(
      AuthenticationResponse(
        token: dummyUtil.randomString(),
      ),
    );
  }
}
