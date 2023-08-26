// ignore_for_file: must_be_immutable

part of 'shoppingcart_three_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ShoppingcartThree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ShoppingcartThreeEvent extends Equatable {}

/// Event that is dispatched when the ShoppingcartThree widget is first created.
class ShoppingcartThreeInitialEvent extends ShoppingcartThreeEvent {
  @override
  List<Object?> get props => [];
}
