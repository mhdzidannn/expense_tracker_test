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

 List<ExpenseDto> get listOfExpenses; bool get isCallingApi;
/// Create a copy of StatsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StatsStateCopyWith<StatsState> get copyWith => _$StatsStateCopyWithImpl<StatsState>(this as StatsState, _$identity);

  /// Serializes this StatsState to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StatsState&&const DeepCollectionEquality().equals(other.listOfExpenses, listOfExpenses)&&(identical(other.isCallingApi, isCallingApi) || other.isCallingApi == isCallingApi));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(listOfExpenses),isCallingApi);

@override
String toString() {
  return 'StatsState(listOfExpenses: $listOfExpenses, isCallingApi: $isCallingApi)';
}


}

/// @nodoc
abstract mixin class $StatsStateCopyWith<$Res>  {
  factory $StatsStateCopyWith(StatsState value, $Res Function(StatsState) _then) = _$StatsStateCopyWithImpl;
@useResult
$Res call({
 List<ExpenseDto> listOfExpenses, bool isCallingApi
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
@pragma('vm:prefer-inline') @override $Res call({Object? listOfExpenses = null,Object? isCallingApi = null,}) {
  return _then(_self.copyWith(
listOfExpenses: null == listOfExpenses ? _self.listOfExpenses : listOfExpenses // ignore: cast_nullable_to_non_nullable
as List<ExpenseDto>,isCallingApi: null == isCallingApi ? _self.isCallingApi : isCallingApi // ignore: cast_nullable_to_non_nullable
as bool,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<ExpenseDto> listOfExpenses,  bool isCallingApi)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StatsState() when $default != null:
return $default(_that.listOfExpenses,_that.isCallingApi);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<ExpenseDto> listOfExpenses,  bool isCallingApi)  $default,) {final _that = this;
switch (_that) {
case _StatsState():
return $default(_that.listOfExpenses,_that.isCallingApi);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<ExpenseDto> listOfExpenses,  bool isCallingApi)?  $default,) {final _that = this;
switch (_that) {
case _StatsState() when $default != null:
return $default(_that.listOfExpenses,_that.isCallingApi);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StatsState extends StatsState {
  const _StatsState({final  List<ExpenseDto> listOfExpenses = const [], this.isCallingApi = false}): _listOfExpenses = listOfExpenses,super._();
  factory _StatsState.fromJson(Map<String, dynamic> json) => _$StatsStateFromJson(json);

 final  List<ExpenseDto> _listOfExpenses;
@override@JsonKey() List<ExpenseDto> get listOfExpenses {
  if (_listOfExpenses is EqualUnmodifiableListView) return _listOfExpenses;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_listOfExpenses);
}

@override@JsonKey() final  bool isCallingApi;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StatsState&&const DeepCollectionEquality().equals(other._listOfExpenses, _listOfExpenses)&&(identical(other.isCallingApi, isCallingApi) || other.isCallingApi == isCallingApi));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_listOfExpenses),isCallingApi);

@override
String toString() {
  return 'StatsState(listOfExpenses: $listOfExpenses, isCallingApi: $isCallingApi)';
}


}

/// @nodoc
abstract mixin class _$StatsStateCopyWith<$Res> implements $StatsStateCopyWith<$Res> {
  factory _$StatsStateCopyWith(_StatsState value, $Res Function(_StatsState) _then) = __$StatsStateCopyWithImpl;
@override @useResult
$Res call({
 List<ExpenseDto> listOfExpenses, bool isCallingApi
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
@override @pragma('vm:prefer-inline') $Res call({Object? listOfExpenses = null,Object? isCallingApi = null,}) {
  return _then(_StatsState(
listOfExpenses: null == listOfExpenses ? _self._listOfExpenses : listOfExpenses // ignore: cast_nullable_to_non_nullable
as List<ExpenseDto>,isCallingApi: null == isCallingApi ? _self.isCallingApi : isCallingApi // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
