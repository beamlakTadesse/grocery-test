// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'listfruits_one_item_model.dart';/// This class defines the variables used in the [shoppingcart_three_page],
/// and is typically used to hold data that is passed between different parts of the application.
class ShoppingcartThreeModel extends Equatable {ShoppingcartThreeModel({this.listfruitsOneItemList = const []});

List<ListfruitsOneItemModel> listfruitsOneItemList;

ShoppingcartThreeModel copyWith({List<ListfruitsOneItemModel>? listfruitsOneItemList}) { return ShoppingcartThreeModel(
listfruitsOneItemList : listfruitsOneItemList ?? this.listfruitsOneItemList,
); } 
@override List<Object?> get props => [listfruitsOneItemList];
 }
