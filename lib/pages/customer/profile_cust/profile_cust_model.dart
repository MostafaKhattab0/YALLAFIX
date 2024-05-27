import '/flutter_flow/flutter_flow_util.dart';
import 'profile_cust_widget.dart' show ProfileCustWidget;
import 'package:flutter/material.dart';

class ProfileCustModel extends FlutterFlowModel<ProfileCustWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
