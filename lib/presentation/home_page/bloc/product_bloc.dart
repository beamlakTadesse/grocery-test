import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:grocery/data/models/productModel.dart';
import 'package:grocery/data/repositories/productRepo.dart';
import '/core/app_export.dart';
part 'product_event.dart';
part 'product_state.dart';

/// A bloc that manages the state of a Home according to the event that is dispatched to it.
class ProductBloc extends Bloc<ProductEvent, ProductState> {
  ProductBloc(ProductState initialState) : super(initialState) {
    on<ProductInitialEvent>(_onInitialize);
    on<GetProductsEvent>((event, emit) async {
      emit(LoadingProductState());
      final _result = await ProductRepo().getProducts();
      _result.fold(
        (l) {
          print(l.msg);

          emit(LoadedProductErrorState(msg: l.msg));
        },
        (r) {
          print(r.data.length);

          emit(LoadedProductState(data: r));
        },
      );
    });
  }

  _onInitialize(
    ProductInitialEvent event,
    Emitter<ProductState> emit,
  ) async {
    emit(LoadingProductState());
    final _result = await ProductRepo().getProducts();
    _result.fold(
      (l) {
        print(l.msg);

        emit(LoadedProductErrorState(msg: l.msg));
      },
      (r) {
        print(r.data.length);

        emit(LoadedProductState(data: r));
      },
    );
  }
}
