import 'package:fpdart/fpdart.dart';
import 'package:medical_diagnostic_app1/core/api/app_error.dart';
import 'package:medical_diagnostic_app1/core/api/app_response.dart';

abstract class LlmProvider {
  Future<Either<AppError, AppResponse>> listModels();
}
