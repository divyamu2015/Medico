part of 'login_bloc.dart';

@freezed
class DocLoginEvent with _$DocLoginEvent {
  const factory DocLoginEvent.started() = _Started;
  const factory DocLoginEvent.userLogin({
    required String role,
    required String password,
    required String email,
  }) = _UserLogin;
}
