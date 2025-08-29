// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'monthly_budget_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MonthlyBudgetDto {

 int get month; int get year; double get amount;@JsonKey(includeToJson: true, includeFromJson: true) Currency get currency; String? get id; DateTime? get createdAt; DateTime? get updatedAt;
/// Create a copy of MonthlyBudgetDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MonthlyBudgetDtoCopyWith<MonthlyBudgetDto> get copyWith => _$MonthlyBudgetDtoCopyWithImpl<MonthlyBudgetDto>(this as MonthlyBudgetDto, _$identity);

  /// Serializes this MonthlyBudgetDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MonthlyBudgetDto&&(identical(other.month, month) || other.month == month)&&(identical(other.year, year) || other.year == year)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,month,year,amount,currency,id,createdAt,updatedAt);

@override
String toString() {
  return 'MonthlyBudgetDto(month: $month, year: $year, amount: $amount, currency: $currency, id: $id, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $MonthlyBudgetDtoCopyWith<$Res>  {
  factory $MonthlyBudgetDtoCopyWith(MonthlyBudgetDto value, $Res Function(MonthlyBudgetDto) _then) = _$MonthlyBudgetDtoCopyWithImpl;
@useResult
$Res call({
 int month, int year, double amount,@JsonKey(includeToJson: true, includeFromJson: true) Currency currency, String? id, DateTime? createdAt, DateTime? updatedAt
});




}
/// @nodoc
class _$MonthlyBudgetDtoCopyWithImpl<$Res>
    implements $MonthlyBudgetDtoCopyWith<$Res> {
  _$MonthlyBudgetDtoCopyWithImpl(this._self, this._then);

  final MonthlyBudgetDto _self;
  final $Res Function(MonthlyBudgetDto) _then;

/// Create a copy of MonthlyBudgetDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? month = null,Object? year = null,Object? amount = null,Object? currency = null,Object? id = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
month: null == month ? _self.month : month // ignore: cast_nullable_to_non_nullable
as int,year: null == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as int,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as Currency,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [MonthlyBudgetDto].
extension MonthlyBudgetDtoPatterns on MonthlyBudgetDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MonthlyBudgetDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MonthlyBudgetDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MonthlyBudgetDto value)  $default,){
final _that = this;
switch (_that) {
case _MonthlyBudgetDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MonthlyBudgetDto value)?  $default,){
final _that = this;
switch (_that) {
case _MonthlyBudgetDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int month,  int year,  double amount, @JsonKey(includeToJson: true, includeFromJson: true)  Currency currency,  String? id,  DateTime? createdAt,  DateTime? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MonthlyBudgetDto() when $default != null:
return $default(_that.month,_that.year,_that.amount,_that.currency,_that.id,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int month,  int year,  double amount, @JsonKey(includeToJson: true, includeFromJson: true)  Currency currency,  String? id,  DateTime? createdAt,  DateTime? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _MonthlyBudgetDto():
return $default(_that.month,_that.year,_that.amount,_that.currency,_that.id,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int month,  int year,  double amount, @JsonKey(includeToJson: true, includeFromJson: true)  Currency currency,  String? id,  DateTime? createdAt,  DateTime? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _MonthlyBudgetDto() when $default != null:
return $default(_that.month,_that.year,_that.amount,_that.currency,_that.id,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _MonthlyBudgetDto implements MonthlyBudgetDto {
  const _MonthlyBudgetDto({required this.month, required this.year, required this.amount, @JsonKey(includeToJson: true, includeFromJson: true) this.currency = Currency.myr, this.id, this.createdAt, this.updatedAt});
  factory _MonthlyBudgetDto.fromJson(Map<String, dynamic> json) => _$MonthlyBudgetDtoFromJson(json);

@override final  int month;
@override final  int year;
@override final  double amount;
@override@JsonKey(includeToJson: true, includeFromJson: true) final  Currency currency;
@override final  String? id;
@override final  DateTime? createdAt;
@override final  DateTime? updatedAt;

/// Create a copy of MonthlyBudgetDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MonthlyBudgetDtoCopyWith<_MonthlyBudgetDto> get copyWith => __$MonthlyBudgetDtoCopyWithImpl<_MonthlyBudgetDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MonthlyBudgetDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MonthlyBudgetDto&&(identical(other.month, month) || other.month == month)&&(identical(other.year, year) || other.year == year)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,month,year,amount,currency,id,createdAt,updatedAt);

@override
String toString() {
  return 'MonthlyBudgetDto(month: $month, year: $year, amount: $amount, currency: $currency, id: $id, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$MonthlyBudgetDtoCopyWith<$Res> implements $MonthlyBudgetDtoCopyWith<$Res> {
  factory _$MonthlyBudgetDtoCopyWith(_MonthlyBudgetDto value, $Res Function(_MonthlyBudgetDto) _then) = __$MonthlyBudgetDtoCopyWithImpl;
@override @useResult
$Res call({
 int month, int year, double amount,@JsonKey(includeToJson: true, includeFromJson: true) Currency currency, String? id, DateTime? createdAt, DateTime? updatedAt
});




}
/// @nodoc
class __$MonthlyBudgetDtoCopyWithImpl<$Res>
    implements _$MonthlyBudgetDtoCopyWith<$Res> {
  __$MonthlyBudgetDtoCopyWithImpl(this._self, this._then);

  final _MonthlyBudgetDto _self;
  final $Res Function(_MonthlyBudgetDto) _then;

/// Create a copy of MonthlyBudgetDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? month = null,Object? year = null,Object? amount = null,Object? currency = null,Object? id = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_MonthlyBudgetDto(
month: null == month ? _self.month : month // ignore: cast_nullable_to_non_nullable
as int,year: null == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as int,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as Currency,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
