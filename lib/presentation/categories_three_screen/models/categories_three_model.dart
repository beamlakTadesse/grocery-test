// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'gridfruits87ite_item_model.dart';/// This class defines the variables used in the [categories_three_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class CategoriesThreeModel extends Equatable {CategoriesThreeModel({this.gridfruits87iteItemList = const []});

List<Gridfruits87iteItemModel> gridfruits87iteItemList;

CategoriesThreeModel copyWith({List<Gridfruits87iteItemModel>? gridfruits87iteItemList}) { return CategoriesThreeModel(
gridfruits87iteItemList : gridfruits87iteItemList ?? this.gridfruits87iteItemList,
); } 
@override List<Object?> get props => [gridfruits87iteItemList];
 }
