import 'package:case_fenix/client/network/base/api_error.dart';
import 'package:case_fenix/client/network/base/base_network_type_def.dart';
import 'package:case_fenix/data/model/movie_main_model.dart';

abstract class IHomeRepository {
  ResultDecode<MovieMainModel, APIError> searchMovie({String? query, int? page});
}
