part of 'clinic_bloc.dart';

@freezed
class ClinicState with _$ClinicState {
  const factory ClinicState.initial() = _Initial;
  const factory ClinicState.loading() = _Loading;
  const factory ClinicState.success({required ClinicLoginModel response}) = _Success;
  const factory ClinicState.error({required String error}) = _error;
  
  
  
}
