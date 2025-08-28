// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'expenses_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ExpenseDto {

 String get id;@JsonKey(includeToJson: true, includeFromJson: true) ExpenseCategoriesDto get selectedExpense;@JsonKey(includeToJson: true, includeFromJson: true) Currency get selectedCurrency; double get amount; String? get expensesName; DateTime get selectedDate; DateTime get createdAt; DateTime? get updatedAt;
/// Create a copy of ExpenseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExpenseDtoCopyWith<ExpenseDto> get copyWith => _$ExpenseDtoCopyWithImpl<ExpenseDto>(this as ExpenseDto, _$identity);

  /// Serializes this ExpenseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExpenseDto&&(identical(other.id, id) || other.id == id)&&(identical(other.selectedExpense, selectedExpense) || other.selectedExpense == selectedExpense)&&(identical(other.selectedCurrency, selectedCurrency) || other.selectedCurrency == selectedCurrency)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.expensesName, expensesName) || other.expensesName == expensesName)&&(identical(other.selectedDate, selectedDate) || other.selectedDate == selectedDate)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,selectedExpense,selectedCurrency,amount,expensesName,selectedDate,createdAt,updatedAt);

@override
String toString() {
  return 'ExpenseDto(id: $id, selectedExpense: $selectedExpense, selectedCurrency: $selectedCurrency, amount: $amount, expensesName: $expensesName, selectedDate: $selectedDate, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $ExpenseDtoCopyWith<$Res>  {
  factory $ExpenseDtoCopyWith(ExpenseDto value, $Res Function(ExpenseDto) _then) = _$ExpenseDtoCopyWithImpl;
@useResult
$Res call({
 String id,@JsonKey(includeToJson: true, includeFromJson: true) ExpenseCategoriesDto selectedExpense,@JsonKey(includeToJson: true, includeFromJson: true) Currency selectedCurrency, double amount, String? expensesName, DateTime selectedDate, DateTime createdAt, DateTime? updatedAt
});


$ExpenseCategoriesDtoCopyWith<$Res> get selectedExpense;

}
/// @nodoc
class _$ExpenseDtoCopyWithImpl<$Res>
    implements $ExpenseDtoCopyWith<$Res> {
  _$ExpenseDtoCopyWithImpl(this._self, this._then);

  final ExpenseDto _self;
  final $Res Function(ExpenseDto) _then;

/// Create a copy of ExpenseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? selectedExpense = null,Object? selectedCurrency = null,Object? amount = null,Object? expensesName = freezed,Object? selectedDate = null,Object? createdAt = null,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,selectedExpense: null == selectedExpense ? _self.selectedExpense : selectedExpense // ignore: cast_nullable_to_non_nullable
as ExpenseCategoriesDto,selectedCurrency: null == selectedCurrency ? _self.selectedCurrency : selectedCurrency // ignore: cast_nullable_to_non_nullable
as Currency,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,expensesName: freezed == expensesName ? _self.expensesName : expensesName // ignore: cast_nullable_to_non_nullable
as String?,selectedDate: null == selectedDate ? _self.selectedDate : selectedDate // ignore: cast_nullable_to_non_nullable
as DateTime,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}
/// Create a copy of ExpenseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ExpenseCategoriesDtoCopyWith<$Res> get selectedExpense {
  
  return $ExpenseCategoriesDtoCopyWith<$Res>(_self.selectedExpense, (value) {
    return _then(_self.copyWith(selectedExpense: value));
  });
}
}


