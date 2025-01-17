
import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_genre_id_model.freezed.dart';
part 'movie_genre_id_model.g.dart';

@freezed
class MovieGenreIdModel with _$MovieGenreIdModel {
  factory MovieGenreIdModel() = _MovieGenreIdModel;
	
  factory MovieGenreIdModel.fromJson(Map<String, dynamic> json) =>
			_$MovieGenreIdModelFromJson(json);
}
