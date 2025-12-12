part of 'clinic_bloc.dart';

@freezed
class ClinicEvent with _$ClinicEvent {
  const factory ClinicEvent.started() = _Started;
  const factory ClinicEvent.clinicLogin(
    {
       required String role,
    required String password,
    required String email,
    }
  ) = _ClinicLogin;
  
}