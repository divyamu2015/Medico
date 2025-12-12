// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_payment_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UserPaymentEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserPaymentEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserPaymentEvent()';
}


}

/// @nodoc
class $UserPaymentEventCopyWith<$Res>  {
$UserPaymentEventCopyWith(UserPaymentEvent _, $Res Function(UserPaymentEvent) __);
}


/// Adds pattern-matching-related methods to [UserPaymentEvent].
extension UserPaymentEventPatterns on UserPaymentEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _Userpayhistory value)?  userpayhistory,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _Userpayhistory() when userpayhistory != null:
return userpayhistory(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _Userpayhistory value)  userpayhistory,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _Userpayhistory():
return userpayhistory(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _Userpayhistory value)?  userpayhistory,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _Userpayhistory() when userpayhistory != null:
return userpayhistory(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function( int id,  String paymentOption,  String status,  String totalPrice,  String cashStatus,  dynamic transactionId,  dynamic nameOfCard,  dynamic cardNumber,  dynamic expiryDate,  dynamic cvv,  int user,  int wasteSubmission)?  userpayhistory,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _Userpayhistory() when userpayhistory != null:
return userpayhistory(_that.id,_that.paymentOption,_that.status,_that.totalPrice,_that.cashStatus,_that.transactionId,_that.nameOfCard,_that.cardNumber,_that.expiryDate,_that.cvv,_that.user,_that.wasteSubmission);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function( int id,  String paymentOption,  String status,  String totalPrice,  String cashStatus,  dynamic transactionId,  dynamic nameOfCard,  dynamic cardNumber,  dynamic expiryDate,  dynamic cvv,  int user,  int wasteSubmission)  userpayhistory,}) {final _that = this;
switch (_that) {
case _Started():
return started();case _Userpayhistory():
return userpayhistory(_that.id,_that.paymentOption,_that.status,_that.totalPrice,_that.cashStatus,_that.transactionId,_that.nameOfCard,_that.cardNumber,_that.expiryDate,_that.cvv,_that.user,_that.wasteSubmission);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function( int id,  String paymentOption,  String status,  String totalPrice,  String cashStatus,  dynamic transactionId,  dynamic nameOfCard,  dynamic cardNumber,  dynamic expiryDate,  dynamic cvv,  int user,  int wasteSubmission)?  userpayhistory,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _Userpayhistory() when userpayhistory != null:
return userpayhistory(_that.id,_that.paymentOption,_that.status,_that.totalPrice,_that.cashStatus,_that.transactionId,_that.nameOfCard,_that.cardNumber,_that.expiryDate,_that.cvv,_that.user,_that.wasteSubmission);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements UserPaymentEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserPaymentEvent.started()';
}


}




/// @nodoc


class _Userpayhistory implements UserPaymentEvent {
  const _Userpayhistory({required this.id, required this.paymentOption, required this.status, required this.totalPrice, required this.cashStatus, required this.transactionId, required this.nameOfCard, required this.cardNumber, required this.expiryDate, required this.cvv, required this.user, required this.wasteSubmission});
  

 final  int id;
 final  String paymentOption;
 final  String status;
 final  String totalPrice;
 final  String cashStatus;
 final  dynamic transactionId;
 final  dynamic nameOfCard;
 final  dynamic cardNumber;
 final  dynamic expiryDate;
 final  dynamic cvv;
 final  int user;
 final  int wasteSubmission;

/// Create a copy of UserPaymentEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserpayhistoryCopyWith<_Userpayhistory> get copyWith => __$UserpayhistoryCopyWithImpl<_Userpayhistory>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Userpayhistory&&(identical(other.id, id) || other.id == id)&&(identical(other.paymentOption, paymentOption) || other.paymentOption == paymentOption)&&(identical(other.status, status) || other.status == status)&&(identical(other.totalPrice, totalPrice) || other.totalPrice == totalPrice)&&(identical(other.cashStatus, cashStatus) || other.cashStatus == cashStatus)&&const DeepCollectionEquality().equals(other.transactionId, transactionId)&&const DeepCollectionEquality().equals(other.nameOfCard, nameOfCard)&&const DeepCollectionEquality().equals(other.cardNumber, cardNumber)&&const DeepCollectionEquality().equals(other.expiryDate, expiryDate)&&const DeepCollectionEquality().equals(other.cvv, cvv)&&(identical(other.user, user) || other.user == user)&&(identical(other.wasteSubmission, wasteSubmission) || other.wasteSubmission == wasteSubmission));
}


@override
int get hashCode => Object.hash(runtimeType,id,paymentOption,status,totalPrice,cashStatus,const DeepCollectionEquality().hash(transactionId),const DeepCollectionEquality().hash(nameOfCard),const DeepCollectionEquality().hash(cardNumber),const DeepCollectionEquality().hash(expiryDate),const DeepCollectionEquality().hash(cvv),user,wasteSubmission);

@override
String toString() {
  return 'UserPaymentEvent.userpayhistory(id: $id, paymentOption: $paymentOption, status: $status, totalPrice: $totalPrice, cashStatus: $cashStatus, transactionId: $transactionId, nameOfCard: $nameOfCard, cardNumber: $cardNumber, expiryDate: $expiryDate, cvv: $cvv, user: $user, wasteSubmission: $wasteSubmission)';
}


}

