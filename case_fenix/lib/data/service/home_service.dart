import 'package:case_fenix/client/client.dart';
import 'package:case_fenix/client/network/base/base_network_error_type.dart';
import 'package:case_fenix/client/network/base/base_network_type_def.dart';
import 'package:case_fenix/client/network/enum/request_method_enum.dart';
import 'package:case_fenix/data/model/movie_main_model.dart';
import 'package:case_fenix/data/service/i_home_service.dart';
import 'package:case_fenix/global_widgets/app_constans.dart';

class HomeService extends IHomeService {
  @override
  ResultDecode<MovieMainModel, BaseNetworkErrorType> searchMovie({String? query , int? page}) async {
    final client = NetworkClient.client();
    final response = await client
        .setRequestMethod(requestMethodEnum: RequestMethodEnum.GET)
        .setPath(path: 'search/movie')
        .setQueryParameters(queryParameters: {
          'api_key': AppConstans.apiKey,
          'query': query,
          'page': page
        })
        .setFunctionName(functionName: 'searchMovie')
        .execute<MovieMainModel, MovieMainModel>(MovieMainModel());
    return response;
  }
}
