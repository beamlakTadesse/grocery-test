// ignore_for_file: must_be_immutable

part of 'signin_bloc.dart';

/// Represents the state of Signin in the application.
class SigninState extends Equatable {
  SigninState({
    this.emailController,
    this.group194Controller,
    this.isShowPassword = true,
    this.signinModelObj,
  });

  TextEditingController? emailController;

  TextEditingController? group194Controller;

  SigninModel? signinModelObj;

  bool isShowPassword;

  @override
  List<Object?> get props => [
        emailController,
        group194Controller,
        isShowPassword,
        signinModelObj,
      ];
  SigninState copyWith({
    TextEditingController? emailController,
    TextEditingController? group194Controller,
    bool? isShowPassword,
    SigninModel? signinModelObj,
  }) {
    return SigninState(
      emailController: emailController ?? this.emailController,
      group194Controller: group194Controller ?? this.group194Controller,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      signinModelObj: signinModelObj ?? this.signinModelObj,
    );
  }
}

class LoadingSigninState extends SigninState {}

class LoadedSigninState extends SigninState {
  final String data;

  LoadedSigninState({required this.data});
}

class LoadedSigninErrorState extends SigninState {
  final String msg;

  LoadedSigninErrorState({required this.msg});
}
