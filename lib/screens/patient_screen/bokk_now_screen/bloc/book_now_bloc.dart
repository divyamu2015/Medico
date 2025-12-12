import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:medico_project/screens/patient_screen/bokk_now_screen/book_now_model.dart';
import 'package:medico_project/screens/patient_screen/bokk_now_screen/book_now_service.dart';

part 'book_now_event.dart';
part 'book_now_state.dart';
part 'book_now_bloc.freezed.dart';

class BookNowBloc extends Bloc<BookNowEvent, BookNowState> {
  BookNowBloc() : super(_Initial()) {
    on<BookNowEvent>((event, emit) async {
      if (event is _BookNow) {
        emit(const BookNowState.loading());
        try {
          final response = await bookNowService(doctorId: event.doctorId);
          emit(BookNowState.success(response: response));
        } catch (e) {
          emit(BookNowState.error(error: e.toString()));
        }
      }
    });
  }
}