/// @nodoc
abstract mixin class _$UserpayhistoryCopyWith<$Res> implements $UserPaymentEventCopyWith<$Res> {
  factory _$UserpayhistoryCopyWith(_Userpayhistory value, $Res Function(_Userpayhistory) _then) = __$UserpayhistoryCopyWithImpl;
@useResult
$Res call({
 int id, String paymentOption, String status, String totalPrice, String cashStatus, dynamic transactionId, dynamic nameOfCard, dynamic cardNumber, dynamic expiryDate, dynamic cvv, int user, int wasteSubmission
});




}
/// @nodoc
class __$UserpayhistoryCopyWithImpl<$Res>
    implements _$UserpayhistoryCopyWith<$Res> {
  __$UserpayhistoryCopyWithImpl(this._self, this._then);

  final _Userpayhistory _self;
  final $Res Function(_Userpayhistory) _then;

/// Create a copy of UserPaymentEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,Object? paymentOption = null,Object? status = null,Object? totalPrice = null,Object? cashStatus = null,Object? transactionId = freezed,Object? nameOfCard = freezed,Object? cardNumber = freezed,Object? expiryDate = freezed,Object? cvv = freezed,Object? user = null,Object? wasteSubmission = null,}) {
  return _then(_Userpayhistory(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,paymentOption: null == paymentOption ? _self.paymentOption : paymentOption // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,totalPrice: null == totalPrice ? _self.totalPrice : totalPrice // ignore: cast_nullable_to_non_nullable
as String,cashStatus: null == cashStatus ? _self.cashStatus : cashStatus // ignore: cast_nullable_to_non_nullable
as String,transactionId: freezed == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as dynamic,nameOfCard: freezed == nameOfCard ? _self.nameOfCard : nameOfCard // ignore: cast_nullable_to_non_nullable
as dynamic,cardNumber: freezed == cardNumber ? _self.cardNumber : cardNumber // ignore: cast_nullable_to_non_nullable
as dynamic,expiryDate: freezed == expiryDate ? _self.expiryDate : expiryDate // ignore: cast_nullable_to_non_nullable
as dynamic,cvv: freezed == cvv ? _self.cvv : cvv // ignore: cast_nullable_to_non_nullable
as dynamic,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as int,wasteSubmission: null == wasteSubmission ? _self.wasteSubmission : wasteSubmission // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$UserPaymentState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserPaymentState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserPaymentState()';
}


}

/// @nodoc
class $UserPaymentStateCopyWith<$Res>  {
$UserPaymentStateCopyWith(UserPaymentState _, $Res Function(UserPaymentState) __);
}


/// Adds pattern-matching-related methods to [UserPaymentState].
extension UserPaymentStatePatterns on UserPaymentState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _Loading value)?  loading,TResult Function( _Success value)?  success,TResult Function( _Error value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Success() when success != null:
return success(_that);case _Error() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _Loading value)  loading,required TResult Function( _Success value)  success,required TResult Function( _Error value)  error,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _Loading():
return loading(_that);case _Success():
return success(_that);case _Error():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _Loading value)?  loading,TResult? Function( _Success value)?  success,TResult? Function( _Error value)?  error,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Success() when success != null:
return success(_that);case _Error() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( UserPymentHistoryModel response)?  success,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Success() when success != null:
return success(_that.response);case _Error() when error != null:
return error(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( UserPymentHistoryModel response)  success,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _Loading():
return loading();case _Success():
return success(_that.response);case _Error():
return error(_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( UserPymentHistoryModel response)?  success,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Success() when success != null:
return success(_that.response);case _Error() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements UserPaymentState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserPaymentState.initial()';
}


}




/// @nodoc


class _Loading implements UserPaymentState {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserPaymentState.loading()';
}


}




/// @nodoc


class _Success implements UserPaymentState {
  const _Success({required this.response});
  

 final  UserPymentHistoryModel response;

/// Create a copy of UserPaymentState
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
  return 'UserPaymentState.success(response: $response)';
}


}

/// @nodoc
abstract mixin class _$SuccessCopyWith<$Res> implements $UserPaymentStateCopyWith<$Res> {
  factory _$SuccessCopyWith(_Success value, $Res Function(_Success) _then) = __$SuccessCopyWithImpl;
@useResult
$Res call({
 UserPymentHistoryModel response
});




}
/// @nodoc
class __$SuccessCopyWithImpl<$Res>
    implements _$SuccessCopyWith<$Res> {
  __$SuccessCopyWithImpl(this._self, this._then);

  final _Success _self;
  final $Res Function(_Success) _then;

/// Create a copy of UserPaymentState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? response = null,}) {
  return _then(_Success(
response: null == response ? _self.response : response // ignore: cast_nullable_to_non_nullable
as UserPymentHistoryModel,
  ));
}


}

/// @nodoc


class _Error implements UserPaymentState {
  const _Error({required this.message});
  

 final  String message;

/// Create a copy of UserPaymentState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorCopyWith<_Error> get copyWith => __$ErrorCopyWithImpl<_Error>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Error&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'UserPaymentState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorCopyWith<$Res> implements $UserPaymentStateCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) _then) = __$ErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$ErrorCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(this._self, this._then);

  final _Error _self;
  final $Res Function(_Error) _then;

/// Create a copy of UserPaymentState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_Error(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
