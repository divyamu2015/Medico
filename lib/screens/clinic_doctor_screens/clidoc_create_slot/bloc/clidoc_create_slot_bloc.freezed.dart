// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'clidoc_create_slot_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ClidocCreateSlotEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClidocCreateSlotEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ClidocCreateSlotEvent()';
}


}

/// @nodoc
class $ClidocCreateSlotEventCopyWith<$Res>  {
$ClidocCreateSlotEventCopyWith(ClidocCreateSlotEvent _, $Res Function(ClidocCreateSlotEvent) __);
}


/// Adds pattern-matching-related methods to [ClidocCreateSlotEvent].
extension ClidocCreateSlotEventPatterns on ClidocCreateSlotEvent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _UploadClinicSlots value)?  uploadClinicSlots,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _UploadClinicSlots() when uploadClinicSlots != null:
return uploadClinicSlots(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _UploadClinicSlots value)  uploadClinicSlots,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _UploadClinicSlots():
return uploadClinicSlots(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _UploadClinicSlots value)?  uploadClinicSlots,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _UploadClinicSlots() when uploadClinicSlots != null:
return uploadClinicSlots(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function( int clinicDoctor,  String date,  String startTime,  String endTime,  List<String> timeslots)?  uploadClinicSlots,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _UploadClinicSlots() when uploadClinicSlots != null:
return uploadClinicSlots(_that.clinicDoctor,_that.date,_that.startTime,_that.endTime,_that.timeslots);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function( int clinicDoctor,  String date,  String startTime,  String endTime,  List<String> timeslots)  uploadClinicSlots,}) {final _that = this;
switch (_that) {
case _Started():
return started();case _UploadClinicSlots():
return uploadClinicSlots(_that.clinicDoctor,_that.date,_that.startTime,_that.endTime,_that.timeslots);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function( int clinicDoctor,  String date,  String startTime,  String endTime,  List<String> timeslots)?  uploadClinicSlots,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _UploadClinicSlots() when uploadClinicSlots != null:
return uploadClinicSlots(_that.clinicDoctor,_that.date,_that.startTime,_that.endTime,_that.timeslots);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements ClidocCreateSlotEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ClidocCreateSlotEvent.started()';
}


}




/// @nodoc


class _UploadClinicSlots implements ClidocCreateSlotEvent {
  const _UploadClinicSlots({required this.clinicDoctor, required this.date, required this.startTime, required this.endTime, required final  List<String> timeslots}): _timeslots = timeslots;
  

 final  int clinicDoctor;
 final  String date;
 final  String startTime;
 final  String endTime;
 final  List<String> _timeslots;
 List<String> get timeslots {
  if (_timeslots is EqualUnmodifiableListView) return _timeslots;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_timeslots);
}


/// Create a copy of ClidocCreateSlotEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UploadClinicSlotsCopyWith<_UploadClinicSlots> get copyWith => __$UploadClinicSlotsCopyWithImpl<_UploadClinicSlots>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UploadClinicSlots&&(identical(other.clinicDoctor, clinicDoctor) || other.clinicDoctor == clinicDoctor)&&(identical(other.date, date) || other.date == date)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.endTime, endTime) || other.endTime == endTime)&&const DeepCollectionEquality().equals(other._timeslots, _timeslots));
}


@override
int get hashCode => Object.hash(runtimeType,clinicDoctor,date,startTime,endTime,const DeepCollectionEquality().hash(_timeslots));

@override
String toString() {
  return 'ClidocCreateSlotEvent.uploadClinicSlots(clinicDoctor: $clinicDoctor, date: $date, startTime: $startTime, endTime: $endTime, timeslots: $timeslots)';
}


}

