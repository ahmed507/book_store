part of 'user_bloc.dart';

@freezed
class UserEvent with _$UserEvent {
  const factory UserEvent.getCurrentUser() = _GetCurrentUser;

  const factory UserEvent.updateCurrentUser(UserModel user) =
      _UpdateCurrentUser;
}
