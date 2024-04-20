part of 'user_bloc.dart';

@freezed
class UserState with _$UserState {
  const factory UserState({
    required UserModel? user,
    required bool isLoading,
    required Option<FireStoreFailure> failure,
  }) = _UserState;

  factory UserState.initial() => UserState(
        user: null,
        isLoading: false,
        failure: none(),
      );
}
