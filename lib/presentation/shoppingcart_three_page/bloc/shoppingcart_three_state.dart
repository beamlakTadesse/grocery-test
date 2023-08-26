// ignore_for_file: must_be_immutable

part of 'shoppingcart_three_bloc.dart';

/// Represents the state of ShoppingcartThree in the application.
class ShoppingcartThreeState extends Equatable {
  ShoppingcartThreeState({this.shoppingcartThreeModelObj});

  ShoppingcartThreeModel? shoppingcartThreeModelObj;

  @override
  List<Object?> get props => [
        shoppingcartThreeModelObj,
      ];
  ShoppingcartThreeState copyWith(
      {ShoppingcartThreeModel? shoppingcartThreeModelObj}) {
    return ShoppingcartThreeState(
      shoppingcartThreeModelObj:
          shoppingcartThreeModelObj ?? this.shoppingcartThreeModelObj,
    );
  }
}
