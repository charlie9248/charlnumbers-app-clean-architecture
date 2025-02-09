// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'number_trivia_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NumberTriviaEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String number) getNumberTriviaConcreteNumber,
    required TResult Function() getNumberTriviaRandomNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String number)? getNumberTriviaConcreteNumber,
    TResult? Function()? getNumberTriviaRandomNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String number)? getNumberTriviaConcreteNumber,
    TResult Function()? getNumberTriviaRandomNumber,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetNumberTriviaConcreteNumber value)
        getNumberTriviaConcreteNumber,
    required TResult Function(_GetNumberTriviaRandomNumber value)
        getNumberTriviaRandomNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetNumberTriviaConcreteNumber value)?
        getNumberTriviaConcreteNumber,
    TResult? Function(_GetNumberTriviaRandomNumber value)?
        getNumberTriviaRandomNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetNumberTriviaConcreteNumber value)?
        getNumberTriviaConcreteNumber,
    TResult Function(_GetNumberTriviaRandomNumber value)?
        getNumberTriviaRandomNumber,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NumberTriviaEventCopyWith<$Res> {
  factory $NumberTriviaEventCopyWith(
          NumberTriviaEvent value, $Res Function(NumberTriviaEvent) then) =
      _$NumberTriviaEventCopyWithImpl<$Res, NumberTriviaEvent>;
}

/// @nodoc
class _$NumberTriviaEventCopyWithImpl<$Res, $Val extends NumberTriviaEvent>
    implements $NumberTriviaEventCopyWith<$Res> {
  _$NumberTriviaEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NumberTriviaEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetNumberTriviaConcreteNumberImplCopyWith<$Res> {
  factory _$$GetNumberTriviaConcreteNumberImplCopyWith(
          _$GetNumberTriviaConcreteNumberImpl value,
          $Res Function(_$GetNumberTriviaConcreteNumberImpl) then) =
      __$$GetNumberTriviaConcreteNumberImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String number});
}

/// @nodoc
class __$$GetNumberTriviaConcreteNumberImplCopyWithImpl<$Res>
    extends _$NumberTriviaEventCopyWithImpl<$Res,
        _$GetNumberTriviaConcreteNumberImpl>
    implements _$$GetNumberTriviaConcreteNumberImplCopyWith<$Res> {
  __$$GetNumberTriviaConcreteNumberImplCopyWithImpl(
      _$GetNumberTriviaConcreteNumberImpl _value,
      $Res Function(_$GetNumberTriviaConcreteNumberImpl) _then)
      : super(_value, _then);

  /// Create a copy of NumberTriviaEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
  }) {
    return _then(_$GetNumberTriviaConcreteNumberImpl(
      null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetNumberTriviaConcreteNumberImpl
    implements _GetNumberTriviaConcreteNumber {
  const _$GetNumberTriviaConcreteNumberImpl(this.number);

  @override
  final String number;

  @override
  String toString() {
    return 'NumberTriviaEvent.getNumberTriviaConcreteNumber(number: $number)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetNumberTriviaConcreteNumberImpl &&
            (identical(other.number, number) || other.number == number));
  }

  @override
  int get hashCode => Object.hash(runtimeType, number);

  /// Create a copy of NumberTriviaEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetNumberTriviaConcreteNumberImplCopyWith<
          _$GetNumberTriviaConcreteNumberImpl>
      get copyWith => __$$GetNumberTriviaConcreteNumberImplCopyWithImpl<
          _$GetNumberTriviaConcreteNumberImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String number) getNumberTriviaConcreteNumber,
    required TResult Function() getNumberTriviaRandomNumber,
  }) {
    return getNumberTriviaConcreteNumber(number);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String number)? getNumberTriviaConcreteNumber,
    TResult? Function()? getNumberTriviaRandomNumber,
  }) {
    return getNumberTriviaConcreteNumber?.call(number);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String number)? getNumberTriviaConcreteNumber,
    TResult Function()? getNumberTriviaRandomNumber,
    required TResult orElse(),
  }) {
    if (getNumberTriviaConcreteNumber != null) {
      return getNumberTriviaConcreteNumber(number);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetNumberTriviaConcreteNumber value)
        getNumberTriviaConcreteNumber,
    required TResult Function(_GetNumberTriviaRandomNumber value)
        getNumberTriviaRandomNumber,
  }) {
    return getNumberTriviaConcreteNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetNumberTriviaConcreteNumber value)?
        getNumberTriviaConcreteNumber,
    TResult? Function(_GetNumberTriviaRandomNumber value)?
        getNumberTriviaRandomNumber,
  }) {
    return getNumberTriviaConcreteNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetNumberTriviaConcreteNumber value)?
        getNumberTriviaConcreteNumber,
    TResult Function(_GetNumberTriviaRandomNumber value)?
        getNumberTriviaRandomNumber,
    required TResult orElse(),
  }) {
    if (getNumberTriviaConcreteNumber != null) {
      return getNumberTriviaConcreteNumber(this);
    }
    return orElse();
  }
}

