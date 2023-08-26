import 'dart:convert';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:grocery/core/constants/constants.dart';
import 'package:grocery/core/errors/failures.dart';
import 'package:grocery/core/network/network_info.dart';
import 'package:grocery/core/utils/pref_utils.dart';
import 'package:grocery/data/errorModel.dart';
import 'package:grocery/data/models/categoryModel.dart';
import 'package:grocery/data/models/productModel.dart';

class ProductDataSource {
  final dioClient = Dio();

  Future<Either<ApiFailure, ProductModel>> getProducts() async {
    print(PrefUtils().getToken());
    dioClient.interceptors
        .add(InterceptorsWrapper(onRequest: (options, handler) {
      options.headers['Authorization'] = 'Bearer ' + PrefUtils().getToken();
      return handler.next(options);
    }));
    final connected = await NetworkInfo().isConnected();
    if (connected) {
      try {
        final response = await dioClient.get(
          "$BASE_URL/products",
          options: Options(
            followRedirects: false,
            // will not throw errors
            validateStatus: (status) => true,
            headers: {
              HttpHeaders.contentTypeHeader: "application/json",
            },
          ),
        );
        print(response.data);
        if (response.statusCode == 200) {
          ProductModel data = ProductModel.fromJson(response.data);
          return Right(data);
        } else if (response.statusCode! >= 400 && response.statusCode! < 500) {
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

  Future<Either<ApiFailure, Product>> getProduct(String id) async {
    print(PrefUtils().getToken());
    dioClient.interceptors
        .add(InterceptorsWrapper(onRequest: (options, handler) {
      options.headers['Authorization'] = 'Bearer ' + PrefUtils().getToken();
      return handler.next(options);
    }));
    final connected = await NetworkInfo().isConnected();
    if (connected) {
      try {
        final response = await dioClient.get(
          "$BASE_URL/products/$id",
          options: Options(
            followRedirects: false,
            // will not throw errors
            validateStatus: (status) => true,
            headers: {
              HttpHeaders.contentTypeHeader: "application/json",
            },
          ),
        );
        print(response.data);
        if (response.statusCode == 200) {
          Product data = Product.fromJson(response.data);
          return Right(data);
        } else if (response.statusCode! >= 400 && response.statusCode! < 500) {
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
