import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import '../enums/exception_enum.dart';

class CustomException implements Exception {
  final String name, message;
  final String? code;
  final int? statusCode;
  final ExceptionType exceptionType;

  CustomException({
    this.code,
    int? statusCode,
    required this.message,
    this.exceptionType = ExceptionType.ApiException,
  })  : statusCode = statusCode ?? 500,
        name = exceptionType.name;

  factory CustomException.fromDioException(Exception error) {
    try {
      if (error is DioException) {
        switch (error.type) {
          case DioExceptionType.cancel:
            return CustomException(
              exceptionType: ExceptionType.CancelException,
              statusCode: error.response?.statusCode,
              message: 'Request cancelled prematurely',
            );
          case DioExceptionType.connectionTimeout:
            return CustomException(
              exceptionType: ExceptionType.ConnectTimeoutException,
              statusCode: error.response?.statusCode,
              message: 'Connection not established',
            );
          case DioExceptionType.sendTimeout:
            return CustomException(
              exceptionType: ExceptionType.SendTimeoutException,
              statusCode: error.response?.statusCode,
              message: 'Failed to send',
            );
          case DioExceptionType.receiveTimeout:
            return CustomException(
              exceptionType: ExceptionType.ReceiveTimeoutException,
              statusCode: error.response?.statusCode,
              message: 'Failed to receive',
            );
          case DioExceptionType.badResponse:
          case DioExceptionType.unknown:
            if (error.message!.contains(ExceptionType.SocketException.name)) {
              return CustomException(
                exceptionType: ExceptionType.FetchDataException,
                statusCode: error.response?.statusCode,
                message: 'No internet connectivity',
              );
            }
            if (error.response?.data['headers']['code'] == null) {
              return CustomException(
                exceptionType: ExceptionType.UnrecognizedException,
                statusCode: error.response?.statusCode,
                message: error.response?.statusMessage ?? 'Unknown',
              );
            }
            final name = error.response?.data['headers']['code'] as String;
            final message =
                error.response?.data['headers']['message'] as String;
            if (name == ExceptionType.TokenExpiredException.name) {
              return CustomException(
                exceptionType: ExceptionType.TokenExpiredException,
                code: name,
                statusCode: error.response?.statusCode,
                message: message,
              );
            }
            return CustomException(
              message: message,
              code: name,
              statusCode: error.response?.statusCode,
            );
          case DioExceptionType.badCertificate:
            return CustomException(
              message: '',
              code: '',
              statusCode: error.response?.statusCode,
            );
          case DioExceptionType.connectionError:
            return CustomException(
              message: '',
              code: '',
              statusCode: error.response?.statusCode,
            );
        }
      } else {
        return CustomException(
          exceptionType: ExceptionType.UnrecognizedException,
          message: 'Error unrecognized',
        );
      }
    } on FormatException catch (e) {
      return CustomException(
        exceptionType: ExceptionType.FormatException,
        message: e.message,
      );
    } on Exception catch (_) {
      return CustomException(
        exceptionType: ExceptionType.UnrecognizedException,
        message: 'Error unrecognized',
      );
    }
  }

  factory CustomException.fromParsingException(Exception error) {
    debugPrint('$error');
    return CustomException(
      exceptionType: ExceptionType.SerializationException,
      message: 'Failed to parse network response to model or vice versa',
    );
  }
}
