// ignore_for_file: must_be_immutable

part of 'congratulations_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Congratulations widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CongratulationsEvent extends Equatable {}

/// Event that is dispatched when the Congratulations widget is first created.
class CongratulationsInitialEvent extends CongratulationsEvent {
  @override
  List<Object?> get props => [];
}
