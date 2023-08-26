// ignore_for_file: must_be_immutable

part of 'itemdetails_two_bloc.dart';

/// Represents the state of ItemdetailsTwo in the application.
class ItemdetailsTwoState extends Equatable {
  ItemdetailsTwoState({
    this.sliderIndex = 0,
    this.itemdetailsTwoModelObj,
  });

  ItemdetailsTwoModel? itemdetailsTwoModelObj;

  int sliderIndex;

  @override
  List<Object?> get props => [
        sliderIndex,
        itemdetailsTwoModelObj,
      ];
  ItemdetailsTwoState copyWith({
    int? sliderIndex,
    ItemdetailsTwoModel? itemdetailsTwoModelObj,
  }) {
    return ItemdetailsTwoState(
      sliderIndex: sliderIndex ?? this.sliderIndex,
      itemdetailsTwoModelObj:
          itemdetailsTwoModelObj ?? this.itemdetailsTwoModelObj,
    );
  }
}

class LoadingProductState extends ItemdetailsTwoState {}

class LoadedProductState extends ItemdetailsTwoState {
  final Product data;

  LoadedProductState({required this.data});
}

class LoadedProductErrorState extends ItemdetailsTwoState {
  final String msg;

  LoadedProductErrorState({required this.msg});
}
