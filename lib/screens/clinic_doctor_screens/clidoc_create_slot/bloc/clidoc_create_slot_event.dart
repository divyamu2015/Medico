part of 'clidoc_create_slot_bloc.dart';

@freezed
class ClidocCreateSlotEvent with _$ClidocCreateSlotEvent {
  const factory ClidocCreateSlotEvent.started() = _Started;
  const factory ClidocCreateSlotEvent.uploadClinicSlots({
  required int clinicDoctor,
    required String date,
    required String startTime,
    required String endTime,
    required List<String> timeslots,
  }) = _UploadClinicSlots;
  
}