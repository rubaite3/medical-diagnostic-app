import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:medical_diagnostic_app1/core/api/app_error.dart';
import 'package:medical_diagnostic_app1/core/api/app_response.dart';
import 'package:medical_diagnostic_app1/core/api/dio_client.dart';
import 'package:medical_diagnostic_app1/core/utils/utils.dart';

import 'llm_provider.dart';

class CloudflareProvider implements LlmProvider {
  static late final String accountId;
  static late final String apiKey;

  static bool isInit = false;

  static void init({required String accID, required String apiK}) {
    if (!isInit) {
      accountId = accID;
      apiKey = apiK;
    }
  }

  @override
  Future<Either<AppError, AppResponse>> listModels() async {
    final uri =
        'https://api.cloudflare.com/client/v4/accounts/${CloudflareProvider.accountId}/ai/models/search?per_page=50';

    final dio = dioInstance.clone();
    dio.options = BaseOptions(
      baseUrl: '',
      headers: {'Authorization': 'Bearer ${CloudflareProvider.apiKey}'},
    );
    final response = await dio.get(uri);

    return Utils.mapStatusCodeToResponse(response, isExternal: true);
  }
}
