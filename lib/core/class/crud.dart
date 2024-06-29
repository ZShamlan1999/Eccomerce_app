import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import '../functions/check_internet.dart';

import 'status_request.dart';

class Crud {
  Dio dio = Dio();
  // MyServices myServices = Get.find();
  Future<Either<StatusRequest, Map>> postData(String linkUrl, Map data) async {
    try {
      if (await checkInternet()) {
        var response = await dio.post(linkUrl, data: data);
        if (response.statusCode == 200 || response.statusCode == 201) {
          return Right(response.data);
        } else {
          return const Left(StatusRequest.serverfailure);
        }
      } else {
        return const Left(StatusRequest.offlinefailure);
      }
    } on Exception {
      return const Left(StatusRequest.serverException);
    }
  }

  Future<Either<StatusRequest, Map>> getData(String linkUrl) async {
    try {
      if (await checkInternet()) {
        var response = await dio.request(linkUrl);
        if (response.statusCode == 200) {
          return Right(response.data);
        } else {
          return const Left(StatusRequest.serverfailure);
        }
      } else {
        return const Left(StatusRequest.offlinefailure);
      }
    } on Exception {
      return const Left(StatusRequest.serverException);
    }
  }
}
