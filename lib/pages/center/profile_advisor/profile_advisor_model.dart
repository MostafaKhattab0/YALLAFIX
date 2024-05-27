import '/flutter_flow/flutter_flow_util.dart';
import 'profile_advisor_widget.dart' show ProfileAdvisorWidget;
import 'package:flutter/material.dart';

class ProfileAdvisorModel extends FlutterFlowModel<ProfileAdvisorWidget> {
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