abstract class _GetNumberTriviaConcreteNumber implements NumberTriviaEvent {
  const factory _GetNumberTriviaConcreteNumber(final String number) =
      _$GetNumberTriviaConcreteNumberImpl;

  String get number;

  /// Create a copy of NumberTriviaEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetNumberTriviaConcreteNumberImplCopyWith<
          _$GetNumberTriviaConcreteNumberImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetNumberTriviaRandomNumberImplCopyWith<$Res> {
  factory _$$GetNumberTriviaRandomNumberImplCopyWith(
          _$GetNumberTriviaRandomNumberImpl value,
          $Res Function(_$GetNumberTriviaRandomNumberImpl) then) =
      __$$GetNumberTriviaRandomNumberImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetNumberTriviaRandomNumberImplCopyWithImpl<$Res>
    extends _$NumberTriviaEventCopyWithImpl<$Res,
        _$GetNumberTriviaRandomNumberImpl>
    implements _$$GetNumberTriviaRandomNumberImplCopyWith<$Res> {
  __$$GetNumberTriviaRandomNumberImplCopyWithImpl(
      _$GetNumberTriviaRandomNumberImpl _value,
      $Res Function(_$GetNumberTriviaRandomNumberImpl) _then)
      : super(_value, _then);

  /// Create a copy of NumberTriviaEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetNumberTriviaRandomNumberImpl
    implements _GetNumberTriviaRandomNumber {
  const _$GetNumberTriviaRandomNumberImpl();

  @override
  String toString() {
    return 'NumberTriviaEvent.getNumberTriviaRandomNumber()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetNumberTriviaRandomNumberImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String number) getNumberTriviaConcreteNumber,
    required TResult Function() getNumberTriviaRandomNumber,
  }) {
    return getNumberTriviaRandomNumber();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String number)? getNumberTriviaConcreteNumber,
    TResult? Function()? getNumberTriviaRandomNumber,
  }) {
    return getNumberTriviaRandomNumber?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String number)? getNumberTriviaConcreteNumber,
    TResult Function()? getNumberTriviaRandomNumber,
    required TResult orElse(),
  }) {
    if (getNumberTriviaRandomNumber != null) {
      return getNumberTriviaRandomNumber();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetNumberTriviaConcreteNumber value)
        getNumberTriviaConcreteNumber,
    required TResult Function(_GetNumberTriviaRandomNumber value)
        getNumberTriviaRandomNumber,
  }) {
    return getNumberTriviaRandomNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetNumberTriviaConcreteNumber value)?
        getNumberTriviaConcreteNumber,
    TResult? Function(_GetNumberTriviaRandomNumber value)?
        getNumberTriviaRandomNumber,
  }) {
    return getNumberTriviaRandomNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetNumberTriviaConcreteNumber value)?
        getNumberTriviaConcreteNumber,
    TResult Function(_GetNumberTriviaRandomNumber value)?
        getNumberTriviaRandomNumber,
    required TResult orElse(),
  }) {
    if (getNumberTriviaRandomNumber != null) {
      return getNumberTriviaRandomNumber(this);
    }
    return orElse();
  }
}

