import 'package:dartz/dartz.dart';
import 'package:grocery/core/errors/failures.dart';
import 'package:grocery/data/dataSource/categoryDataSoource.dart';
import 'package:grocery/data/models/categoryModel.dart';

class CategoryRepo {
  Future<Either<ApiFailure, CategoryModel>> getCategories() {
    print("response.data");

    return CategoryDataSource().getCategories();
  }
}
