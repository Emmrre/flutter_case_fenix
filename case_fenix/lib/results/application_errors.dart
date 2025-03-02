import 'package:case_fenix/results/base_errors_model.dart';


class AuthenticationError implements BaseErrorsModel {
  AuthenticationError({this.code, this.message});
  @override
  String? code;
  @override
  String? message;

  @override
  String toString() => 'errorCode $code errorMessage $message';
}
