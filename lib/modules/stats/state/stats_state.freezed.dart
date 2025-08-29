// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stats_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StatsState {

 List<ExpenseDto> get listOfExpenses; bool get isCallingApi; bool get sortDateAscending; bool get sortAmountAscending; List<ExpenseCategoriesDto> get filteredListOfCategories; int? get filterByMonth; int? get filterByYear;
/// Create a copy of StatsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StatsStateCopyWith<StatsState> get copyWith => _$StatsStateCopyWithImpl<StatsState>(this as StatsState, _$identity);

  /// Serializes this StatsState to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StatsState&&const DeepCollectionEquality().equals(other.listOfExpenses, listOfExpenses)&&(identical(other.isCallingApi, isCallingApi) || other.isCallingApi == isCallingApi)&&(identical(other.sortDateAscending, sortDateAscending) || other.sortDateAscending == sortDateAscending)&&(identical(other.sortAmountAscending, sortAmountAscending) || other.sortAmountAscending == sortAmountAscending)&&const DeepCollectionEquality().equals(other.filteredListOfCategories, filteredListOfCategories)&&(identical(other.filterByMonth, filterByMonth) || other.filterByMonth == filterByMonth)&&(identical(other.filterByYear, filterByYear) || other.filterByYear == filterByYear));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(listOfExpenses),isCallingApi,sortDateAscending,sortAmountAscending,const DeepCollectionEquality().hash(filteredListOfCategories),filterByMonth,filterByYear);

@override
String toString() {
  return 'StatsState(listOfExpenses: $listOfExpenses, isCallingApi: $isCallingApi, sortDateAscending: $sortDateAscending, sortAmountAscending: $sortAmountAscending, filteredListOfCategories: $filteredListOfCategories, filterByMonth: $filterByMonth, filterByYear: $filterByYear)';
}


}

/// @nodoc
abstract mixin class $StatsStateCopyWith<$Res>  {
  factory $StatsStateCopyWith(StatsState value, $Res Function(StatsState) _then) = _$StatsStateCopyWithImpl;
@useResult
$Res call({
 List<ExpenseDto> listOfExpenses, bool isCallingApi, bool sortDateAscending, bool sortAmountAscending, List<ExpenseCategoriesDto> filteredListOfCategories, int? filterByMonth, int? filterByYear
});




}
/// @nodoc
class _$StatsStateCopyWithImpl<$Res>
    implements $StatsStateCopyWith<$Res> {
  _$StatsStateCopyWithImpl(this._self, this._then);

  final StatsState _self;
  final $Res Function(StatsState) _then;

/// Create a copy of StatsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? listOfExpenses = null,Object? isCallingApi = null,Object? sortDateAscending = null,Object? sortAmountAscending = null,Object? filteredListOfCategories = null,Object? filterByMonth = freezed,Object? filterByYear = freezed,}) {
  return _then(_self.copyWith(
listOfExpenses: null == listOfExpenses ? _self.listOfExpenses : listOfExpenses // ignore: cast_nullable_to_non_nullable
as List<ExpenseDto>,isCallingApi: null == isCallingApi ? _self.isCallingApi : isCallingApi // ignore: cast_nullable_to_non_nullable
as bool,sortDateAscending: null == sortDateAscending ? _self.sortDateAscending : sortDateAscending // ignore: cast_nullable_to_non_nullable
as bool,sortAmountAscending: null == sortAmountAscending ? _self.sortAmountAscending : sortAmountAscending // ignore: cast_nullable_to_non_nullable
as bool,filteredListOfCategories: null == filteredListOfCategories ? _self.filteredListOfCategories : filteredListOfCategories // ignore: cast_nullable_to_non_nullable
as List<ExpenseCategoriesDto>,filterByMonth: freezed == filterByMonth ? _self.filterByMonth : filterByMonth // ignore: cast_nullable_to_non_nullable
as int?,filterByYear: freezed == filterByYear ? _self.filterByYear : filterByYear // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [StatsState].
extension StatsStatePatterns on StatsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StatsState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StatsState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StatsState value)  $default,){
final _that = this;
switch (_that) {
case _StatsState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StatsState value)?  $default,){
final _that = this;
switch (_that) {
case _StatsState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<ExpenseDto> listOfExpenses,  bool isCallingApi,  bool sortDateAscending,  bool sortAmountAscending,  List<ExpenseCategoriesDto> filteredListOfCategories,  int? filterByMonth,  int? filterByYear)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StatsState() when $default != null:
return $default(_that.listOfExpenses,_that.isCallingApi,_that.sortDateAscending,_that.sortAmountAscending,_that.filteredListOfCategories,_that.filterByMonth,_that.filterByYear);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<ExpenseDto> listOfExpenses,  bool isCallingApi,  bool sortDateAscending,  bool sortAmountAscending,  List<ExpenseCategoriesDto> filteredListOfCategories,  int? filterByMonth,  int? filterByYear)  $default,) {final _that = this;
switch (_that) {
case _StatsState():
return $default(_that.listOfExpenses,_that.isCallingApi,_that.sortDateAscending,_that.sortAmountAscending,_that.filteredListOfCategories,_that.filterByMonth,_that.filterByYear);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<ExpenseDto> listOfExpenses,  bool isCallingApi,  bool sortDateAscending,  bool sortAmountAscending,  List<ExpenseCategoriesDto> filteredListOfCategories,  int? filterByMonth,  int? filterByYear)?  $default,) {final _that = this;
switch (_that) {
case _StatsState() when $default != null:
return $default(_that.listOfExpenses,_that.isCallingApi,_that.sortDateAscending,_that.sortAmountAscending,_that.filteredListOfCategories,_that.filterByMonth,_that.filterByYear);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StatsState extends StatsState {
  const _StatsState({final  List<ExpenseDto> listOfExpenses = const [], this.isCallingApi = false, this.sortDateAscending = false, this.sortAmountAscending = false, final  List<ExpenseCategoriesDto> filteredListOfCategories = const [], this.filterByMonth, this.filterByYear}): _listOfExpenses = listOfExpenses,_filteredListOfCategories = filteredListOfCategories,super._();
  factory _StatsState.fromJson(Map<String, dynamic> json) => _$StatsStateFromJson(json);

 final  List<ExpenseDto> _listOfExpenses;
@override@JsonKey() List<ExpenseDto> get listOfExpenses {
  if (_listOfExpenses is EqualUnmodifiableListView) return _listOfExpenses;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_listOfExpenses);
}

@override@JsonKey() final  bool isCallingApi;
@override@JsonKey() final  bool sortDateAscending;
@override@JsonKey() final  bool sortAmountAscending;
 final  List<ExpenseCategoriesDto> _filteredListOfCategories;
@override@JsonKey() List<ExpenseCategoriesDto> get filteredListOfCategories {
  if (_filteredListOfCategories is EqualUnmodifiableListView) return _filteredListOfCategories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_filteredListOfCategories);
}

@override final  int? filterByMonth;
@override final  int? filterByYear;

/// Create a copy of StatsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StatsStateCopyWith<_StatsState> get copyWith => __$StatsStateCopyWithImpl<_StatsState>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StatsStateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StatsState&&const DeepCollectionEquality().equals(other._listOfExpenses, _listOfExpenses)&&(identical(other.isCallingApi, isCallingApi) || other.isCallingApi == isCallingApi)&&(identical(other.sortDateAscending, sortDateAscending) || other.sortDateAscending == sortDateAscending)&&(identical(other.sortAmountAscending, sortAmountAscending) || other.sortAmountAscending == sortAmountAscending)&&const DeepCollectionEquality().equals(other._filteredListOfCategories, _filteredListOfCategories)&&(identical(other.filterByMonth, filterByMonth) || other.filterByMonth == filterByMonth)&&(identical(other.filterByYear, filterByYear) || other.filterByYear == filterByYear));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_listOfExpenses),isCallingApi,sortDateAscending,sortAmountAscending,const DeepCollectionEquality().hash(_filteredListOfCategories),filterByMonth,filterByYear);

@override
String toString() {
  return 'StatsState(listOfExpenses: $listOfExpenses, isCallingApi: $isCallingApi, sortDateAscending: $sortDateAscending, sortAmountAscending: $sortAmountAscending, filteredListOfCategories: $filteredListOfCategories, filterByMonth: $filterByMonth, filterByYear: $filterByYear)';
}


}

