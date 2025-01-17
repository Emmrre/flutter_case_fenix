import 'package:case_fenix/data/model/movie_result_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:case_fenix/client/network/base/base_response_model.dart';

part 'movie_main_model.freezed.dart';
part 'movie_main_model.g.dart';

@freezed
class MovieMainModel extends BaseResponseModel<MovieMainModel> with _$MovieMainModel {
  factory MovieMainModel(
      {int? page,
      List<MovieResultModel>? results,
      int? total_pages,
      int? total_results}) = _MovieMainModel;

  factory MovieMainModel.fromJson(Map<String, dynamic> json) => _$MovieMainModelFromJson(json);

  MovieMainModel._();

  @override
  MovieMainModel fromJson(Map<String, dynamic> json) => MovieMainModel.fromJson(json);
}
