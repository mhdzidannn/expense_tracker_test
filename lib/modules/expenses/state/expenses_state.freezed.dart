// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'expenses_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ExpensesState {

 ExpenseCategoriesDto? get selectedExpense; String? get selectedExpenseError; Currency? get selectedCurrency; double get amount; String? get amountErrorText; String get expensesName; String? get expensesNameError; DateTime? get selectedDate; bool get isLoading;
/// Create a copy of ExpensesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExpensesStateCopyWith<ExpensesState> get copyWith => _$ExpensesStateCopyWithImpl<ExpensesState>(this as ExpensesState, _$identity);

  /// Serializes this ExpensesState to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExpensesState&&(identical(other.selectedExpense, selectedExpense) || other.selectedExpense == selectedExpense)&&(identical(other.selectedExpenseError, selectedExpenseError) || other.selectedExpenseError == selectedExpenseError)&&(identical(other.selectedCurrency, selectedCurrency) || other.selectedCurrency == selectedCurrency)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.amountErrorText, amountErrorText) || other.amountErrorText == amountErrorText)&&(identical(other.expensesName, expensesName) || other.expensesName == expensesName)&&(identical(other.expensesNameError, expensesNameError) || other.expensesNameError == expensesNameError)&&(identical(other.selectedDate, selectedDate) || other.selectedDate == selectedDate)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,selectedExpense,selectedExpenseError,selectedCurrency,amount,amountErrorText,expensesName,expensesNameError,selectedDate,isLoading);

@override
String toString() {
  return 'ExpensesState(selectedExpense: $selectedExpense, selectedExpenseError: $selectedExpenseError, selectedCurrency: $selectedCurrency, amount: $amount, amountErrorText: $amountErrorText, expensesName: $expensesName, expensesNameError: $expensesNameError, selectedDate: $selectedDate, isLoading: $isLoading)';
}


}

