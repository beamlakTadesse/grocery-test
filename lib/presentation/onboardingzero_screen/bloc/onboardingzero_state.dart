// ignore_for_file: must_be_immutable

part of 'onboardingzero_bloc.dart';

/// Represents the state of Onboardingzero in the application.
class OnboardingzeroState extends Equatable {
  OnboardingzeroState({this.onboardingzeroModelObj});

  OnboardingzeroModel? onboardingzeroModelObj;

  @override
  List<Object?> get props => [
        onboardingzeroModelObj,
      ];
  OnboardingzeroState copyWith({OnboardingzeroModel? onboardingzeroModelObj}) {
    return OnboardingzeroState(
      onboardingzeroModelObj:
          onboardingzeroModelObj ?? this.onboardingzeroModelObj,
    );
  }
}
