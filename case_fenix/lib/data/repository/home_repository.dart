

import 'package:case_fenix/client/network/base/api_error.dart';
import 'package:case_fenix/client/network/base/base_network_type_def.dart';
import 'package:case_fenix/client/result/result.dart';
import 'package:case_fenix/data/model/movie_main_model.dart';
import 'package:case_fenix/data/repository/i_home_repository.dart';
import 'package:case_fenix/data/service/i_home_service.dart';

class HomeRepository extends IHomeRepository {
  HomeRepository({required this.iHomeService});
  final IHomeService iHomeService;

  @override
  ResultDecode<MovieMainModel, APIError> searchMovie({String? query, int? page}) async {
    final response = await iHomeService.searchMovie(query: query, page: page);
    return response.when(
        success: (data) => Result.success(data),
        failure: (error) => Result.failure(error.handleApiError));
  }
}
