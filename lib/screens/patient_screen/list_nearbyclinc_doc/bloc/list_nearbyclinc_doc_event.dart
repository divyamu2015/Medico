part of 'list_nearbyclinc_doc_bloc.dart';

@freezed
class ListNearbyclincDocEvent with _$ListNearbyclincDocEvent {
  const factory ListNearbyclincDocEvent.started() = _Started;
  const factory ListNearbyclincDocEvent.listclinicDoc({
  required int userId,

  }) = _ListclinicDoc;
  
}