/// @nodoc
abstract mixin class _$StatsStateCopyWith<$Res> implements $StatsStateCopyWith<$Res> {
  factory _$StatsStateCopyWith(_StatsState value, $Res Function(_StatsState) _then) = __$StatsStateCopyWithImpl;
@override @useResult
$Res call({
 List<ExpenseDto> listOfExpenses, bool isCallingApi, bool sortDateAscending, bool sortAmountAscending, List<ExpenseCategoriesDto> filteredListOfCategories, int? filterByMonth, int? filterByYear
});




}
/// @nodoc
class __$StatsStateCopyWithImpl<$Res>
    implements _$StatsStateCopyWith<$Res> {
  __$StatsStateCopyWithImpl(this._self, this._then);

  final _StatsState _self;
  final $Res Function(_StatsState) _then;

/// Create a copy of StatsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? listOfExpenses = null,Object? isCallingApi = null,Object? sortDateAscending = null,Object? sortAmountAscending = null,Object? filteredListOfCategories = null,Object? filterByMonth = freezed,Object? filterByYear = freezed,}) {
  return _then(_StatsState(
listOfExpenses: null == listOfExpenses ? _self._listOfExpenses : listOfExpenses // ignore: cast_nullable_to_non_nullable
as List<ExpenseDto>,isCallingApi: null == isCallingApi ? _self.isCallingApi : isCallingApi // ignore: cast_nullable_to_non_nullable
as bool,sortDateAscending: null == sortDateAscending ? _self.sortDateAscending : sortDateAscending // ignore: cast_nullable_to_non_nullable
as bool,sortAmountAscending: null == sortAmountAscending ? _self.sortAmountAscending : sortAmountAscending // ignore: cast_nullable_to_non_nullable
as bool,filteredListOfCategories: null == filteredListOfCategories ? _self._filteredListOfCategories : filteredListOfCategories // ignore: cast_nullable_to_non_nullable
as List<ExpenseCategoriesDto>,filterByMonth: freezed == filterByMonth ? _self.filterByMonth : filterByMonth // ignore: cast_nullable_to_non_nullable
as int?,filterByYear: freezed == filterByYear ? _self.filterByYear : filterByYear // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
