// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_main_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MovieMainModel _$MovieMainModelFromJson(Map<String, dynamic> json) {
  return _MovieMainModel.fromJson(json);
}

/// @nodoc
mixin _$MovieMainModel {
  int? get page => throw _privateConstructorUsedError;
  List<MovieResultModel>? get results => throw _privateConstructorUsedError;
  int? get total_pages => throw _privateConstructorUsedError;
  int? get total_results => throw _privateConstructorUsedError;

  /// Serializes this MovieMainModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MovieMainModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MovieMainModelCopyWith<MovieMainModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieMainModelCopyWith<$Res> {
  factory $MovieMainModelCopyWith(
          MovieMainModel value, $Res Function(MovieMainModel) then) =
      _$MovieMainModelCopyWithImpl<$Res, MovieMainModel>;
  @useResult
  $Res call(
      {int? page,
      List<MovieResultModel>? results,
      int? total_pages,
      int? total_results});
}

/// @nodoc
class _$MovieMainModelCopyWithImpl<$Res, $Val extends MovieMainModel>
    implements $MovieMainModelCopyWith<$Res> {
  _$MovieMainModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MovieMainModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
    Object? results = freezed,
    Object? total_pages = freezed,
    Object? total_results = freezed,
  }) {
    return _then(_value.copyWith(
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      results: freezed == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<MovieResultModel>?,
      total_pages: freezed == total_pages
          ? _value.total_pages
          : total_pages // ignore: cast_nullable_to_non_nullable
              as int?,
      total_results: freezed == total_results
          ? _value.total_results
          : total_results // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MovieMainModelImplCopyWith<$Res>
    implements $MovieMainModelCopyWith<$Res> {
  factory _$$MovieMainModelImplCopyWith(_$MovieMainModelImpl value,
          $Res Function(_$MovieMainModelImpl) then) =
      __$$MovieMainModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? page,
      List<MovieResultModel>? results,
      int? total_pages,
      int? total_results});
}

/// @nodoc
class __$$MovieMainModelImplCopyWithImpl<$Res>
    extends _$MovieMainModelCopyWithImpl<$Res, _$MovieMainModelImpl>
    implements _$$MovieMainModelImplCopyWith<$Res> {
  __$$MovieMainModelImplCopyWithImpl(
      _$MovieMainModelImpl _value, $Res Function(_$MovieMainModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MovieMainModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
    Object? results = freezed,
    Object? total_pages = freezed,
    Object? total_results = freezed,
  }) {
    return _then(_$MovieMainModelImpl(
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      results: freezed == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<MovieResultModel>?,
      total_pages: freezed == total_pages
          ? _value.total_pages
          : total_pages // ignore: cast_nullable_to_non_nullable
              as int?,
      total_results: freezed == total_results
          ? _value.total_results
          : total_results // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MovieMainModelImpl extends _MovieMainModel {
  _$MovieMainModelImpl(
      {this.page,
      final List<MovieResultModel>? results,
      this.total_pages,
      this.total_results})
      : _results = results,
        super._();

  factory _$MovieMainModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MovieMainModelImplFromJson(json);

  @override
  final int? page;
  final List<MovieResultModel>? _results;
  @override
  List<MovieResultModel>? get results {
    final value = _results;
    if (value == null) return null;
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? total_pages;
  @override
  final int? total_results;

  @override
  String toString() {
    return 'MovieMainModel(page: $page, results: $results, total_pages: $total_pages, total_results: $total_results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieMainModelImpl &&
            (identical(other.page, page) || other.page == page) &&
            const DeepCollectionEquality().equals(other._results, _results) &&
            (identical(other.total_pages, total_pages) ||
                other.total_pages == total_pages) &&
            (identical(other.total_results, total_results) ||
                other.total_results == total_results));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      page,
      const DeepCollectionEquality().hash(_results),
      total_pages,
      total_results);

  /// Create a copy of MovieMainModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieMainModelImplCopyWith<_$MovieMainModelImpl> get copyWith =>
      __$$MovieMainModelImplCopyWithImpl<_$MovieMainModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MovieMainModelImplToJson(
      this,
    );
  }
}

abstract class _MovieMainModel extends MovieMainModel {
  factory _MovieMainModel(
      {final int? page,
      final List<MovieResultModel>? results,
      final int? total_pages,
      final int? total_results}) = _$MovieMainModelImpl;
  _MovieMainModel._() : super._();

  factory _MovieMainModel.fromJson(Map<String, dynamic> json) =
      _$MovieMainModelImpl.fromJson;

  @override
  int? get page;
  @override
  List<MovieResultModel>? get results;
  @override
  int? get total_pages;
  @override
  int? get total_results;

  /// Create a copy of MovieMainModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MovieMainModelImplCopyWith<_$MovieMainModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
