import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:grocery/presentation/categories_three_screen/models/categories_three_model.dart';
import '/core/app_export.dart';
import '../models/gridfruits87ite_item_model.dart';
part 'categories_three_event.dart';
part 'categories_three_state.dart';

/// A bloc that manages the state of a CategoriesThree according to the event that is dispatched to it.
class CategoriesThreeBloc
    extends Bloc<CategoriesThreeEvent, CategoriesThreeState> {
  CategoriesThreeBloc(CategoriesThreeState initialState) : super(initialState) {
    on<CategoriesThreeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    CategoriesThreeInitialEvent event,
    Emitter<CategoriesThreeState> emit,
  ) async {
    emit(state.copyWith(
        categoriesThreeModelObj: state.categoriesThreeModelObj?.copyWith(
            gridfruits87iteItemList: fillGridfruits87iteItemList())));
  }

  List<Gridfruits87iteItemModel> fillGridfruits87iteItemList() {
    return List.generate(8, (index) => Gridfruits87iteItemModel());
  }
}
