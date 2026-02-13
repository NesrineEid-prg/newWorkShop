import 'package:dio/dio.dart';
import 'package:workshop/core/networking/api_constant.dart';

class DioHelper {
  static late Dio dio;
  static  init() {
    dio = Dio(
      BaseOptions(
        baseUrl: ApiConstant.baseUrl,
        receiveDataWhenStatusError: true,
        connectTimeout: Duration(seconds: 20),
        receiveTimeout: Duration(seconds: 20),
      ),
    );
  }

  static Future<Response> getDta({
    required String endPoint,
    Map<String, dynamic>? queryParameters,
  }) async {
    final res = await dio.get(endPoint, queryParameters: queryParameters);
    return res;
  }
}
