import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:grocery/presentation/thank_you_screen/models/thank_you_model.dart';
import '/core/app_export.dart';
part 'thank_you_event.dart';
part 'thank_you_state.dart';

/// A bloc that manages the state of a ThankYou according to the event that is dispatched to it.
class ThankYouBloc extends Bloc<ThankYouEvent, ThankYouState> {
  ThankYouBloc(ThankYouState initialState) : super(initialState) {
    on<ThankYouInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ThankYouInitialEvent event,
    Emitter<ThankYouState> emit,
  ) async {}
}
