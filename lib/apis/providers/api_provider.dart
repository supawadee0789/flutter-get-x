import 'package:dio/dio.dart';

class ResponseData {
  dynamic data;
  bool isSuccess;
  int errorStatusCode;
  ResponseData(
      {required this.data,
      required this.isSuccess,
      required this.errorStatusCode});
}

class ApiProvider {
  final String _baseUrl;
  final Dio _dio = Dio();

  ApiProvider({String baseUrl = 'https://fakestoreapi.com'})
      : _baseUrl = baseUrl;

  Future<dynamic> _catchAsyncApiError(
      {required String endpoint, required String method}) async {
    try {
      switch (method) {
        case 'GET':
          final res = await _dio.get('$_baseUrl$endpoint');
          if (res.statusCode == 200) {
            print(res.data);
            return ResponseData(
                data: res.data, isSuccess: true, errorStatusCode: 0);
          } else {
            return ResponseData(
                data: null,
                isSuccess: false,
                errorStatusCode: res.statusCode ?? 0);
          }
      }
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<ResponseData> getProducts() async {
    final res = await _catchAsyncApiError(endpoint: '/products', method: 'GET');
    return res;
  }
}
