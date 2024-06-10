import '/components/map_page_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'map_widget.dart' show MapWidget;
import 'package:flutter/material.dart';

class MapModel extends FlutterFlowModel<MapWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for map_page component.
  late MapPageModel mapPageModel;

  @override
  void initState(BuildContext context) {
    mapPageModel = createModel(context, () => MapPageModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    mapPageModel.dispose();
  }
}
