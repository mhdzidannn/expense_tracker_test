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

 ExpenseCategoriesDto? get selectedExpense; Currency? get selectedCurrency; double get amount; String get expensesName; DateTime? get selectedDate;
/// Create a copy of ExpensesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExpensesStateCopyWith<ExpensesState> get copyWith => _$ExpensesStateCopyWithImpl<ExpensesState>(this as ExpensesState, _$identity);

  /// Serializes this ExpensesState to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExpensesState&&(identical(other.selectedExpense, selectedExpense) || other.selectedExpense == selectedExpense)&&(identical(other.selectedCurrency, selectedCurrency) || other.selectedCurrency == selectedCurrency)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.expensesName, expensesName) || other.expensesName == expensesName)&&(identical(other.selectedDate, selectedDate) || other.selectedDate == selectedDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,selectedExpense,selectedCurrency,amount,expensesName,selectedDate);

@override
String toString() {
  return 'ExpensesState(selectedExpense: $selectedExpense, selectedCurrency: $selectedCurrency, amount: $amount, expensesName: $expensesName, selectedDate: $selectedDate)';
}


}

/// @nodoc
abstract mixin class $ExpensesStateCopyWith<$Res>  {
  factory $ExpensesStateCopyWith(ExpensesState value, $Res Function(ExpensesState) _then) = _$ExpensesStateCopyWithImpl;
@useResult
$Res call({
 ExpenseCategoriesDto? selectedExpense, Currency? selectedCurrency, double amount, String expensesName, DateTime? selectedDate
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
@pragma('vm:prefer-inline') @override $Res call({Object? selectedExpense = freezed,Object? selectedCurrency = freezed,Object? amount = null,Object? expensesName = null,Object? selectedDate = freezed,}) {
  return _then(_self.copyWith(
selectedExpense: freezed == selectedExpense ? _self.selectedExpense : selectedExpense // ignore: cast_nullable_to_non_nullable
as ExpenseCategoriesDto?,selectedCurrency: freezed == selectedCurrency ? _self.selectedCurrency : selectedCurrency // ignore: cast_nullable_to_non_nullable
as Currency?,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,expensesName: null == expensesName ? _self.expensesName : expensesName // ignore: cast_nullable_to_non_nullable
as String,selectedDate: freezed == selectedDate ? _self.selectedDate : selectedDate // ignore: cast_nullable_to_non_nullable
as DateTime?,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ExpenseCategoriesDto? selectedExpense,  Currency? selectedCurrency,  double amount,  String expensesName,  DateTime? selectedDate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ExpensesState() when $default != null:
return $default(_that.selectedExpense,_that.selectedCurrency,_that.amount,_that.expensesName,_that.selectedDate);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ExpenseCategoriesDto? selectedExpense,  Currency? selectedCurrency,  double amount,  String expensesName,  DateTime? selectedDate)  $default,) {final _that = this;
switch (_that) {
case _ExpensesState():
return $default(_that.selectedExpense,_that.selectedCurrency,_that.amount,_that.expensesName,_that.selectedDate);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ExpenseCategoriesDto? selectedExpense,  Currency? selectedCurrency,  double amount,  String expensesName,  DateTime? selectedDate)?  $default,) {final _that = this;
switch (_that) {
case _ExpensesState() when $default != null:
return $default(_that.selectedExpense,_that.selectedCurrency,_that.amount,_that.expensesName,_that.selectedDate);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ExpensesState extends ExpensesState {
  const _ExpensesState({this.selectedExpense, this.selectedCurrency, this.amount = 0.00, this.expensesName = '', this.selectedDate}): super._();
  factory _ExpensesState.fromJson(Map<String, dynamic> json) => _$ExpensesStateFromJson(json);

@override final  ExpenseCategoriesDto? selectedExpense;
@override final  Currency? selectedCurrency;
@override@JsonKey() final  double amount;
@override@JsonKey() final  String expensesName;
@override final  DateTime? selectedDate;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ExpensesState&&(identical(other.selectedExpense, selectedExpense) || other.selectedExpense == selectedExpense)&&(identical(other.selectedCurrency, selectedCurrency) || other.selectedCurrency == selectedCurrency)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.expensesName, expensesName) || other.expensesName == expensesName)&&(identical(other.selectedDate, selectedDate) || other.selectedDate == selectedDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,selectedExpense,selectedCurrency,amount,expensesName,selectedDate);

@override
String toString() {
  return 'ExpensesState(selectedExpense: $selectedExpense, selectedCurrency: $selectedCurrency, amount: $amount, expensesName: $expensesName, selectedDate: $selectedDate)';
}


}

/// @nodoc
abstract mixin class _$ExpensesStateCopyWith<$Res> implements $ExpensesStateCopyWith<$Res> {
  factory _$ExpensesStateCopyWith(_ExpensesState value, $Res Function(_ExpensesState) _then) = __$ExpensesStateCopyWithImpl;
@override @useResult
$Res call({
 ExpenseCategoriesDto? selectedExpense, Currency? selectedCurrency, double amount, String expensesName, DateTime? selectedDate
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
@override @pragma('vm:prefer-inline') $Res call({Object? selectedExpense = freezed,Object? selectedCurrency = freezed,Object? amount = null,Object? expensesName = null,Object? selectedDate = freezed,}) {
  return _then(_ExpensesState(
selectedExpense: freezed == selectedExpense ? _self.selectedExpense : selectedExpense // ignore: cast_nullable_to_non_nullable
as ExpenseCategoriesDto?,selectedCurrency: freezed == selectedCurrency ? _self.selectedCurrency : selectedCurrency // ignore: cast_nullable_to_non_nullable
as Currency?,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,expensesName: null == expensesName ? _self.expensesName : expensesName // ignore: cast_nullable_to_non_nullable
as String,selectedDate: freezed == selectedDate ? _self.selectedDate : selectedDate // ignore: cast_nullable_to_non_nullable
as DateTime?,
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
