import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:grocery/presentation/shoppingcart_three_page/models/shoppingcart_three_model.dart';
import '/core/app_export.dart';
import '../models/listfruits_one_item_model.dart';
part 'shoppingcart_three_event.dart';
part 'shoppingcart_three_state.dart';

/// A bloc that manages the state of a ShoppingcartThree according to the event that is dispatched to it.
class ShoppingcartThreeBloc
    extends Bloc<ShoppingcartThreeEvent, ShoppingcartThreeState> {
  ShoppingcartThreeBloc(ShoppingcartThreeState initialState)
      : super(initialState) {
    on<ShoppingcartThreeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ShoppingcartThreeInitialEvent event,
    Emitter<ShoppingcartThreeState> emit,
  ) async {
    emit(state.copyWith(
        shoppingcartThreeModelObj: state.shoppingcartThreeModelObj
            ?.copyWith(listfruitsOneItemList: fillListfruitsOneItemList())));
  }

  List<ListfruitsOneItemModel> fillListfruitsOneItemList() {
    return List.generate(3, (index) => ListfruitsOneItemModel());
  }
}
