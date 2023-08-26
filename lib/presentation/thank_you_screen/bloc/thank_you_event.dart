// ignore_for_file: must_be_immutable

part of 'thank_you_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ThankYou widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ThankYouEvent extends Equatable {}

/// Event that is dispatched when the ThankYou widget is first created.
class ThankYouInitialEvent extends ThankYouEvent {
  @override
  List<Object?> get props => [];
}
