// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SettingsState {

 List<ExpenseCategoriesDto> get expensesCategories; Currency get selectedCurrency; double get monthlyBudget;
/// Create a copy of SettingsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SettingsStateCopyWith<SettingsState> get copyWith => _$SettingsStateCopyWithImpl<SettingsState>(this as SettingsState, _$identity);

  /// Serializes this SettingsState to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SettingsState&&const DeepCollectionEquality().equals(other.expensesCategories, expensesCategories)&&(identical(other.selectedCurrency, selectedCurrency) || other.selectedCurrency == selectedCurrency)&&(identical(other.monthlyBudget, monthlyBudget) || other.monthlyBudget == monthlyBudget));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(expensesCategories),selectedCurrency,monthlyBudget);

@override
String toString() {
  return 'SettingsState(expensesCategories: $expensesCategories, selectedCurrency: $selectedCurrency, monthlyBudget: $monthlyBudget)';
}


}

/// @nodoc
abstract mixin class $SettingsStateCopyWith<$Res>  {
  factory $SettingsStateCopyWith(SettingsState value, $Res Function(SettingsState) _then) = _$SettingsStateCopyWithImpl;
@useResult
$Res call({
 List<ExpenseCategoriesDto> expensesCategories, Currency selectedCurrency, double monthlyBudget
});




}
/// @nodoc
class _$SettingsStateCopyWithImpl<$Res>
    implements $SettingsStateCopyWith<$Res> {
  _$SettingsStateCopyWithImpl(this._self, this._then);

  final SettingsState _self;
  final $Res Function(SettingsState) _then;

/// Create a copy of SettingsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? expensesCategories = null,Object? selectedCurrency = null,Object? monthlyBudget = null,}) {
  return _then(_self.copyWith(
expensesCategories: null == expensesCategories ? _self.expensesCategories : expensesCategories // ignore: cast_nullable_to_non_nullable
as List<ExpenseCategoriesDto>,selectedCurrency: null == selectedCurrency ? _self.selectedCurrency : selectedCurrency // ignore: cast_nullable_to_non_nullable
as Currency,monthlyBudget: null == monthlyBudget ? _self.monthlyBudget : monthlyBudget // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [SettingsState].
extension SettingsStatePatterns on SettingsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SettingsState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SettingsState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SettingsState value)  $default,){
final _that = this;
switch (_that) {
case _SettingsState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SettingsState value)?  $default,){
final _that = this;
switch (_that) {
case _SettingsState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<ExpenseCategoriesDto> expensesCategories,  Currency selectedCurrency,  double monthlyBudget)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SettingsState() when $default != null:
return $default(_that.expensesCategories,_that.selectedCurrency,_that.monthlyBudget);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<ExpenseCategoriesDto> expensesCategories,  Currency selectedCurrency,  double monthlyBudget)  $default,) {final _that = this;
switch (_that) {
case _SettingsState():
return $default(_that.expensesCategories,_that.selectedCurrency,_that.monthlyBudget);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<ExpenseCategoriesDto> expensesCategories,  Currency selectedCurrency,  double monthlyBudget)?  $default,) {final _that = this;
switch (_that) {
case _SettingsState() when $default != null:
return $default(_that.expensesCategories,_that.selectedCurrency,_that.monthlyBudget);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SettingsState extends SettingsState {
  const _SettingsState({required final  List<ExpenseCategoriesDto> expensesCategories, this.selectedCurrency = Currency.myr, this.monthlyBudget = 0.0}): _expensesCategories = expensesCategories,super._();
  factory _SettingsState.fromJson(Map<String, dynamic> json) => _$SettingsStateFromJson(json);

 final  List<ExpenseCategoriesDto> _expensesCategories;
@override List<ExpenseCategoriesDto> get expensesCategories {
  if (_expensesCategories is EqualUnmodifiableListView) return _expensesCategories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_expensesCategories);
}

@override@JsonKey() final  Currency selectedCurrency;
@override@JsonKey() final  double monthlyBudget;

/// Create a copy of SettingsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SettingsStateCopyWith<_SettingsState> get copyWith => __$SettingsStateCopyWithImpl<_SettingsState>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SettingsStateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SettingsState&&const DeepCollectionEquality().equals(other._expensesCategories, _expensesCategories)&&(identical(other.selectedCurrency, selectedCurrency) || other.selectedCurrency == selectedCurrency)&&(identical(other.monthlyBudget, monthlyBudget) || other.monthlyBudget == monthlyBudget));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_expensesCategories),selectedCurrency,monthlyBudget);

@override
String toString() {
  return 'SettingsState(expensesCategories: $expensesCategories, selectedCurrency: $selectedCurrency, monthlyBudget: $monthlyBudget)';
}


}

/// @nodoc
abstract mixin class _$SettingsStateCopyWith<$Res> implements $SettingsStateCopyWith<$Res> {
  factory _$SettingsStateCopyWith(_SettingsState value, $Res Function(_SettingsState) _then) = __$SettingsStateCopyWithImpl;
@override @useResult
$Res call({
 List<ExpenseCategoriesDto> expensesCategories, Currency selectedCurrency, double monthlyBudget
});




}
/// @nodoc
class __$SettingsStateCopyWithImpl<$Res>
    implements _$SettingsStateCopyWith<$Res> {
  __$SettingsStateCopyWithImpl(this._self, this._then);

  final _SettingsState _self;
  final $Res Function(_SettingsState) _then;

/// Create a copy of SettingsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? expensesCategories = null,Object? selectedCurrency = null,Object? monthlyBudget = null,}) {
  return _then(_SettingsState(
expensesCategories: null == expensesCategories ? _self._expensesCategories : expensesCategories // ignore: cast_nullable_to_non_nullable
as List<ExpenseCategoriesDto>,selectedCurrency: null == selectedCurrency ? _self.selectedCurrency : selectedCurrency // ignore: cast_nullable_to_non_nullable
as Currency,monthlyBudget: null == monthlyBudget ? _self.monthlyBudget : monthlyBudget // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
