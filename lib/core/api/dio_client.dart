import '../consts/api_consts.dart';
import 'app_interceptors.dart';
import 'package:dio/dio.dart';

class DioClient {
  static DioClient? _singleton;

  static late Dio _dio;

  DioClient._() {
    _dio = createDioClient();
  }

  factory DioClient() {
    return _singleton ??= DioClient._();
  }

  Dio get instance => _dio;

  Dio createDioClient() {
    final dio = Dio(
      BaseOptions(
        baseUrl: ApiConsts.baseUrl,
        connectTimeout: Duration(milliseconds: 15000),
        receiveTimeout: Duration(milliseconds: 15000),
        sendTimeout: Duration(milliseconds: 15000),
        headers: {
          Headers.acceptHeader: 'application/json',
          Headers.contentTypeHeader: 'application/json',
          "ngrok-skip-browser-warning": true,
        },
      ),
    );
    dio.interceptors.addAll([
      AppInterceptors(),
      LogInterceptor(
        request: true,
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: false,
        error: true,
      ),
    ]);
    return dio;
  }
}

final dioInstance = DioClient().instance;
