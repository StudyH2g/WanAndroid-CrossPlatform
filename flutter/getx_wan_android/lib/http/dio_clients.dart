import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:getx_wan_android/constants/http_method.dart';
import 'package:getx_wan_android/constants/url_constant.dart';
import 'package:getx_wan_android/data/base_model.dart';

class DioClients {
  DioClients._();

  static DioClients? _instance;

  static DioClients get instance {
    _instance ??= DioClients._();
    return _instance!;
  }

  final Dio dio = Dio(BaseOptions(
    baseUrl: UrlConstant.baseUrl,
    connectTimeout: const Duration(seconds: 30),
    receiveTimeout: const Duration(seconds: 30),
  ))
    ..interceptors.add(LogInterceptor(requestBody: true, responseBody: true));
  //..interceptors.add(ResponseInterceptor());

  Future<T> get<T>(
    String path, {
    Map<String, dynamic>? queryParameters,
    T Function(dynamic data)? decoder,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final response = await dio.get(path,
          queryParameters: queryParameters,
          options: options ??
              Options(
                method: HttpMethod.get,
                responseType: ResponseType.json,
                contentType: Headers.jsonContentType,
                receiveTimeout: const Duration(seconds: 30),
                sendTimeout: const Duration(seconds: 30),
              ),
          cancelToken: cancelToken,
          onReceiveProgress: onReceiveProgress);
      final baseModel = BaseModel.fromJson(response.data);
      print("baseModel.get: ${baseModel..isSuccess()}; ${baseModel.data}");
      if (baseModel.isSuccess()) {
        if (decoder != null) {
          return decoder(baseModel.data);
        }
        return baseModel.data;
      } else {
        Get.snackbar('error', baseModel.errorMsg);
        throw baseModel;
      }
    } catch (e) {
      debugPrint("get.error:$e");
      rethrow;
    }
  }
}
