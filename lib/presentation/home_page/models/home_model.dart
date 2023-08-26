// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'avocadoprofile_item_model.dart';import 'listrefresh_one1_item_model.dart';/// This class defines the variables used in the [home_page],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeModel extends Equatable {HomeModel({this.avocadoprofileItemList = const [], this.listrefreshOne1ItemList = const [], });

List<AvocadoprofileItemModel> avocadoprofileItemList;

List<ListrefreshOne1ItemModel> listrefreshOne1ItemList;

HomeModel copyWith({List<AvocadoprofileItemModel>? avocadoprofileItemList, List<ListrefreshOne1ItemModel>? listrefreshOne1ItemList, }) { return HomeModel(
avocadoprofileItemList : avocadoprofileItemList ?? this.avocadoprofileItemList,
listrefreshOne1ItemList : listrefreshOne1ItemList ?? this.listrefreshOne1ItemList,
); } 
@override List<Object?> get props => [avocadoprofileItemList,listrefreshOne1ItemList];
 }
