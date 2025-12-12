part of 'register_bloc_bloc.dart';

@freezed
class RegisterBlocEvent with _$RegisterBlocEvent {
  const factory RegisterBlocEvent.started() = _Started;
  const factory RegisterBlocEvent.userRegister(
    {
     // required String role,
      required String name,
      required String email,
      required String phone,
      required String password,
      required String address,
      required String age,
      required String place,
      required double latitude,
      required double longitude,
      required String gender,
     // required String id
    }
  ) = _UserRegister;
  
}