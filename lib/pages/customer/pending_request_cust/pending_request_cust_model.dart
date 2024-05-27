import '/flutter_flow/flutter_flow_util.dart';
import 'pending_request_cust_widget.dart' show PendingRequestCustWidget;
import 'package:flutter/material.dart';

class PendingRequestCustModel
    extends FlutterFlowModel<PendingRequestCustWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
