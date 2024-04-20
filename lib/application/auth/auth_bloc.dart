import 'package:book_shop/domain/auth/i_auth_facade.dart';
import 'package:book_shop/domain/auth/user.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

//dart pub run build_runner build --delete-conflicting-outputs
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthFacade authFacade;

  AuthBloc(
    this.authFacade,
  ) : super(const AuthState.initial()) {
    on<AuthEvent>((event, emit) async {
      await event.when(
        checkAuth: () async {
          await authFacade.getSignedInUser().then((value) {
            value.fold((l) => emit(const AuthState.unauthenticated()), (r) {
              r.fold(() => emit(const AuthState.unauthenticated()), (user) {
                emit(AuthState.authenticated(user));
              });
            });
          });
        },
      );
    });
  }
}
