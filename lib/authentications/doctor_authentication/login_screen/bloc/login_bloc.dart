import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:medico_project/authentications/doctor_authentication/login_screen/doc_login_model_page.dart';
import 'package:medico_project/authentications/doctor_authentication/login_screen/doc_login_service_page.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class DocLoginBloc extends Bloc<DocLoginEvent, DocLoginState> {
  DocLoginBloc() : super(_Initial()) {
    on<DocLoginEvent>((event, emit) async {
      if (event is _DoctorLogin) {
        emit(const DocLoginState.loading());
        try {
          final response = await doctorLoginService(
            role: event.role,
            password: event.password,
            email: event.email,
          );
          emit(DocLoginState.success(response: response));
        } catch (e) {
          emit(DocLoginState.error(error: e.toString()));
        }
      }
    });
  }
}
