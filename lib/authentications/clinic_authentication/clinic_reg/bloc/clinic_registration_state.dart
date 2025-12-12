part of 'clinic_registration_bloc.dart';

@freezed
class ClinicRegistrationState with _$ClinicRegistrationState {
  const factory ClinicRegistrationState.initial() = _Initial;
  const factory ClinicRegistrationState.loading() = _Loading;
  const factory ClinicRegistrationState.success({required ClinicRegModel response }) = _success;
  const factory ClinicRegistrationState.error({required String error}) = _Error;
  
  
  
}
