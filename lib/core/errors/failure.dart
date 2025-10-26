import 'package:dio/dio.dart';

abstract class Failure {
  final String message;

  Failure({required this.message});
}

class ServerFailure extends Failure {
  ServerFailure({required super.message});

  factory ServerFailure.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(message: "Connection Timeout with the server");
      case DioExceptionType.sendTimeout:
        return ServerFailure(message: "Send Timeout with the server");
      case DioExceptionType.receiveTimeout:
        return ServerFailure(message: "Connection Timeout with the server");
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            dioError.response!.statusCode!, dioError.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure(message: "Request to the server was cancelled");
      case DioExceptionType.connectionError:
        return ServerFailure(message: "Connection error occurred");
      case DioExceptionType.badCertificate:
        return ServerFailure(message: "Bad certificate error occurred");
      case DioExceptionType.unknown:
        return ServerFailure(message: "An unknown error occurred");
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(message: response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure(
          message: "Your request not found, Please try later!");
    } else if (statusCode == 500) {
      return ServerFailure(message: "Internal Server error, Please try later!");
    } else {
      return ServerFailure(
          message:
              "Something went wrong, Please try later! Status code: $statusCode");
    }
  }
}

class CacheFailure extends Failure {
  CacheFailure({required super.message});
}

class NetworkFailure extends Failure {
  NetworkFailure({required super.message});
}
