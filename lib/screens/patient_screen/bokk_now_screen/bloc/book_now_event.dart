part of 'book_now_bloc.dart';

@freezed
class BookNowEvent with _$BookNowEvent {
  const factory BookNowEvent.started() = _Started;
  const factory BookNowEvent.bookNow({required int doctorId}) = _BookNow;
}
