import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:grocery/data/models/categoryModel.dart';
import 'package:grocery/data/repositories/categoryRepo.dart';
import 'package:grocery/presentation/home_page/models/home_model.dart';
import '/core/app_export.dart';
import '../models/avocadoprofile_item_model.dart';
import '../models/listrefresh_one1_item_model.dart';
part 'home_event.dart';
part 'home_state.dart';

/// A bloc that manages the state of a Home according to the event that is dispatched to it.
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(HomeState initialState) : super(initialState) {
    on<HomeInitialEvent>(_onInitialize);
    on<GetCategoriesEvent>((event, emit) async {
      emit(LoadingSigninState());
      final _result = await CategoryRepo().getCategories();
      _result.fold(
        (l) {
          print(l.msg);

          emit(LoadedCategoryErrorState(msg: l.msg));
        },
        (r) {
          print(r.data.length);

          emit(LoadedCategoryState(data: r));
        },
      );
    });
  }

  _onInitialize(
    HomeInitialEvent event,
    Emitter<HomeState> emit,
  ) async {
    emit(state.copyWith(
        homeModelObj: state.homeModelObj?.copyWith(
            avocadoprofileItemList: fillAvocadoprofileItemList(),
            listrefreshOne1ItemList: fillListrefreshOne1ItemList())));
    emit(LoadingSigninState());
    final _result = await CategoryRepo().getCategories();
    _result.fold(
      (l) {
        print(l.msg);

        emit(LoadedCategoryErrorState(msg: l.msg));
      },
      (r) {
        print(r.data.length);

        emit(LoadedCategoryState(data: r));
      },
    );
  }

  List<AvocadoprofileItemModel> fillAvocadoprofileItemList() {
    return List.generate(4, (index) => AvocadoprofileItemModel());
  }

  List<ListrefreshOne1ItemModel> fillListrefreshOne1ItemList() {
    return List.generate(4, (index) => ListrefreshOne1ItemModel());
  }
}
