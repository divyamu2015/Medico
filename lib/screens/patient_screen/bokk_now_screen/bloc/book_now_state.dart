part of 'book_now_bloc.dart';

@freezed
class BookNowState with _$BookNowState {
  const factory BookNowState.initial() = _Initial;
  const factory BookNowState.loading() = _Loading;
  const factory BookNowState.success({
    required List<DoctorSlotResponse> response,
  }) = _Success;
  const factory BookNowState.error({required String error}) = _Error;
}
