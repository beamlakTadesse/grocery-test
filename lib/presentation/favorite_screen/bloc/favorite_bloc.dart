import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:grocery/presentation/favorite_screen/models/favorite_model.dart';
import '/core/app_export.dart';
import '../models/listbanana_one_item_model.dart';
import '../models/listbanana_one1_item_model.dart';
part 'favorite_event.dart';
part 'favorite_state.dart';

/// A bloc that manages the state of a Favorite according to the event that is dispatched to it.
class FavoriteBloc extends Bloc<FavoriteEvent, FavoriteState> {
  FavoriteBloc(FavoriteState initialState) : super(initialState) {
    on<FavoriteInitialEvent>(_onInitialize);
  }

  _onInitialize(
    FavoriteInitialEvent event,
    Emitter<FavoriteState> emit,
  ) async {
    emit(state.copyWith(
        favoriteModelObj: state.favoriteModelObj?.copyWith(
            listbananaOneItemList: fillListbananaOneItemList(),
            listbananaOne1ItemList: fillListbananaOne1ItemList())));
  }

  List<ListbananaOneItemModel> fillListbananaOneItemList() {
    return List.generate(4, (index) => ListbananaOneItemModel());
  }

  List<ListbananaOne1ItemModel> fillListbananaOne1ItemList() {
    return List.generate(3, (index) => ListbananaOne1ItemModel());
  }
}
