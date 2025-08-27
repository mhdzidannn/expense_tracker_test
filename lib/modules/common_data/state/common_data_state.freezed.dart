// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'common_data_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CommonDataState {

 List<ExpenseCategoriesDto> get expenses;
/// Create a copy of CommonDataState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CommonDataStateCopyWith<CommonDataState> get copyWith => _$CommonDataStateCopyWithImpl<CommonDataState>(this as CommonDataState, _$identity);

  /// Serializes this CommonDataState to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CommonDataState&&const DeepCollectionEquality().equals(other.expenses, expenses));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(expenses));

@override
String toString() {
  return 'CommonDataState(expenses: $expenses)';
}


}

/// @nodoc
abstract mixin class $CommonDataStateCopyWith<$Res>  {
  factory $CommonDataStateCopyWith(CommonDataState value, $Res Function(CommonDataState) _then) = _$CommonDataStateCopyWithImpl;
@useResult
$Res call({
 List<ExpenseCategoriesDto> expenses
});




}
/// @nodoc
class _$CommonDataStateCopyWithImpl<$Res>
    implements $CommonDataStateCopyWith<$Res> {
  _$CommonDataStateCopyWithImpl(this._self, this._then);

  final CommonDataState _self;
  final $Res Function(CommonDataState) _then;

/// Create a copy of CommonDataState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? expenses = null,}) {
  return _then(_self.copyWith(
expenses: null == expenses ? _self.expenses : expenses // ignore: cast_nullable_to_non_nullable
as List<ExpenseCategoriesDto>,
  ));
}

}


/// Adds pattern-matching-related methods to [CommonDataState].
extension CommonDataStatePatterns on CommonDataState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CommonDataState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CommonDataState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CommonDataState value)  $default,){
final _that = this;
switch (_that) {
case _CommonDataState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CommonDataState value)?  $default,){
final _that = this;
switch (_that) {
case _CommonDataState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<ExpenseCategoriesDto> expenses)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CommonDataState() when $default != null:
return $default(_that.expenses);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<ExpenseCategoriesDto> expenses)  $default,) {final _that = this;
switch (_that) {
case _CommonDataState():
return $default(_that.expenses);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<ExpenseCategoriesDto> expenses)?  $default,) {final _that = this;
switch (_that) {
case _CommonDataState() when $default != null:
return $default(_that.expenses);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CommonDataState implements CommonDataState {
  const _CommonDataState({required final  List<ExpenseCategoriesDto> expenses}): _expenses = expenses;
  factory _CommonDataState.fromJson(Map<String, dynamic> json) => _$CommonDataStateFromJson(json);

 final  List<ExpenseCategoriesDto> _expenses;
@override List<ExpenseCategoriesDto> get expenses {
  if (_expenses is EqualUnmodifiableListView) return _expenses;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_expenses);
}


/// Create a copy of CommonDataState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CommonDataStateCopyWith<_CommonDataState> get copyWith => __$CommonDataStateCopyWithImpl<_CommonDataState>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CommonDataStateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CommonDataState&&const DeepCollectionEquality().equals(other._expenses, _expenses));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_expenses));

@override
String toString() {
  return 'CommonDataState(expenses: $expenses)';
}


}

/// @nodoc
abstract mixin class _$CommonDataStateCopyWith<$Res> implements $CommonDataStateCopyWith<$Res> {
  factory _$CommonDataStateCopyWith(_CommonDataState value, $Res Function(_CommonDataState) _then) = __$CommonDataStateCopyWithImpl;
@override @useResult
$Res call({
 List<ExpenseCategoriesDto> expenses
});




}
/// @nodoc
class __$CommonDataStateCopyWithImpl<$Res>
    implements _$CommonDataStateCopyWith<$Res> {
  __$CommonDataStateCopyWithImpl(this._self, this._then);

  final _CommonDataState _self;
  final $Res Function(_CommonDataState) _then;

/// Create a copy of CommonDataState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? expenses = null,}) {
  return _then(_CommonDataState(
expenses: null == expenses ? _self._expenses : expenses // ignore: cast_nullable_to_non_nullable
as List<ExpenseCategoriesDto>,
  ));
}


}

// dart format on
