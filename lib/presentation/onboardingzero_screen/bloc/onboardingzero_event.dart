// ignore_for_file: must_be_immutable

part of 'onboardingzero_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Onboardingzero widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OnboardingzeroEvent extends Equatable {}

/// Event that is dispatched when the Onboardingzero widget is first created.
class OnboardingzeroInitialEvent extends OnboardingzeroEvent {
  @override
  List<Object?> get props => [];
}
