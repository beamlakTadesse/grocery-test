// ignore_for_file: must_be_immutable

part of 'product_bloc.dart';

/// Represents the state of Product in the application.
class ProductState extends Equatable {
  @override
  List<Object?> get props => [];
}

class LoadingProductState extends ProductState {}

class LoadedProductState extends ProductState {
  final ProductModel data;

  LoadedProductState({required this.data});
}

class LoadedProductErrorState extends ProductState {
  final String msg;

  LoadedProductErrorState({required this.msg});
}
