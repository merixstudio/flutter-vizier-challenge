import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:vizier/data/storages/token_storage.dart';

part 'authentication_state.dart';
part 'authentication_cubit.freezed.dart';

@injectable
class AuthenticationCubit extends Cubit<AuthenticationState> {
  final TokenStorage tokenStorage;

  AuthenticationCubit({
    required this.tokenStorage,
  }) : super(const AuthenticationState.initial());

  Future<void> checkAuth() async {
    final bool hasToken = await tokenStorage.hasToken();
    if (hasToken) {
      emit(
        const AuthenticationState.authenticated(),
      );
    } else {
      emit(
        const AuthenticationState.unauthenticated(),
      );
    }
  }

  Future<void> authenticate({
    required String accessToken,
  }) async {
    await tokenStorage.storeAccessToken(accessToken);
    emit(
      const AuthenticationState.authenticated(),
    );
  }

  Future<void> logout() async {
    await tokenStorage.clear();
    emit(
      const AuthenticationState.logout(),
    );
    emit(
      const AuthenticationState.unauthenticated(),
    );
  }
}
