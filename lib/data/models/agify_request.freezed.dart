// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'agify_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AgifyApiRequestModel _$AgifyApiRequestModelFromJson(Map<String, dynamic> json) {
  return _AgifyRequest.fromJson(json);
}

/// @nodoc
mixin _$AgifyApiRequestModel {
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'country_id', includeIfNull: false)
  String? get countryId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AgifyApiRequestModelCopyWith<AgifyApiRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AgifyApiRequestModelCopyWith<$Res> {
  factory $AgifyApiRequestModelCopyWith(AgifyApiRequestModel value,
          $Res Function(AgifyApiRequestModel) then) =
      _$AgifyApiRequestModelCopyWithImpl<$Res, AgifyApiRequestModel>;
  @useResult
  $Res call(
      {String name,
      @JsonKey(name: 'country_id', includeIfNull: false) String? countryId});
}

/// @nodoc
class _$AgifyApiRequestModelCopyWithImpl<$Res,
        $Val extends AgifyApiRequestModel>
    implements $AgifyApiRequestModelCopyWith<$Res> {
  _$AgifyApiRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? countryId = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      countryId: freezed == countryId
          ? _value.countryId
          : countryId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AgifyRequestCopyWith<$Res>
    implements $AgifyApiRequestModelCopyWith<$Res> {
  factory _$$_AgifyRequestCopyWith(
          _$_AgifyRequest value, $Res Function(_$_AgifyRequest) then) =
      __$$_AgifyRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      @JsonKey(name: 'country_id', includeIfNull: false) String? countryId});
}

/// @nodoc
class __$$_AgifyRequestCopyWithImpl<$Res>
    extends _$AgifyApiRequestModelCopyWithImpl<$Res, _$_AgifyRequest>
    implements _$$_AgifyRequestCopyWith<$Res> {
  __$$_AgifyRequestCopyWithImpl(
      _$_AgifyRequest _value, $Res Function(_$_AgifyRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? countryId = freezed,
  }) {
    return _then(_$_AgifyRequest(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      countryId: freezed == countryId
          ? _value.countryId
          : countryId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AgifyRequest implements _AgifyRequest {
  const _$_AgifyRequest(
      {required this.name,
      @JsonKey(name: 'country_id', includeIfNull: false)
          required this.countryId});

  factory _$_AgifyRequest.fromJson(Map<String, dynamic> json) =>
      _$$_AgifyRequestFromJson(json);

  @override
  final String name;
  @override
  @JsonKey(name: 'country_id', includeIfNull: false)
  final String? countryId;

  @override
  String toString() {
    return 'AgifyApiRequestModel(name: $name, countryId: $countryId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AgifyRequest &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.countryId, countryId) ||
                other.countryId == countryId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, countryId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AgifyRequestCopyWith<_$_AgifyRequest> get copyWith =>
      __$$_AgifyRequestCopyWithImpl<_$_AgifyRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AgifyRequestToJson(
      this,
    );
  }
}

abstract class _AgifyRequest implements AgifyApiRequestModel {
  const factory _AgifyRequest(
      {required final String name,
      @JsonKey(name: 'country_id', includeIfNull: false)
          required final String? countryId}) = _$_AgifyRequest;

  factory _AgifyRequest.fromJson(Map<String, dynamic> json) =
      _$_AgifyRequest.fromJson;

  @override
  String get name;
  @override
  @JsonKey(name: 'country_id', includeIfNull: false)
  String? get countryId;
  @override
  @JsonKey(ignore: true)
  _$$_AgifyRequestCopyWith<_$_AgifyRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
