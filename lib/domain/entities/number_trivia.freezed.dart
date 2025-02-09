// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'number_trivia.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NumberTrivia {
  int get number => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;

  /// Create a copy of NumberTrivia
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NumberTriviaCopyWith<NumberTrivia> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NumberTriviaCopyWith<$Res> {
  factory $NumberTriviaCopyWith(
          NumberTrivia value, $Res Function(NumberTrivia) then) =
      _$NumberTriviaCopyWithImpl<$Res, NumberTrivia>;
  @useResult
  $Res call({int number, String text});
}

/// @nodoc
class _$NumberTriviaCopyWithImpl<$Res, $Val extends NumberTrivia>
    implements $NumberTriviaCopyWith<$Res> {
  _$NumberTriviaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NumberTrivia
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? text = null,
  }) {
    return _then(_value.copyWith(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NumberTriviaImplCopyWith<$Res>
    implements $NumberTriviaCopyWith<$Res> {
  factory _$$NumberTriviaImplCopyWith(
          _$NumberTriviaImpl value, $Res Function(_$NumberTriviaImpl) then) =
      __$$NumberTriviaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int number, String text});
}

/// @nodoc
class __$$NumberTriviaImplCopyWithImpl<$Res>
    extends _$NumberTriviaCopyWithImpl<$Res, _$NumberTriviaImpl>
    implements _$$NumberTriviaImplCopyWith<$Res> {
  __$$NumberTriviaImplCopyWithImpl(
      _$NumberTriviaImpl _value, $Res Function(_$NumberTriviaImpl) _then)
      : super(_value, _then);

  /// Create a copy of NumberTrivia
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? text = null,
  }) {
    return _then(_$NumberTriviaImpl(
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

class _$NumberTriviaImpl implements _NumberTrivia {
  const _$NumberTriviaImpl({required this.number, required this.text});

  @override
  final int number;
  @override
  final String text;

  @override
  String toString() {
    return 'NumberTrivia(number: $number, text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NumberTriviaImpl &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, number, text);

  /// Create a copy of NumberTrivia
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NumberTriviaImplCopyWith<_$NumberTriviaImpl> get copyWith =>
      __$$NumberTriviaImplCopyWithImpl<_$NumberTriviaImpl>(this, _$identity);
}

abstract class _NumberTrivia implements NumberTrivia {
  const factory _NumberTrivia(
      {required final int number,
      required final String text}) = _$NumberTriviaImpl;

  @override
  int get number;
  @override
  String get text;

  /// Create a copy of NumberTrivia
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NumberTriviaImplCopyWith<_$NumberTriviaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
