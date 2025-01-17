import 'package:case_fenix/client/network/base/base_network_error_type.dart';
import 'package:case_fenix/client/network/base/base_network_type_def.dart';


abstract class IHomeService {
  ResultDecode<dynamic, BaseNetworkErrorType> searchMovie({String? query , int? page});
}
