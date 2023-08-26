import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:grocery/presentation/onboardingzero_screen/models/onboardingzero_model.dart';
import 'package:grocery/routes/app_routes.dart';
import '/core/app_export.dart';
part 'onboardingzero_event.dart';
part 'onboardingzero_state.dart';

/// A bloc that manages the state of a Onboardingzero according to the event that is dispatched to it.
class OnboardingzeroBloc
    extends Bloc<OnboardingzeroEvent, OnboardingzeroState> {
  OnboardingzeroBloc(OnboardingzeroState initialState) : super(initialState) {
    on<OnboardingzeroInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OnboardingzeroInitialEvent event,
    Emitter<OnboardingzeroState> emit,
  ) async {
    Future.delayed(const Duration(milliseconds: 3000), () {
      NavigatorService.popAndPushNamed(
        AppRoutes.signinScreen,
      );
    });
  }
}
