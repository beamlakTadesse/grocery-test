// ignore_for_file: must_be_immutable

part of 'itemdetails_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ItemdetailsTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ItemdetailsTwoEvent extends Equatable {}

/// Event that is dispatched when the ItemdetailsTwo widget is first created.
class ItemdetailsTwoInitialEvent extends ItemdetailsTwoEvent {
  @override
  List<Object?> get props => [];
}