/// @nodoc
abstract mixin class $ExpensesStateCopyWith<$Res>  {
  factory $ExpensesStateCopyWith(ExpensesState value, $Res Function(ExpensesState) _then) = _$ExpensesStateCopyWithImpl;
@useResult
$Res call({
 ExpenseCategoriesDto? selectedExpense, String? selectedExpenseError, Currency? selectedCurrency, double amount, String? amountErrorText, String expensesName, String? expensesNameError, DateTime? selectedDate, bool isLoading
});


$ExpenseCategoriesDtoCopyWith<$Res>? get selectedExpense;

}
/// @nodoc
class _$ExpensesStateCopyWithImpl<$Res>
    implements $ExpensesStateCopyWith<$Res> {
  _$ExpensesStateCopyWithImpl(this._self, this._then);

  final ExpensesState _self;
  final $Res Function(ExpensesState) _then;

/// Create a copy of ExpensesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? selectedExpense = freezed,Object? selectedExpenseError = freezed,Object? selectedCurrency = freezed,Object? amount = null,Object? amountErrorText = freezed,Object? expensesName = null,Object? expensesNameError = freezed,Object? selectedDate = freezed,Object? isLoading = null,}) {
  return _then(_self.copyWith(
selectedExpense: freezed == selectedExpense ? _self.selectedExpense : selectedExpense // ignore: cast_nullable_to_non_nullable
as ExpenseCategoriesDto?,selectedExpenseError: freezed == selectedExpenseError ? _self.selectedExpenseError : selectedExpenseError // ignore: cast_nullable_to_non_nullable
as String?,selectedCurrency: freezed == selectedCurrency ? _self.selectedCurrency : selectedCurrency // ignore: cast_nullable_to_non_nullable
as Currency?,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,amountErrorText: freezed == amountErrorText ? _self.amountErrorText : amountErrorText // ignore: cast_nullable_to_non_nullable
as String?,expensesName: null == expensesName ? _self.expensesName : expensesName // ignore: cast_nullable_to_non_nullable
as String,expensesNameError: freezed == expensesNameError ? _self.expensesNameError : expensesNameError // ignore: cast_nullable_to_non_nullable
as String?,selectedDate: freezed == selectedDate ? _self.selectedDate : selectedDate // ignore: cast_nullable_to_non_nullable
as DateTime?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of ExpensesState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ExpenseCategoriesDtoCopyWith<$Res>? get selectedExpense {
    if (_self.selectedExpense == null) {
    return null;
  }

  return $ExpenseCategoriesDtoCopyWith<$Res>(_self.selectedExpense!, (value) {
    return _then(_self.copyWith(selectedExpense: value));
  });
}
}


/// Adds pattern-matching-related methods to [ExpensesState].
extension ExpensesStatePatterns on ExpensesState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ExpensesState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ExpensesState() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ExpensesState value)  $default,){
final _that = this;
switch (_that) {
case _ExpensesState():
return $default(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ExpensesState value)?  $default,){
final _that = this;
switch (_that) {
case _ExpensesState() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ExpenseCategoriesDto? selectedExpense,  String? selectedExpenseError,  Currency? selectedCurrency,  double amount,  String? amountErrorText,  String expensesName,  String? expensesNameError,  DateTime? selectedDate,  bool isLoading)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ExpensesState() when $default != null:
return $default(_that.selectedExpense,_that.selectedExpenseError,_that.selectedCurrency,_that.amount,_that.amountErrorText,_that.expensesName,_that.expensesNameError,_that.selectedDate,_that.isLoading);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ExpenseCategoriesDto? selectedExpense,  String? selectedExpenseError,  Currency? selectedCurrency,  double amount,  String? amountErrorText,  String expensesName,  String? expensesNameError,  DateTime? selectedDate,  bool isLoading)  $default,) {final _that = this;
switch (_that) {
case _ExpensesState():
return $default(_that.selectedExpense,_that.selectedExpenseError,_that.selectedCurrency,_that.amount,_that.amountErrorText,_that.expensesName,_that.expensesNameError,_that.selectedDate,_that.isLoading);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ExpenseCategoriesDto? selectedExpense,  String? selectedExpenseError,  Currency? selectedCurrency,  double amount,  String? amountErrorText,  String expensesName,  String? expensesNameError,  DateTime? selectedDate,  bool isLoading)?  $default,) {final _that = this;
switch (_that) {
case _ExpensesState() when $default != null:
return $default(_that.selectedExpense,_that.selectedExpenseError,_that.selectedCurrency,_that.amount,_that.amountErrorText,_that.expensesName,_that.expensesNameError,_that.selectedDate,_that.isLoading);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ExpensesState extends ExpensesState {
  const _ExpensesState({this.selectedExpense, this.selectedExpenseError, this.selectedCurrency, this.amount = 0.00, this.amountErrorText, this.expensesName = '', this.expensesNameError, this.selectedDate, this.isLoading = false}): super._();
  factory _ExpensesState.fromJson(Map<String, dynamic> json) => _$ExpensesStateFromJson(json);

@override final  ExpenseCategoriesDto? selectedExpense;
@override final  String? selectedExpenseError;
@override final  Currency? selectedCurrency;
@override@JsonKey() final  double amount;
@override final  String? amountErrorText;
@override@JsonKey() final  String expensesName;
@override final  String? expensesNameError;
@override final  DateTime? selectedDate;
@override@JsonKey() final  bool isLoading;

/// Create a copy of ExpensesState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ExpensesStateCopyWith<_ExpensesState> get copyWith => __$ExpensesStateCopyWithImpl<_ExpensesState>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ExpensesStateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ExpensesState&&(identical(other.selectedExpense, selectedExpense) || other.selectedExpense == selectedExpense)&&(identical(other.selectedExpenseError, selectedExpenseError) || other.selectedExpenseError == selectedExpenseError)&&(identical(other.selectedCurrency, selectedCurrency) || other.selectedCurrency == selectedCurrency)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.amountErrorText, amountErrorText) || other.amountErrorText == amountErrorText)&&(identical(other.expensesName, expensesName) || other.expensesName == expensesName)&&(identical(other.expensesNameError, expensesNameError) || other.expensesNameError == expensesNameError)&&(identical(other.selectedDate, selectedDate) || other.selectedDate == selectedDate)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,selectedExpense,selectedExpenseError,selectedCurrency,amount,amountErrorText,expensesName,expensesNameError,selectedDate,isLoading);

@override
String toString() {
  return 'ExpensesState(selectedExpense: $selectedExpense, selectedExpenseError: $selectedExpenseError, selectedCurrency: $selectedCurrency, amount: $amount, amountErrorText: $amountErrorText, expensesName: $expensesName, expensesNameError: $expensesNameError, selectedDate: $selectedDate, isLoading: $isLoading)';
}


}

/// @nodoc
abstract mixin class _$ExpensesStateCopyWith<$Res> implements $ExpensesStateCopyWith<$Res> {
  factory _$ExpensesStateCopyWith(_ExpensesState value, $Res Function(_ExpensesState) _then) = __$ExpensesStateCopyWithImpl;
@override @useResult
$Res call({
 ExpenseCategoriesDto? selectedExpense, String? selectedExpenseError, Currency? selectedCurrency, double amount, String? amountErrorText, String expensesName, String? expensesNameError, DateTime? selectedDate, bool isLoading
});


@override $ExpenseCategoriesDtoCopyWith<$Res>? get selectedExpense;

}
/// @nodoc
class __$ExpensesStateCopyWithImpl<$Res>
    implements _$ExpensesStateCopyWith<$Res> {
  __$ExpensesStateCopyWithImpl(this._self, this._then);

  final _ExpensesState _self;
  final $Res Function(_ExpensesState) _then;

/// Create a copy of ExpensesState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? selectedExpense = freezed,Object? selectedExpenseError = freezed,Object? selectedCurrency = freezed,Object? amount = null,Object? amountErrorText = freezed,Object? expensesName = null,Object? expensesNameError = freezed,Object? selectedDate = freezed,Object? isLoading = null,}) {
  return _then(_ExpensesState(
selectedExpense: freezed == selectedExpense ? _self.selectedExpense : selectedExpense // ignore: cast_nullable_to_non_nullable
as ExpenseCategoriesDto?,selectedExpenseError: freezed == selectedExpenseError ? _self.selectedExpenseError : selectedExpenseError // ignore: cast_nullable_to_non_nullable
as String?,selectedCurrency: freezed == selectedCurrency ? _self.selectedCurrency : selectedCurrency // ignore: cast_nullable_to_non_nullable
as Currency?,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,amountErrorText: freezed == amountErrorText ? _self.amountErrorText : amountErrorText // ignore: cast_nullable_to_non_nullable
as String?,expensesName: null == expensesName ? _self.expensesName : expensesName // ignore: cast_nullable_to_non_nullable
as String,expensesNameError: freezed == expensesNameError ? _self.expensesNameError : expensesNameError // ignore: cast_nullable_to_non_nullable
as String?,selectedDate: freezed == selectedDate ? _self.selectedDate : selectedDate // ignore: cast_nullable_to_non_nullable
as DateTime?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of ExpensesState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ExpenseCategoriesDtoCopyWith<$Res>? get selectedExpense {
    if (_self.selectedExpense == null) {
    return null;
  }

  return $ExpenseCategoriesDtoCopyWith<$Res>(_self.selectedExpense!, (value) {
    return _then(_self.copyWith(selectedExpense: value));
  });
}
}

// dart format on
