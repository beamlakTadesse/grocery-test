// ignore_for_file: must_be_immutable

part of 'categories_three_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///CategoriesThree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CategoriesThreeEvent extends Equatable {}

/// Event that is dispatched when the CategoriesThree widget is first created.
class CategoriesThreeInitialEvent extends CategoriesThreeEvent {
  @override
  List<Object?> get props => [];
}
