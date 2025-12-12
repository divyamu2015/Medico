part of 'clidoc_create_slot_bloc.dart';

@freezed
class ClidocCreateSlotState with _$ClidocCreateSlotState {
  const factory ClidocCreateSlotState.initial() = _Initial;
  const factory ClidocCreateSlotState.loading() = _Loading;
  const factory ClidocCreateSlotState.success({required DoctorSlotModel response}) = _Success;
  const factory ClidocCreateSlotState.error({required String error}) = _error;
  
  
  
}
