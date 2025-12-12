import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:medico_project/authentications/clinic_authentication/clinic_login/clinic_login_model_page.dart';
import 'package:medico_project/authentications/clinic_authentication/clinic_login/clinic_login_service_page.dart';

part 'clinic_event.dart';
part 'clinic_state.dart';
part 'clinic_bloc.freezed.dart';

class ClinicBloc extends Bloc<ClinicEvent, ClinicState> {
  ClinicBloc() : super(_Initial()) {
    on<ClinicEvent>((event, emit) async {
      if (event is _ClinicLogin) {
        emit(const ClinicState.loading());
        try {
          final response = await clinicLoginService(
            role: event.role,
            password: event.password,
            email: event.email,
            
          );
          emit(ClinicState.success(response: response));
        } catch (e) {
          emit(ClinicState.error(error: e.toString()));
        }
      }
    });
  }
}
