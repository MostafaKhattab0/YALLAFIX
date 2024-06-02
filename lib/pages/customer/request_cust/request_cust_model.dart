import '/flutter_flow/flutter_flow_util.dart';
import 'request_cust_widget.dart' show RequestCustWidget;
import 'package:flutter/material.dart';

class RequestCustModel extends FlutterFlowModel<RequestCustWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
