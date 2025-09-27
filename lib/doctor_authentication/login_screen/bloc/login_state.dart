part of 'login_bloc.dart';

@freezed
class DocLoginState with _$DocLoginState {
  const factory DocLoginState.initial() = _Initial;
  const factory DocLoginState.loading() = _Loading;
  const factory DocLoginState.success({required UserLoginModel response}) =
      _Success;
  const factory DocLoginState.error({required String error}) = _Error;
}
