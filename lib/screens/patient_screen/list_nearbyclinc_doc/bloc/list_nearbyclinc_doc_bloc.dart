import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:medico_project/screens/patient_screen/list_nearbyclinc_doc/list_nearbyclinc_doc_model.dart';
import 'package:medico_project/screens/patient_screen/list_nearbyclinc_doc/list_nearbyclinc_doc_service.dart';

part 'list_nearbyclinc_doc_event.dart';
part 'list_nearbyclinc_doc_state.dart';
part 'list_nearbyclinc_doc_bloc.freezed.dart';

class ListNearbyclincDocBloc extends Bloc<ListNearbyclincDocEvent, ListNearbyclincDocState> {
  ListNearbyclincDocBloc() : super(_Initial()) {
    on<ListNearbyclincDocEvent>((event, emit) async{
      if (event is _ListclinicDoc) {
        emit(const ListNearbyclincDocState.loading());
        try {
          final response = await listofNearestClicDoc(
           
            userId: event.userId
          );
          emit(ListNearbyclincDocState.success(response: response));
        } catch (e) {
          emit(ListNearbyclincDocState.error(error: e.toString()));
          //print('error:${e.toString()}');
        }
      }
    });
  }
}
