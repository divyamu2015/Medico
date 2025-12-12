part of 'list_nearbyclinc_doc_bloc.dart';

@freezed
class ListNearbyclincDocState with _$ListNearbyclincDocState {
  const factory ListNearbyclincDocState.initial() = _Initial;
  const factory ListNearbyclincDocState.loading() = _Loading;
  const factory ListNearbyclincDocState.success({required List<NearbyClinicDoctor> response }) = _Success;
  const factory ListNearbyclincDocState.error({required String error}) = _Error;
  
  
  
}
