import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:medico_project/authentications/patient_authantication/registration_screen/registration_page_model.dart';
import 'package:medico_project/authentications/clinic_authentication/clinic_reg/clinic_registration_page_services.dart';

part 'clinic_registration_event.dart';
part 'clinic_registration_state.dart';
part 'clinic_registration_bloc.freezed.dart';

class ClinicRegistrationBloc
    extends Bloc<ClinicRegistrationEvent, ClinicRegistrationState> {
  ClinicRegistrationBloc() : super(_Initial()) {
    on<ClinicRegistrationEvent>((event, emit) async {
      if (event is _ClinicRegister) {
        emit(const ClinicRegistrationState.loading());
        try {
          final response = await cliRegister(
            clinicName: event.clinicName,
            name: event.name,
            password: event.password,
            email: event.email,
            phone: int.parse(event.phone),
            address: event.address,
            age: int.parse(event.age),
            place: event.place,
            latitude: event.latitude.toString(),
            longitude: event.longitude.toString(),
            gender: event.gender,
            qualification: event.qualification,
            experience: event.experience,
            specialzation: event.specialzation,
            profilePic: event.profilePic,
            medicalCertificate: event.medicalCertificate,
            //age: event.a
            // age: event.a,
            // place: event.place,
            //  latitude: event.latitude,
            // longitude: event.longitude
            //id: event.id,
          );
          emit(ClinicRegistrationState.success(response: response));
        } catch (e) {
          emit(ClinicRegistrationState.error(error: e.toString()));
          print('error:${e.toString()}');
        }
      }
    });
  }
}
