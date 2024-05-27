import '/flutter_flow/flutter_flow_util.dart';
import 'payment_cust_widget.dart' show PaymentCustWidget;
import 'package:flutter/material.dart';

class PaymentCustModel extends FlutterFlowModel<PaymentCustWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