abstract class _GetNumberTriviaRandomNumber implements NumberTriviaEvent {
  const factory _GetNumberTriviaRandomNumber() =
      _$GetNumberTriviaRandomNumberImpl;
}

/// @nodoc
mixin _$NumberTriviaState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(int number, String text) $default, {
    required TResult Function() loading,
    required TResult Function(NumberTrivia numberTrivia) success,
    required TResult Function(String? message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(int number, String text)? $default, {
    TResult? Function()? loading,
    TResult? Function(NumberTrivia numberTrivia)? success,
    TResult? Function(String? message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int number, String text)? $default, {
    TResult Function()? loading,
    TResult Function(NumberTrivia numberTrivia)? success,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_NumberTriviaState value) $default, {
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_NumberTriviaState value)? $default, {
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_NumberTriviaState value)? $default, {
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NumberTriviaStateCopyWith<$Res> {
  factory $NumberTriviaStateCopyWith(
          NumberTriviaState value, $Res Function(NumberTriviaState) then) =
      _$NumberTriviaStateCopyWithImpl<$Res, NumberTriviaState>;
}

/// @nodoc
class _$NumberTriviaStateCopyWithImpl<$Res, $Val extends NumberTriviaState>
    implements $NumberTriviaStateCopyWith<$Res> {
  _$NumberTriviaStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NumberTriviaState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$NumberTriviaStateImplCopyWith<$Res> {
  factory _$$NumberTriviaStateImplCopyWith(_$NumberTriviaStateImpl value,
          $Res Function(_$NumberTriviaStateImpl) then) =
      __$$NumberTriviaStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int number, String text});
}

/// @nodoc
class __$$NumberTriviaStateImplCopyWithImpl<$Res>
    extends _$NumberTriviaStateCopyWithImpl<$Res, _$NumberTriviaStateImpl>
    implements _$$NumberTriviaStateImplCopyWith<$Res> {
  __$$NumberTriviaStateImplCopyWithImpl(_$NumberTriviaStateImpl _value,
      $Res Function(_$NumberTriviaStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of NumberTriviaState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? text = null,
  }) {
    return _then(_$NumberTriviaStateImpl(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NumberTriviaStateImpl implements _NumberTriviaState {
  const _$NumberTriviaStateImpl({required this.number, required this.text});

  @override
  final int number;
  @override
  final String text;

  @override
  String toString() {
    return 'NumberTriviaState(number: $number, text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NumberTriviaStateImpl &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, number, text);

  /// Create a copy of NumberTriviaState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NumberTriviaStateImplCopyWith<_$NumberTriviaStateImpl> get copyWith =>
      __$$NumberTriviaStateImplCopyWithImpl<_$NumberTriviaStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(int number, String text) $default, {
    required TResult Function() loading,
    required TResult Function(NumberTrivia numberTrivia) success,
    required TResult Function(String? message) error,
  }) {
    return $default(number, text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(int number, String text)? $default, {
    TResult? Function()? loading,
    TResult? Function(NumberTrivia numberTrivia)? success,
    TResult? Function(String? message)? error,
  }) {
    return $default?.call(number, text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int number, String text)? $default, {
    TResult Function()? loading,
    TResult Function(NumberTrivia numberTrivia)? success,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(number, text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_NumberTriviaState value) $default, {
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_NumberTriviaState value)? $default, {
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_NumberTriviaState value)? $default, {
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _NumberTriviaState implements NumberTriviaState {
  const factory _NumberTriviaState(
      {required final int number,
      required final String text}) = _$NumberTriviaStateImpl;

  int get number;
  String get text;

  /// Create a copy of NumberTriviaState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NumberTriviaStateImplCopyWith<_$NumberTriviaStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$NumberTriviaStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of NumberTriviaState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'NumberTriviaState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(int number, String text) $default, {
    required TResult Function() loading,
    required TResult Function(NumberTrivia numberTrivia) success,
    required TResult Function(String? message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(int number, String text)? $default, {
    TResult? Function()? loading,
    TResult? Function(NumberTrivia numberTrivia)? success,
    TResult? Function(String? message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int number, String text)? $default, {
    TResult Function()? loading,
    TResult Function(NumberTrivia numberTrivia)? success,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_NumberTriviaState value) $default, {
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_NumberTriviaState value)? $default, {
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_NumberTriviaState value)? $default, {
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements NumberTriviaState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({NumberTrivia numberTrivia});

  $NumberTriviaCopyWith<$Res> get numberTrivia;
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$NumberTriviaStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of NumberTriviaState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? numberTrivia = null,
  }) {
    return _then(_$SuccessImpl(
      null == numberTrivia
          ? _value.numberTrivia
          : numberTrivia // ignore: cast_nullable_to_non_nullable
              as NumberTrivia,
    ));
  }

  /// Create a copy of NumberTriviaState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NumberTriviaCopyWith<$Res> get numberTrivia {
    return $NumberTriviaCopyWith<$Res>(_value.numberTrivia, (value) {
      return _then(_value.copyWith(numberTrivia: value));
    });
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl(this.numberTrivia);

  @override
  final NumberTrivia numberTrivia;

  @override
  String toString() {
    return 'NumberTriviaState.success(numberTrivia: $numberTrivia)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            (identical(other.numberTrivia, numberTrivia) ||
                other.numberTrivia == numberTrivia));
  }

  @override
  int get hashCode => Object.hash(runtimeType, numberTrivia);

  /// Create a copy of NumberTriviaState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(int number, String text) $default, {
    required TResult Function() loading,
    required TResult Function(NumberTrivia numberTrivia) success,
    required TResult Function(String? message) error,
  }) {
    return success(numberTrivia);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(int number, String text)? $default, {
    TResult? Function()? loading,
    TResult? Function(NumberTrivia numberTrivia)? success,
    TResult? Function(String? message)? error,
  }) {
    return success?.call(numberTrivia);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int number, String text)? $default, {
    TResult Function()? loading,
    TResult Function(NumberTrivia numberTrivia)? success,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(numberTrivia);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_NumberTriviaState value) $default, {
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_NumberTriviaState value)? $default, {
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_NumberTriviaState value)? $default, {
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements NumberTriviaState {
  const factory _Success(final NumberTrivia numberTrivia) = _$SuccessImpl;

  NumberTrivia get numberTrivia;

  /// Create a copy of NumberTriviaState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$NumberTriviaStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of NumberTriviaState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$ErrorImpl(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.message);

  @override
  final String? message;

  @override
  String toString() {
    return 'NumberTriviaState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of NumberTriviaState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(int number, String text) $default, {
    required TResult Function() loading,
    required TResult Function(NumberTrivia numberTrivia) success,
    required TResult Function(String? message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(int number, String text)? $default, {
    TResult? Function()? loading,
    TResult? Function(NumberTrivia numberTrivia)? success,
    TResult? Function(String? message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int number, String text)? $default, {
    TResult Function()? loading,
    TResult Function(NumberTrivia numberTrivia)? success,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_NumberTriviaState value) $default, {
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_NumberTriviaState value)? $default, {
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_NumberTriviaState value)? $default, {
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements NumberTriviaState {
  const factory _Error(final String? message) = _$ErrorImpl;

  String? get message;

  /// Create a copy of NumberTriviaState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