/// Adds pattern-matching-related methods to [ExpenseDto].
extension ExpenseDtoPatterns on ExpenseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ExpenseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ExpenseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ExpenseDto value)  $default,){
final _that = this;
switch (_that) {
case _ExpenseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ExpenseDto value)?  $default,){
final _that = this;
switch (_that) {
case _ExpenseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id, @JsonKey(includeToJson: true, includeFromJson: true)  ExpenseCategoriesDto selectedExpense, @JsonKey(includeToJson: true, includeFromJson: true)  Currency selectedCurrency,  double amount,  String? expensesName,  DateTime selectedDate,  DateTime createdAt,  DateTime? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ExpenseDto() when $default != null:
return $default(_that.id,_that.selectedExpense,_that.selectedCurrency,_that.amount,_that.expensesName,_that.selectedDate,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id, @JsonKey(includeToJson: true, includeFromJson: true)  ExpenseCategoriesDto selectedExpense, @JsonKey(includeToJson: true, includeFromJson: true)  Currency selectedCurrency,  double amount,  String? expensesName,  DateTime selectedDate,  DateTime createdAt,  DateTime? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _ExpenseDto():
return $default(_that.id,_that.selectedExpense,_that.selectedCurrency,_that.amount,_that.expensesName,_that.selectedDate,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id, @JsonKey(includeToJson: true, includeFromJson: true)  ExpenseCategoriesDto selectedExpense, @JsonKey(includeToJson: true, includeFromJson: true)  Currency selectedCurrency,  double amount,  String? expensesName,  DateTime selectedDate,  DateTime createdAt,  DateTime? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _ExpenseDto() when $default != null:
return $default(_that.id,_that.selectedExpense,_that.selectedCurrency,_that.amount,_that.expensesName,_that.selectedDate,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _ExpenseDto implements ExpenseDto {
  const _ExpenseDto({required this.id, @JsonKey(includeToJson: true, includeFromJson: true) required this.selectedExpense, @JsonKey(includeToJson: true, includeFromJson: true) required this.selectedCurrency, this.amount = 0.00, this.expensesName, required this.selectedDate, required this.createdAt, this.updatedAt});
  factory _ExpenseDto.fromJson(Map<String, dynamic> json) => _$ExpenseDtoFromJson(json);

@override final  String id;
@override@JsonKey(includeToJson: true, includeFromJson: true) final  ExpenseCategoriesDto selectedExpense;
@override@JsonKey(includeToJson: true, includeFromJson: true) final  Currency selectedCurrency;
@override@JsonKey() final  double amount;
@override final  String? expensesName;
@override final  DateTime selectedDate;
@override final  DateTime createdAt;
@override final  DateTime? updatedAt;

/// Create a copy of ExpenseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ExpenseDtoCopyWith<_ExpenseDto> get copyWith => __$ExpenseDtoCopyWithImpl<_ExpenseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ExpenseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ExpenseDto&&(identical(other.id, id) || other.id == id)&&(identical(other.selectedExpense, selectedExpense) || other.selectedExpense == selectedExpense)&&(identical(other.selectedCurrency, selectedCurrency) || other.selectedCurrency == selectedCurrency)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.expensesName, expensesName) || other.expensesName == expensesName)&&(identical(other.selectedDate, selectedDate) || other.selectedDate == selectedDate)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,selectedExpense,selectedCurrency,amount,expensesName,selectedDate,createdAt,updatedAt);

@override
String toString() {
  return 'ExpenseDto(id: $id, selectedExpense: $selectedExpense, selectedCurrency: $selectedCurrency, amount: $amount, expensesName: $expensesName, selectedDate: $selectedDate, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$ExpenseDtoCopyWith<$Res> implements $ExpenseDtoCopyWith<$Res> {
  factory _$ExpenseDtoCopyWith(_ExpenseDto value, $Res Function(_ExpenseDto) _then) = __$ExpenseDtoCopyWithImpl;
@override @useResult
$Res call({
 String id,@JsonKey(includeToJson: true, includeFromJson: true) ExpenseCategoriesDto selectedExpense,@JsonKey(includeToJson: true, includeFromJson: true) Currency selectedCurrency, double amount, String? expensesName, DateTime selectedDate, DateTime createdAt, DateTime? updatedAt
});


@override $ExpenseCategoriesDtoCopyWith<$Res> get selectedExpense;

}
/// @nodoc
class __$ExpenseDtoCopyWithImpl<$Res>
    implements _$ExpenseDtoCopyWith<$Res> {
  __$ExpenseDtoCopyWithImpl(this._self, this._then);

  final _ExpenseDto _self;
  final $Res Function(_ExpenseDto) _then;

/// Create a copy of ExpenseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? selectedExpense = null,Object? selectedCurrency = null,Object? amount = null,Object? expensesName = freezed,Object? selectedDate = null,Object? createdAt = null,Object? updatedAt = freezed,}) {
  return _then(_ExpenseDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,selectedExpense: null == selectedExpense ? _self.selectedExpense : selectedExpense // ignore: cast_nullable_to_non_nullable
as ExpenseCategoriesDto,selectedCurrency: null == selectedCurrency ? _self.selectedCurrency : selectedCurrency // ignore: cast_nullable_to_non_nullable
as Currency,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,expensesName: freezed == expensesName ? _self.expensesName : expensesName // ignore: cast_nullable_to_non_nullable
as String?,selectedDate: null == selectedDate ? _self.selectedDate : selectedDate // ignore: cast_nullable_to_non_nullable
as DateTime,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

/// Create a copy of ExpenseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ExpenseCategoriesDtoCopyWith<$Res> get selectedExpense {
  
  return $ExpenseCategoriesDtoCopyWith<$Res>(_self.selectedExpense, (value) {
    return _then(_self.copyWith(selectedExpense: value));
  });
}
}

// dart format on
