// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_genre_id_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MovieGenreIdModel _$MovieGenreIdModelFromJson(Map<String, dynamic> json) {
  return _MovieGenreIdModel.fromJson(json);
}

/// @nodoc
mixin _$MovieGenreIdModel {
  /// Serializes this MovieGenreIdModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieGenreIdModelCopyWith<$Res> {
  factory $MovieGenreIdModelCopyWith(
          MovieGenreIdModel value, $Res Function(MovieGenreIdModel) then) =
      _$MovieGenreIdModelCopyWithImpl<$Res, MovieGenreIdModel>;
}

/// @nodoc
class _$MovieGenreIdModelCopyWithImpl<$Res, $Val extends MovieGenreIdModel>
    implements $MovieGenreIdModelCopyWith<$Res> {
  _$MovieGenreIdModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MovieGenreIdModel
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$MovieGenreIdModelImplCopyWith<$Res> {
  factory _$$MovieGenreIdModelImplCopyWith(_$MovieGenreIdModelImpl value,
          $Res Function(_$MovieGenreIdModelImpl) then) =
      __$$MovieGenreIdModelImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MovieGenreIdModelImplCopyWithImpl<$Res>
    extends _$MovieGenreIdModelCopyWithImpl<$Res, _$MovieGenreIdModelImpl>
    implements _$$MovieGenreIdModelImplCopyWith<$Res> {
  __$$MovieGenreIdModelImplCopyWithImpl(_$MovieGenreIdModelImpl _value,
      $Res Function(_$MovieGenreIdModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MovieGenreIdModel
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$MovieGenreIdModelImpl implements _MovieGenreIdModel {
  _$MovieGenreIdModelImpl();

  factory _$MovieGenreIdModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MovieGenreIdModelImplFromJson(json);

  @override
  String toString() {
    return 'MovieGenreIdModel()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MovieGenreIdModelImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$MovieGenreIdModelImplToJson(
      this,
    );
  }
}

abstract class _MovieGenreIdModel implements MovieGenreIdModel {
  factory _MovieGenreIdModel() = _$MovieGenreIdModelImpl;

  factory _MovieGenreIdModel.fromJson(Map<String, dynamic> json) =
      _$MovieGenreIdModelImpl.fromJson;
}
