import '/flutter_flow/flutter_flow_util.dart';
import 'history_cust_widget.dart' show HistoryCustWidget;
import 'package:flutter/material.dart';

class HistoryCustModel extends FlutterFlowModel<HistoryCustWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
