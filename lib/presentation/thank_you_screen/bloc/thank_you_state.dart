// ignore_for_file: must_be_immutable

part of 'thank_you_bloc.dart';

/// Represents the state of ThankYou in the application.
class ThankYouState extends Equatable {
  ThankYouState({this.thankYouModelObj});

  ThankYouModel? thankYouModelObj;

  @override
  List<Object?> get props => [
        thankYouModelObj,
      ];
  ThankYouState copyWith({ThankYouModel? thankYouModelObj}) {
    return ThankYouState(
      thankYouModelObj: thankYouModelObj ?? this.thankYouModelObj,
    );
  }
}
