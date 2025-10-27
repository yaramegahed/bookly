import 'package:dio/dio.dart';

class ApiServices {
  final Dio dio ;
  final baseUrl = 'https://www.googleapis.com/books/v1/';

  ApiServices(this.dio);

  Future<Map<String, dynamic>> get({required String endPoint}) async {
    var response = await dio.get("$baseUrl$endPoint");
    return response.data;
  }
}
