import 'package:bloc/bloc.dart';
import 'package:book_shop/domain/auth/i_auth_facade.dart';
import 'package:book_shop/domain/auth/user.dart';
import 'package:book_shop/domain/core/failures.dart';
import 'package:book_shop/domain/core/i_fire_store_service.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'user_bloc.freezed.dart';
part 'user_event.dart';
part 'user_state.dart';

@lazySingleton
class UserBloc extends Bloc<UserEvent, UserState> {
  final IAuthFacade _authFacade;
  final IFireStoreService _fireStoreService;

  UserBloc(
    this._authFacade,
    this._fireStoreService,
  ) : super(UserState.initial()) {
    on<UserEvent>((event, emit) async {
      await event.when(getCurrentUser: () async {
        emit(state.copyWith(isLoading: true));
        await _authFacade.getSignedInUser().then((value) async {
          await value.fold(
            (l) {
              emit(state.copyWith(
                failure: some(l),
                isLoading: false,
              ));
            },
            (r) async {
              await r.fold(
                () {
                  emit(state.copyWith(
                    failure: some(const FireStoreFailure.unexpected()),
                    isLoading: false,
                  ));
                },
                (user) async {
                  emit(state.copyWith(
                    user: user,
                    isLoading: false,
                  ));
                },
              );
            },
          );
        });
      }, updateCurrentUser: (user) async {
        emit(state.copyWith(isLoading: true));
        await _fireStoreService.updateUser(user).then((value) async {
          await value.fold(
            (l) {
              emit(state.copyWith(
                failure: some(l),
                isLoading: false,
              ));
            },
            (r) async {
              emit(state.copyWith(
                user: user,
                isLoading: false,
              ));
            },
          );
        });
      });
    });
  }
}
