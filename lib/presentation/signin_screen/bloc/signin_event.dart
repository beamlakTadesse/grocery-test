// ignore_for_file: must_be_immutable

part of 'signin_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Signin widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SigninEvent extends Equatable {}

/// Event that is dispatched when the Signin widget is first created.
class SigninInitialEvent extends SigninEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing password visibility
class ChangePasswordVisibilityEvent extends SigninEvent {
  ChangePasswordVisibilityEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

class LoginEvent extends SigninEvent {
  LoginEvent({required this.password, required this.phone});

  String phone;
  String password;

  @override
  List<Object?> get props => [phone, password];
}
