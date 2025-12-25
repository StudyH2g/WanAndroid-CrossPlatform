import 'package:dio/dio.dart';

class ResponseInterceptor extends Interceptor {
  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    // if (response.statusCode == 200) {
    //   final baseModel = BaseModel.fromJson(response.data, (json) => json);
    //   //final baseModel = MyBaseModel.fromJson(response.data);
    //   debugPrint(
    //       "baseModel.errorCode: ${baseModel.errorCode}; data: ${baseModel.data};");
    //
    //   if (baseModel.isSuccess()) {
    //     if (baseModel.data != null) {
    //       if (baseModel.data is List<dynamic>) {
    //         baseModel.data = {
    //           "data": baseModel.data,
    //         };
    //       }
    //       handler.next(Response(
    //           requestOptions: response.requestOptions, data: baseModel.data));
    //     } else {
    //       handler.next(
    //           Response(requestOptions: response.requestOptions, data: true));
    //     }
    //   } else {
    //     super.onResponse(response, handler);
    //   }
    //   if (response.data is Map<String, dynamic>) {
    //     final baseModel = BaseModel<dynamic>.fromJson(
    //       response.data,
    //       (json) => response.data,
    //     );
    //     debugPrint("baseModel.data:${baseModel.data}");
    //     super.onResponse(response, handler);
    //   } else {
    //     debugPrint("baseModel.data: else");
    //     super.onResponse(response, handler);
    //   }
    // } else {
    //   debugPrint("baseModel.data: ${response.statusCode}");
    //   super.onResponse(response, handler);
    // }
    //}
    super.onResponse(response, handler);
  }
}
