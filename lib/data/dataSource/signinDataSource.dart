import 'dart:convert';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:grocery/core/constants/constants.dart';
import 'package:grocery/core/errors/failures.dart';
import 'package:grocery/core/network/network_info.dart';
import 'package:grocery/data/errorModel.dart';
import 'package:grocery/data/models/tokenModel.dart';

class SigninDataSource {
  final dioClient = Dio();

  Future<Either<ApiFailure, TokenModel>> login(
      {required String phone, required String password}) async {
    var data = {"phone": phone, "password": password, "country": "ETH"};

    final connected = await NetworkInfo().isConnected();
    if (connected) {
      try {
        final response = await dioClient.post(
          "$BASE_URL/users/login",
          options: Options(
            followRedirects: false,
            // will not throw errors
            validateStatus: (status) => true,
            headers: {
              HttpHeaders.contentTypeHeader: "application/json",
            },
          ),
          data: jsonEncode(data),
        );

        if (response.statusCode == 200) {
          TokenModel data = TokenModel.fromJson(response.data);
          return Right(data);
        } else if (response.statusCode == 400) {
          ErrorModel error = ErrorModel.fromJson(response.data);
          return Left(ApiFailure(error.error.message));
        } else {
          return Left(ApiFailure("Something went wrong"));
        }
      }
      //
      catch (e) {
        print(e);
        return Left(ApiFailure("Error occurred"));
      }
    } else {
      return Left(ApiFailure("Check your connection and try again"));
    }
  }
}
