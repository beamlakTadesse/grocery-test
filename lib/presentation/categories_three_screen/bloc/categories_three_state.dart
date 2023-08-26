// ignore_for_file: must_be_immutable

part of 'categories_three_bloc.dart';

/// Represents the state of CategoriesThree in the application.
class CategoriesThreeState extends Equatable {
  CategoriesThreeState({this.categoriesThreeModelObj});

  CategoriesThreeModel? categoriesThreeModelObj;

  @override
  List<Object?> get props => [
        categoriesThreeModelObj,
      ];
  CategoriesThreeState copyWith(
      {CategoriesThreeModel? categoriesThreeModelObj}) {
    return CategoriesThreeState(
      categoriesThreeModelObj:
          categoriesThreeModelObj ?? this.categoriesThreeModelObj,
    );
  }
}
