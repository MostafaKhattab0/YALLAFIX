import '/flutter_flow/flutter_flow_util.dart';
import 'analysis_advisor_widget.dart' show AnalysisAdvisorWidget;
import 'package:flutter/material.dart';

class AnalysisAdvisorModel extends FlutterFlowModel<AnalysisAdvisorWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
