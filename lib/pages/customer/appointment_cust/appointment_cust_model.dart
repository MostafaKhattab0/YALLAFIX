import '/components/timer_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'appointment_cust_widget.dart' show AppointmentCustWidget;
import 'package:flutter/material.dart';

class AppointmentCustModel extends FlutterFlowModel<AppointmentCustWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Models for timer dynamic component.
  late FlutterFlowDynamicModels<TimerModel> timerModels;

  @override
  void initState(BuildContext context) {
    timerModels = FlutterFlowDynamicModels(() => TimerModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    timerModels.dispose();
  }
}
