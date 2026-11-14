import 'package:api_integration_with_clean_architecture/core/constant/api_constant.dart';
import 'package:dio/dio.dart';

class DioClient{
  late final Dio dio;

  DioClient(){
    dio = Dio(
      BaseOptions(
        baseUrl: ApiConstant.baseUrl,
        connectTimeout: const Duration(seconds: 15),
        receiveTimeout: const Duration(seconds: 15),

        headers: {
          'Content-Type': 'application/json',
        }
      )
    );
  }
}