import 'package:dio/dio.dart';

import 'constants.dart';

class Api {
  static final Dio _dio = Dio(); // Create a static Dio instance

  static Future<Response> get(String url,
      {Map<String, dynamic>? queryParameters}) async {
    try {
      final response = await _dio.get(url,
          queryParameters: queryParameters,
          options: Options(
            followRedirects: false,
            validateStatus: (res) {
              int status = res ?? 500;
              return status <= 500;
            },
            headers: {'Authorization': 'Bearer $token'},
          ));
      return response;
    } catch (e) {
      // Handle errors here
      throw e;
    }
  }


  static Future<Response> post(String url, {dynamic data}) async {
    try {
      final response = await _dio.post(url, data: data ,options: Options(
        followRedirects: false,
        validateStatus: (res) {
          int status = res ?? 500;
          return status <=  500;
        },
        headers: {'Authorization': 'Bearer $token'},
      ));
      return response;
    } catch (e) {
      // Handle errors here
      print(e);
      throw e;
    }
  }

  static Future<Response> put(String url, {dynamic data, Map<String, dynamic>? queryParameters}) async {
    try {
      final response = await _dio.put(url, data: data, queryParameters: queryParameters, options: Options(
        followRedirects: false,
        validateStatus: (res) {
          int status = res ?? 500;
          return status <=  500;
        },
        headers: {'Authorization': 'Bearer $token'},
      ));
      return response;
    } catch (e) {
      // Handle errors here
      print(e);
      throw e;
    }
  }

  static Future<Response> delete(String url, {dynamic data, Map<String, dynamic>? queryParameters}) async {
    try {
      final response = await _dio.delete(url, queryParameters: queryParameters, options: Options(
        followRedirects: false,
        validateStatus: (res) {
          int status = res ?? 500;
          return status <= 500;
        },
        headers: {'Authorization': 'Bearer $token'},
      ));
      return response;
    } catch (e) {
      // Handle errors here
      print(e);
      throw e;
    }
  }
}