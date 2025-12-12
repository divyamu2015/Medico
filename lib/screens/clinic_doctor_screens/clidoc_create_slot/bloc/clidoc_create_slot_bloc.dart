import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:medico_project/screens/clinic_doctor_screens/clidoc_create_slot/clidoc_create_slot_model.dart';
import 'package:medico_project/screens/clinic_doctor_screens/clidoc_create_slot/clidoc_create_slot_service.dart';

part 'clidoc_create_slot_event.dart';
part 'clidoc_create_slot_state.dart';
part 'clidoc_create_slot_bloc.freezed.dart';

class ClidocCreateSlotBloc extends Bloc<ClidocCreateSlotEvent, ClidocCreateSlotState> {
  ClidocCreateSlotBloc() : super(_Initial()) {
    on<ClidocCreateSlotEvent>((event, emit) async{
    if (event is _UploadClinicSlots) {
        // Handle the upload slots event
        emit(const ClidocCreateSlotState.loading());
        try {
          // Simulate a network call or processing
          final response =await createClinicDoctorSlot(
          //  id: 1,
            //clinicDoctorId: 1,
            doctorId: event.clinicDoctor,
            date: event.date,
            startTime: event.startTime,
            endTime: event.endTime,
            timeslots: event.timeslots,
          );
          emit(ClidocCreateSlotState.success(response: response));
        } catch (e) {
          emit(ClidocCreateSlotState.error(error: e.toString()));
        }
      
    }
    });
  }
}
