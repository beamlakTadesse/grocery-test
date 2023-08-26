import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:grocery/presentation/congratulations_dialog/models/congratulations_model.dart';
import '/core/app_export.dart';
part 'congratulations_event.dart';
part 'congratulations_state.dart';

/// A bloc that manages the state of a Congratulations according to the event that is dispatched to it.
class CongratulationsBloc
    extends Bloc<CongratulationsEvent, CongratulationsState> {
  CongratulationsBloc(CongratulationsState initialState) : super(initialState) {
    on<CongratulationsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    CongratulationsInitialEvent event,
    Emitter<CongratulationsState> emit,
  ) async {}
}
