// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_header.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResponseHeader _$ResponseHeaderFromJson(Map<String, dynamic> json) {
  return _ResponseHeader.fromJson(json);
}

/// @nodoc
mixin _$ResponseHeader {
  @JsonKey(name: 'x-rate-limit-limit')
  List<String>? get xRateLimitLimit => throw _privateConstructorUsedError;
  @JsonKey(name: 'x-rate-limit-remaining')
  List<String>? get xRateLimitRemaining => throw _privateConstructorUsedError;
  @JsonKey(name: 'x-rate-limit-reset')
  List<String>? get xRateLimitReset => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseHeaderCopyWith<ResponseHeader> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseHeaderCopyWith<$Res> {
  factory $ResponseHeaderCopyWith(
          ResponseHeader value, $Res Function(ResponseHeader) then) =
      _$ResponseHeaderCopyWithImpl<$Res, ResponseHeader>;
  @useResult
  $Res call(
      {@JsonKey(name: 'x-rate-limit-limit')
          List<String>? xRateLimitLimit,
      @JsonKey(name: 'x-rate-limit-remaining')
          List<String>? xRateLimitRemaining,
      @JsonKey(name: 'x-rate-limit-reset')
          List<String>? xRateLimitReset});
}

/// @nodoc
class _$ResponseHeaderCopyWithImpl<$Res, $Val extends ResponseHeader>
    implements $ResponseHeaderCopyWith<$Res> {
  _$ResponseHeaderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? xRateLimitLimit = freezed,
    Object? xRateLimitRemaining = freezed,
    Object? xRateLimitReset = freezed,
  }) {
    return _then(_value.copyWith(
      xRateLimitLimit: freezed == xRateLimitLimit
          ? _value.xRateLimitLimit
          : xRateLimitLimit // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      xRateLimitRemaining: freezed == xRateLimitRemaining
          ? _value.xRateLimitRemaining
          : xRateLimitRemaining // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      xRateLimitReset: freezed == xRateLimitReset
          ? _value.xRateLimitReset
          : xRateLimitReset // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ResponseHeaderCopyWith<$Res>
    implements $ResponseHeaderCopyWith<$Res> {
  factory _$$_ResponseHeaderCopyWith(
          _$_ResponseHeader value, $Res Function(_$_ResponseHeader) then) =
      __$$_ResponseHeaderCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'x-rate-limit-limit')
          List<String>? xRateLimitLimit,
      @JsonKey(name: 'x-rate-limit-remaining')
          List<String>? xRateLimitRemaining,
      @JsonKey(name: 'x-rate-limit-reset')
          List<String>? xRateLimitReset});
}

/// @nodoc
class __$$_ResponseHeaderCopyWithImpl<$Res>
    extends _$ResponseHeaderCopyWithImpl<$Res, _$_ResponseHeader>
    implements _$$_ResponseHeaderCopyWith<$Res> {
  __$$_ResponseHeaderCopyWithImpl(
      _$_ResponseHeader _value, $Res Function(_$_ResponseHeader) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? xRateLimitLimit = freezed,
    Object? xRateLimitRemaining = freezed,
    Object? xRateLimitReset = freezed,
  }) {
    return _then(_$_ResponseHeader(
      xRateLimitLimit: freezed == xRateLimitLimit
          ? _value._xRateLimitLimit
          : xRateLimitLimit // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      xRateLimitRemaining: freezed == xRateLimitRemaining
          ? _value._xRateLimitRemaining
          : xRateLimitRemaining // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      xRateLimitReset: freezed == xRateLimitReset
          ? _value._xRateLimitReset
          : xRateLimitReset // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ResponseHeader extends _ResponseHeader {
  const _$_ResponseHeader(
      {@JsonKey(name: 'x-rate-limit-limit')
          final List<String>? xRateLimitLimit,
      @JsonKey(name: 'x-rate-limit-remaining')
          final List<String>? xRateLimitRemaining,
      @JsonKey(name: 'x-rate-limit-reset')
          final List<String>? xRateLimitReset})
      : _xRateLimitLimit = xRateLimitLimit,
        _xRateLimitRemaining = xRateLimitRemaining,
        _xRateLimitReset = xRateLimitReset,
        super._();

  factory _$_ResponseHeader.fromJson(Map<String, dynamic> json) =>
      _$$_ResponseHeaderFromJson(json);

  final List<String>? _xRateLimitLimit;
  @override
  @JsonKey(name: 'x-rate-limit-limit')
  List<String>? get xRateLimitLimit {
    final value = _xRateLimitLimit;
    if (value == null) return null;
    if (_xRateLimitLimit is EqualUnmodifiableListView) return _xRateLimitLimit;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _xRateLimitRemaining;
  @override
  @JsonKey(name: 'x-rate-limit-remaining')
  List<String>? get xRateLimitRemaining {
    final value = _xRateLimitRemaining;
    if (value == null) return null;
    if (_xRateLimitRemaining is EqualUnmodifiableListView)
      return _xRateLimitRemaining;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _xRateLimitReset;
  @override
  @JsonKey(name: 'x-rate-limit-reset')
  List<String>? get xRateLimitReset {
    final value = _xRateLimitReset;
    if (value == null) return null;
    if (_xRateLimitReset is EqualUnmodifiableListView) return _xRateLimitReset;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ResponseHeader(xRateLimitLimit: $xRateLimitLimit, xRateLimitRemaining: $xRateLimitRemaining, xRateLimitReset: $xRateLimitReset)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResponseHeader &&
            const DeepCollectionEquality()
                .equals(other._xRateLimitLimit, _xRateLimitLimit) &&
            const DeepCollectionEquality()
                .equals(other._xRateLimitRemaining, _xRateLimitRemaining) &&
            const DeepCollectionEquality()
                .equals(other._xRateLimitReset, _xRateLimitReset));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_xRateLimitLimit),
      const DeepCollectionEquality().hash(_xRateLimitRemaining),
      const DeepCollectionEquality().hash(_xRateLimitReset));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResponseHeaderCopyWith<_$_ResponseHeader> get copyWith =>
      __$$_ResponseHeaderCopyWithImpl<_$_ResponseHeader>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResponseHeaderToJson(
      this,
    );
  }
}

abstract class _ResponseHeader extends ResponseHeader {
  const factory _ResponseHeader(
      {@JsonKey(name: 'x-rate-limit-limit')
          final List<String>? xRateLimitLimit,
      @JsonKey(name: 'x-rate-limit-remaining')
          final List<String>? xRateLimitRemaining,
      @JsonKey(name: 'x-rate-limit-reset')
          final List<String>? xRateLimitReset}) = _$_ResponseHeader;
  const _ResponseHeader._() : super._();

  factory _ResponseHeader.fromJson(Map<String, dynamic> json) =
      _$_ResponseHeader.fromJson;

  @override
  @JsonKey(name: 'x-rate-limit-limit')
  List<String>? get xRateLimitLimit;
  @override
  @JsonKey(name: 'x-rate-limit-remaining')
  List<String>? get xRateLimitRemaining;
  @override
  @JsonKey(name: 'x-rate-limit-reset')
  List<String>? get xRateLimitReset;
  @override
  @JsonKey(ignore: true)
  _$$_ResponseHeaderCopyWith<_$_ResponseHeader> get copyWith =>
      throw _privateConstructorUsedError;
}
