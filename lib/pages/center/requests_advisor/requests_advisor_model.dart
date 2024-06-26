import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'requests_advisor_widget.dart' show RequestsAdvisorWidget;
import 'package:flutter/material.dart';

class RequestsAdvisorModel extends FlutterFlowModel<RequestsAdvisorWidget> {
  ///  Local state fields for this page.

  CustomersRecord? custINFO;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
