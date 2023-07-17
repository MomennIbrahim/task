import 'package:dio/dio.dart';

class ApiService {
  final _baseUrl = 'https://magdsoft.ahmedshawky.fun/';
  final Dio _dio;

  ApiService(this._dio);

  Future<Response> postData({required String endPoint,Map<String,dynamic>? query}) async {
    var response = await _dio.post('$_baseUrl$endPoint',queryParameters: query,);
    return response;
  }

  Future<Response> getData({required String endPoint}) async {
    var response = await _dio.get('$_baseUrl$endPoint',);
    return response;
  }
}