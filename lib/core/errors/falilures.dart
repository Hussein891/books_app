import 'package:dio/dio.dart';

abstract class Failure {
  final String errMassage;
  const Failure(this.errMassage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errMassage);
  factory ServerFailure.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection Timeout with ApiServer');
      case DioExceptionType.sendTimeout:
        return ServerFailure('SendT Imeout with ApiServer');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive Timeout with ApiServer');
      case DioExceptionType.badCertificate:
        return ServerFailure(
          'You Have لآadCertificatet with ApiServer, Please try later!',
        );
      case DioExceptionType.badResponse:
        return ServerFailure.fromBadResponse(
          dioError.response!.statusCode!,
          dioError.response!.data!,
        );

      case DioExceptionType.cancel:
        return ServerFailure('Request to ApiServer was Cancel');
      case DioExceptionType.connectionError:
        return ServerFailure('You Have Connection Error, Please try later!');
      case DioExceptionType.unknown:
        if (dioError.message!.contains('SocketException')) {
          return ServerFailure('No Internet Connection');
        }
        return ServerFailure('Unexpected Eroor , Please try later!');
      // ignore: unreachable_switch_default
      default:
        return ServerFailure('Opps There Was an Error ,Please try later!');
    }
  }

  factory ServerFailure.fromBadResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure('Your Request not found , Please try later!');
    } else if (statusCode == 500) {
      return ServerFailure('Interal Server error , Please try later!');
    } else {
      return ServerFailure('Opps There Was an Error ,Please try later!');
    }
  }
}

//https://www.googleapis.com/books/v1/volumes?q=programming
