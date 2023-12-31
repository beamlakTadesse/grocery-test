import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:grocery/data/models/productModel.dart';
import 'package:grocery/data/repositories/productRepo.dart';
import 'package:grocery/presentation/itemdetails_two_screen/models/itemdetails_two_model.dart';
import '/core/app_export.dart';
import '../models/slider_item_model.dart';
part 'itemdetails_two_event.dart';
part 'itemdetails_two_state.dart';

/// A bloc that manages the state of a ItemdetailsTwo according to the event that is dispatched to it.
class ItemdetailsTwoBloc
    extends Bloc<ItemdetailsTwoEvent, ItemdetailsTwoState> {
  ItemdetailsTwoBloc(ItemdetailsTwoState initialState) : super(initialState) {
    on<ItemdetailsTwoInitialEvent>(_onInitialize);
    on<ItemdetailEvent>((event, emit) async {
      emit(LoadingProductState());
      final _result = await ProductRepo().getProduct(event.id);
      _result.fold(
        (l) {
          print(l.msg);

          emit(LoadedProductErrorState(msg: l.msg));
        },
        (r) {
          emit(LoadedProductState(data: r));
        },
      );
    });
  }

  List<SliderItemModel> fillSliderItemList() {
    return List.generate(1, (index) => SliderItemModel());
  }

  _onInitialize(
    ItemdetailsTwoInitialEvent event,
    Emitter<ItemdetailsTwoState> emit,
  ) async {
    emit(state.copyWith(sliderIndex: 0));
    emit(state.copyWith(
        itemdetailsTwoModelObj: state.itemdetailsTwoModelObj
            ?.copyWith(sliderItemList: fillSliderItemList())));
  }
}
