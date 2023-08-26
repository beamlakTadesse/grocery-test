import 'package:dartz/dartz.dart';
import 'package:grocery/core/errors/failures.dart';
import 'package:grocery/data/dataSource/productDataSource.dart';
import 'package:grocery/data/models/productModel.dart';

class ProductRepo {
  Future<Either<ApiFailure, ProductModel>> getProducts() {
    return ProductDataSource().getProducts();
  }

  Future<Either<ApiFailure, Product>> getProduct(String id) {
    return ProductDataSource().getProduct(id);
  }
}
