part of 'clinic_registration_bloc.dart';

@freezed
class ClinicRegistrationEvent with _$ClinicRegistrationEvent {
  const factory ClinicRegistrationEvent.started() = _Started;
  const factory ClinicRegistrationEvent.clinicRegister({
    required String clinicName,
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
    required String qualification,
    required String experience,
    required String specialzation,
    required XFile profilePic, // Add profile picture file
    required XFile medicalCertificate,
  }) = _ClinicRegister;
  
}