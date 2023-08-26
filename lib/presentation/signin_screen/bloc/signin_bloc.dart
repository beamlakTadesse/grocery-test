import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:grocery/core/utils/pref_utils.dart';
import 'package:grocery/data/repositories/signinRepo.dart';
import 'package:grocery/presentation/signin_screen/models/signin_model.dart';
import 'package:grocery/routes/app_routes.dart';
import '/core/app_export.dart';
part 'signin_event.dart';
part 'signin_state.dart';

/// A bloc that manages the state of a Signin according to the event that is dispatched to it.
class SigninBloc extends Bloc<SigninEvent, SigninState> {
  SigninBloc(SigninState initialState) : super(initialState) {
    on<SigninInitialEvent>(_onInitialize);
    on<ChangePasswordVisibilityEvent>(_changePasswordVisibility);
    on<LoginEvent>((event, emit) async {
      emit(LoadingSigninState());
      final _result = await SigninRepo()
          .login(phone: event.phone, password: event.password);
      _result.fold(
        (l) {
          emit(LoadedSigninErrorState(msg: l.msg));
        },
        (r) {
          emit(LoadedSigninState(data: r.data.token));

          NavigatorService.pushNamed(
            AppRoutes.homeFourScreen,
          );
          PrefUtils().setToken(r.data.token);
        },
      );
    });
  }

  _changePasswordVisibility(
    ChangePasswordVisibilityEvent event,
    Emitter<SigninState> emit,
  ) {
    emit(state.copyWith(isShowPassword: event.value));
  }

  _onInitialize(
    SigninInitialEvent event,
    Emitter<SigninState> emit,
  ) async {
    emit(state.copyWith(
        emailController: TextEditingController(),
        group194Controller: TextEditingController(),
        isShowPassword: false));
  }
}
