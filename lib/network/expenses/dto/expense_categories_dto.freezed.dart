// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'expense_categories_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ExpenseCategoriesDto {

 String get name; double? get recommendedPercentage; bool get isFixed;
/// Create a copy of ExpenseCategoriesDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExpenseCategoriesDtoCopyWith<ExpenseCategoriesDto> get copyWith => _$ExpenseCategoriesDtoCopyWithImpl<ExpenseCategoriesDto>(this as ExpenseCategoriesDto, _$identity);

  /// Serializes this ExpenseCategoriesDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExpenseCategoriesDto&&(identical(other.name, name) || other.name == name)&&(identical(other.recommendedPercentage, recommendedPercentage) || other.recommendedPercentage == recommendedPercentage)&&(identical(other.isFixed, isFixed) || other.isFixed == isFixed));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,recommendedPercentage,isFixed);

@override
String toString() {
  return 'ExpenseCategoriesDto(name: $name, recommendedPercentage: $recommendedPercentage, isFixed: $isFixed)';
}


}

/// @nodoc
abstract mixin class $ExpenseCategoriesDtoCopyWith<$Res>  {
  factory $ExpenseCategoriesDtoCopyWith(ExpenseCategoriesDto value, $Res Function(ExpenseCategoriesDto) _then) = _$ExpenseCategoriesDtoCopyWithImpl;
@useResult
$Res call({
 String name, double? recommendedPercentage, bool isFixed
});




}
/// @nodoc
class _$ExpenseCategoriesDtoCopyWithImpl<$Res>
    implements $ExpenseCategoriesDtoCopyWith<$Res> {
  _$ExpenseCategoriesDtoCopyWithImpl(this._self, this._then);

  final ExpenseCategoriesDto _self;
  final $Res Function(ExpenseCategoriesDto) _then;

/// Create a copy of ExpenseCategoriesDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? recommendedPercentage = freezed,Object? isFixed = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,recommendedPercentage: freezed == recommendedPercentage ? _self.recommendedPercentage : recommendedPercentage // ignore: cast_nullable_to_non_nullable
as double?,isFixed: null == isFixed ? _self.isFixed : isFixed // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [ExpenseCategoriesDto].
extension ExpenseCategoriesDtoPatterns on ExpenseCategoriesDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ExpenseCategoriesDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ExpenseCategoriesDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ExpenseCategoriesDto value)  $default,){
final _that = this;
switch (_that) {
case _ExpenseCategoriesDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ExpenseCategoriesDto value)?  $default,){
final _that = this;
switch (_that) {
case _ExpenseCategoriesDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  double? recommendedPercentage,  bool isFixed)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ExpenseCategoriesDto() when $default != null:
return $default(_that.name,_that.recommendedPercentage,_that.isFixed);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  double? recommendedPercentage,  bool isFixed)  $default,) {final _that = this;
switch (_that) {
case _ExpenseCategoriesDto():
return $default(_that.name,_that.recommendedPercentage,_that.isFixed);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  double? recommendedPercentage,  bool isFixed)?  $default,) {final _that = this;
switch (_that) {
case _ExpenseCategoriesDto() when $default != null:
return $default(_that.name,_that.recommendedPercentage,_that.isFixed);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ExpenseCategoriesDto implements ExpenseCategoriesDto {
  const _ExpenseCategoriesDto({required this.name, this.recommendedPercentage, this.isFixed = true});
  factory _ExpenseCategoriesDto.fromJson(Map<String, dynamic> json) => _$ExpenseCategoriesDtoFromJson(json);

@override final  String name;
@override final  double? recommendedPercentage;
@override@JsonKey() final  bool isFixed;

/// Create a copy of ExpenseCategoriesDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ExpenseCategoriesDtoCopyWith<_ExpenseCategoriesDto> get copyWith => __$ExpenseCategoriesDtoCopyWithImpl<_ExpenseCategoriesDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ExpenseCategoriesDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ExpenseCategoriesDto&&(identical(other.name, name) || other.name == name)&&(identical(other.recommendedPercentage, recommendedPercentage) || other.recommendedPercentage == recommendedPercentage)&&(identical(other.isFixed, isFixed) || other.isFixed == isFixed));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,recommendedPercentage,isFixed);

@override
String toString() {
  return 'ExpenseCategoriesDto(name: $name, recommendedPercentage: $recommendedPercentage, isFixed: $isFixed)';
}


}

/// @nodoc
abstract mixin class _$ExpenseCategoriesDtoCopyWith<$Res> implements $ExpenseCategoriesDtoCopyWith<$Res> {
  factory _$ExpenseCategoriesDtoCopyWith(_ExpenseCategoriesDto value, $Res Function(_ExpenseCategoriesDto) _then) = __$ExpenseCategoriesDtoCopyWithImpl;
@override @useResult
$Res call({
 String name, double? recommendedPercentage, bool isFixed
});




}
/// @nodoc
class __$ExpenseCategoriesDtoCopyWithImpl<$Res>
    implements _$ExpenseCategoriesDtoCopyWith<$Res> {
  __$ExpenseCategoriesDtoCopyWithImpl(this._self, this._then);

  final _ExpenseCategoriesDto _self;
  final $Res Function(_ExpenseCategoriesDto) _then;

/// Create a copy of ExpenseCategoriesDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? recommendedPercentage = freezed,Object? isFixed = null,}) {
  return _then(_ExpenseCategoriesDto(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,recommendedPercentage: freezed == recommendedPercentage ? _self.recommendedPercentage : recommendedPercentage // ignore: cast_nullable_to_non_nullable
as double?,isFixed: null == isFixed ? _self.isFixed : isFixed // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
