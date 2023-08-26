import 'package:dartz/dartz.dart';
import 'package:grocery/core/errors/failures.dart';
import 'package:grocery/data/dataSource/signinDataSource.dart';
import 'package:grocery/data/models/tokenModel.dart';

class SigninRepo {
  Future<Either<ApiFailure, TokenModel>> login(
      {required String phone, required String password}) {
    return SigninDataSource().login(phone: phone, password: password);
  }
}
