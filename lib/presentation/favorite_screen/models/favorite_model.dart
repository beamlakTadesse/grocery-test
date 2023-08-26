// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'listbanana_one_item_model.dart';import 'listbanana_one1_item_model.dart';/// This class defines the variables used in the [favorite_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class FavoriteModel extends Equatable {FavoriteModel({this.listbananaOneItemList = const [], this.listbananaOne1ItemList = const [], });

List<ListbananaOneItemModel> listbananaOneItemList;

List<ListbananaOne1ItemModel> listbananaOne1ItemList;

FavoriteModel copyWith({List<ListbananaOneItemModel>? listbananaOneItemList, List<ListbananaOne1ItemModel>? listbananaOne1ItemList, }) { return FavoriteModel(
listbananaOneItemList : listbananaOneItemList ?? this.listbananaOneItemList,
listbananaOne1ItemList : listbananaOne1ItemList ?? this.listbananaOne1ItemList,
); } 
@override List<Object?> get props => [listbananaOneItemList,listbananaOne1ItemList];
 }
