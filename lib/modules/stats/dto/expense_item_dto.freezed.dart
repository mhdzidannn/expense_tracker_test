// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'expense_item_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ExpenseItemDto {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExpenseItemDto);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ExpenseItemDto()';
}


}

/// @nodoc
class $ExpenseItemDtoCopyWith<$Res>  {
$ExpenseItemDtoCopyWith(ExpenseItemDto _, $Res Function(ExpenseItemDto) __);
}


/// Adds pattern-matching-related methods to [ExpenseItemDto].
extension ExpenseItemDtoPatterns on ExpenseItemDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Header value)?  header,TResult Function( _Subheader value)?  subheader,TResult Function( _Expense value)?  expense,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Header() when header != null:
return header(_that);case _Subheader() when subheader != null:
return subheader(_that);case _Expense() when expense != null:
return expense(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Header value)  header,required TResult Function( _Subheader value)  subheader,required TResult Function( _Expense value)  expense,}){
final _that = this;
switch (_that) {
case _Header():
return header(_that);case _Subheader():
return subheader(_that);case _Expense():
return expense(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Header value)?  header,TResult? Function( _Subheader value)?  subheader,TResult? Function( _Expense value)?  expense,}){
final _that = this;
switch (_that) {
case _Header() when header != null:
return header(_that);case _Subheader() when subheader != null:
return subheader(_that);case _Expense() when expense != null:
return expense(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String input)?  header,TResult Function( String input)?  subheader,TResult Function( ExpenseDto expense)?  expense,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Header() when header != null:
return header(_that.input);case _Subheader() when subheader != null:
return subheader(_that.input);case _Expense() when expense != null:
return expense(_that.expense);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String input)  header,required TResult Function( String input)  subheader,required TResult Function( ExpenseDto expense)  expense,}) {final _that = this;
switch (_that) {
case _Header():
return header(_that.input);case _Subheader():
return subheader(_that.input);case _Expense():
return expense(_that.expense);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String input)?  header,TResult? Function( String input)?  subheader,TResult? Function( ExpenseDto expense)?  expense,}) {final _that = this;
switch (_that) {
case _Header() when header != null:
return header(_that.input);case _Subheader() when subheader != null:
return subheader(_that.input);case _Expense() when expense != null:
return expense(_that.expense);case _:
  return null;

}
}

}

/// @nodoc


class _Header implements ExpenseItemDto {
  const _Header(this.input);
  

 final  String input;

/// Create a copy of ExpenseItemDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HeaderCopyWith<_Header> get copyWith => __$HeaderCopyWithImpl<_Header>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Header&&(identical(other.input, input) || other.input == input));
}


@override
int get hashCode => Object.hash(runtimeType,input);

@override
String toString() {
  return 'ExpenseItemDto.header(input: $input)';
}


}

/// @nodoc
abstract mixin class _$HeaderCopyWith<$Res> implements $ExpenseItemDtoCopyWith<$Res> {
  factory _$HeaderCopyWith(_Header value, $Res Function(_Header) _then) = __$HeaderCopyWithImpl;
@useResult
$Res call({
 String input
});




}
/// @nodoc
class __$HeaderCopyWithImpl<$Res>
    implements _$HeaderCopyWith<$Res> {
  __$HeaderCopyWithImpl(this._self, this._then);

  final _Header _self;
  final $Res Function(_Header) _then;

/// Create a copy of ExpenseItemDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? input = null,}) {
  return _then(_Header(
null == input ? _self.input : input // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _Subheader implements ExpenseItemDto {
  const _Subheader(this.input);
  

 final  String input;

/// Create a copy of ExpenseItemDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubheaderCopyWith<_Subheader> get copyWith => __$SubheaderCopyWithImpl<_Subheader>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Subheader&&(identical(other.input, input) || other.input == input));
}


@override
int get hashCode => Object.hash(runtimeType,input);

@override
String toString() {
  return 'ExpenseItemDto.subheader(input: $input)';
}


}

/// @nodoc
abstract mixin class _$SubheaderCopyWith<$Res> implements $ExpenseItemDtoCopyWith<$Res> {
  factory _$SubheaderCopyWith(_Subheader value, $Res Function(_Subheader) _then) = __$SubheaderCopyWithImpl;
@useResult
$Res call({
 String input
});




}
/// @nodoc
class __$SubheaderCopyWithImpl<$Res>
    implements _$SubheaderCopyWith<$Res> {
  __$SubheaderCopyWithImpl(this._self, this._then);

  final _Subheader _self;
  final $Res Function(_Subheader) _then;

/// Create a copy of ExpenseItemDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? input = null,}) {
  return _then(_Subheader(
null == input ? _self.input : input // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _Expense implements ExpenseItemDto {
  const _Expense(this.expense);
  

 final  ExpenseDto expense;

/// Create a copy of ExpenseItemDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ExpenseCopyWith<_Expense> get copyWith => __$ExpenseCopyWithImpl<_Expense>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Expense&&(identical(other.expense, expense) || other.expense == expense));
}


@override
int get hashCode => Object.hash(runtimeType,expense);

@override
String toString() {
  return 'ExpenseItemDto.expense(expense: $expense)';
}


}

/// @nodoc
abstract mixin class _$ExpenseCopyWith<$Res> implements $ExpenseItemDtoCopyWith<$Res> {
  factory _$ExpenseCopyWith(_Expense value, $Res Function(_Expense) _then) = __$ExpenseCopyWithImpl;
@useResult
$Res call({
 ExpenseDto expense
});


$ExpenseDtoCopyWith<$Res> get expense;

}
/// @nodoc
class __$ExpenseCopyWithImpl<$Res>
    implements _$ExpenseCopyWith<$Res> {
  __$ExpenseCopyWithImpl(this._self, this._then);

  final _Expense _self;
  final $Res Function(_Expense) _then;

/// Create a copy of ExpenseItemDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? expense = null,}) {
  return _then(_Expense(
null == expense ? _self.expense : expense // ignore: cast_nullable_to_non_nullable
as ExpenseDto,
  ));
}

/// Create a copy of ExpenseItemDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ExpenseDtoCopyWith<$Res> get expense {
  
  return $ExpenseDtoCopyWith<$Res>(_self.expense, (value) {
    return _then(_self.copyWith(expense: value));
  });
}
}

// dart format on