/// @nodoc
abstract mixin class _$UploadClinicSlotsCopyWith<$Res> implements $ClidocCreateSlotEventCopyWith<$Res> {
  factory _$UploadClinicSlotsCopyWith(_UploadClinicSlots value, $Res Function(_UploadClinicSlots) _then) = __$UploadClinicSlotsCopyWithImpl;
@useResult
$Res call({
 int clinicDoctor, String date, String startTime, String endTime, List<String> timeslots
});




}
/// @nodoc
class __$UploadClinicSlotsCopyWithImpl<$Res>
    implements _$UploadClinicSlotsCopyWith<$Res> {
  __$UploadClinicSlotsCopyWithImpl(this._self, this._then);

  final _UploadClinicSlots _self;
  final $Res Function(_UploadClinicSlots) _then;

/// Create a copy of ClidocCreateSlotEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? clinicDoctor = null,Object? date = null,Object? startTime = null,Object? endTime = null,Object? timeslots = null,}) {
  return _then(_UploadClinicSlots(
clinicDoctor: null == clinicDoctor ? _self.clinicDoctor : clinicDoctor // ignore: cast_nullable_to_non_nullable
as int,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,startTime: null == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as String,endTime: null == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as String,timeslots: null == timeslots ? _self._timeslots : timeslots // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

/// @nodoc
mixin _$ClidocCreateSlotState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClidocCreateSlotState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ClidocCreateSlotState()';
}


}

/// @nodoc
class $ClidocCreateSlotStateCopyWith<$Res>  {
$ClidocCreateSlotStateCopyWith(ClidocCreateSlotState _, $Res Function(ClidocCreateSlotState) __);
}


/// Adds pattern-matching-related methods to [ClidocCreateSlotState].
extension ClidocCreateSlotStatePatterns on ClidocCreateSlotState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _Loading value)?  loading,TResult Function( _Success value)?  success,TResult Function( _error value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Success() when success != null:
return success(_that);case _error() when error != null:
return error(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _Loading value)  loading,required TResult Function( _Success value)  success,required TResult Function( _error value)  error,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _Loading():
return loading(_that);case _Success():
return success(_that);case _error():
return error(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _Loading value)?  loading,TResult? Function( _Success value)?  success,TResult? Function( _error value)?  error,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Success() when success != null:
return success(_that);case _error() when error != null:
return error(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( DoctorSlotModel response)?  success,TResult Function( String error)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Success() when success != null:
return success(_that.response);case _error() when error != null:
return error(_that.error);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( DoctorSlotModel response)  success,required TResult Function( String error)  error,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _Loading():
return loading();case _Success():
return success(_that.response);case _error():
return error(_that.error);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( DoctorSlotModel response)?  success,TResult? Function( String error)?  error,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Success() when success != null:
return success(_that.response);case _error() when error != null:
return error(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements ClidocCreateSlotState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ClidocCreateSlotState.initial()';
}


}




/// @nodoc


class _Loading implements ClidocCreateSlotState {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ClidocCreateSlotState.loading()';
}


}




/// @nodoc


class _Success implements ClidocCreateSlotState {
  const _Success({required this.response});
  

 final  DoctorSlotModel response;

/// Create a copy of ClidocCreateSlotState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SuccessCopyWith<_Success> get copyWith => __$SuccessCopyWithImpl<_Success>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Success&&(identical(other.response, response) || other.response == response));
}


@override
int get hashCode => Object.hash(runtimeType,response);

@override
String toString() {
  return 'ClidocCreateSlotState.success(response: $response)';
}


}

/// @nodoc
abstract mixin class _$SuccessCopyWith<$Res> implements $ClidocCreateSlotStateCopyWith<$Res> {
  factory _$SuccessCopyWith(_Success value, $Res Function(_Success) _then) = __$SuccessCopyWithImpl;
@useResult
$Res call({
 DoctorSlotModel response
});




}
/// @nodoc
class __$SuccessCopyWithImpl<$Res>
    implements _$SuccessCopyWith<$Res> {
  __$SuccessCopyWithImpl(this._self, this._then);

  final _Success _self;
  final $Res Function(_Success) _then;

/// Create a copy of ClidocCreateSlotState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? response = null,}) {
  return _then(_Success(
response: null == response ? _self.response : response // ignore: cast_nullable_to_non_nullable
as DoctorSlotModel,
  ));
}


}

/// @nodoc


class _error implements ClidocCreateSlotState {
  const _error({required this.error});
  

 final  String error;

/// Create a copy of ClidocCreateSlotState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$errorCopyWith<_error> get copyWith => __$errorCopyWithImpl<_error>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _error&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'ClidocCreateSlotState.error(error: $error)';
}


}

/// @nodoc
abstract mixin class _$errorCopyWith<$Res> implements $ClidocCreateSlotStateCopyWith<$Res> {
  factory _$errorCopyWith(_error value, $Res Function(_error) _then) = __$errorCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class __$errorCopyWithImpl<$Res>
    implements _$errorCopyWith<$Res> {
  __$errorCopyWithImpl(this._self, this._then);

  final _error _self;
  final $Res Function(_error) _then;

/// Create a copy of ClidocCreateSlotState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(_error(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
