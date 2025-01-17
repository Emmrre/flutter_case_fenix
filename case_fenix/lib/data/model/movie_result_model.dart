import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_result_model.freezed.dart';
part 'movie_result_model.g.dart';

@freezed
class MovieResultModel with _$MovieResultModel {
  factory MovieResultModel({
    bool? adult,
    String? backdrop_path,
    List<int>? genre_ids,
    int?    id,
    String? original_language,
    String? original_title,
    String? overview,
    num? popularity,
    String? poster_path,
    String? release_date,
    String? title,
    bool?   video,
    num? vote_average,
    int? vote_count,


  }) = _MovieResultModel;
	
  factory MovieResultModel.fromJson(Map<String, dynamic> json) =>
			_$MovieResultModelFromJson(json);
}
