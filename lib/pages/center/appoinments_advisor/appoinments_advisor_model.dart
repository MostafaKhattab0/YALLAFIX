import '/flutter_flow/flutter_flow_util.dart';
import 'appoinments_advisor_widget.dart' show AppoinmentsAdvisorWidget;
import 'package:flutter/material.dart';

class AppoinmentsAdvisorModel
    extends FlutterFlowModel<AppoinmentsAdvisorWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
