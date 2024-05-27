import '/flutter_flow/flutter_flow_util.dart';
import 'balance_advisor_widget.dart' show BalanceAdvisorWidget;
import 'package:flutter/material.dart';

class BalanceAdvisorModel extends FlutterFlowModel<BalanceAdvisorWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
