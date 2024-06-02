import '/flutter_flow/flutter_flow_util.dart';
import 'contactcust_center_widget.dart' show ContactcustCenterWidget;
import 'package:flutter/material.dart';

class ContactcustCenterModel extends FlutterFlowModel<ContactcustCenterWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for SwitchListTile widget.
  bool? switchListTileValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
