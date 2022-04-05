import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:vizier/data/errors/app_error.dart';
import 'package:vizier/data/repositories/authentication/authentication_repository.dart';
import 'package:vizier/data/requests/authentication/authentication_request.dart';
import 'package:vizier/data/responses/authentication/authentication_response.dart';
import 'package:vizier/data/responses/response_status.dart';

part 'authentication_login_cubit.freezed.dart';
part 'authentication_login_state.dart';

@injectable
class AuthenticationLoginCubit extends Cubit<AuthenticationLoginState> {
  final AuthenticationRepository authenticationRepository;

  AuthenticationLoginCubit({
    required this.authenticationRepository,
  }) : super(const AuthenticationLoginState.initial());

  Future<void> login(AuthenticationRequest request) async {
    emit(
      const AuthenticationLoginState.loading(),
    );

    final ResponseStatus<AuthenticationResponse> responseStatus = await authenticationRepository.login(request);

    responseStatus.result(
      onSuccess: (response) {
        emit(
          AuthenticationLoginState.success(
            token: response.token,
          ),
        );
      },
      onError: (error) => emit(
        AuthenticationLoginState.error(error),
      ),
    );
  }
}
