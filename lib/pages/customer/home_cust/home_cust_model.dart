import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/customer/sidebar/sidebar_widget.dart';
import 'home_cust_widget.dart' show HomeCustWidget;
import 'package:flutter/material.dart';

class HomeCustModel extends FlutterFlowModel<HomeCustWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressTextController;
  String? Function(BuildContext, String?)? emailAddressTextControllerValidator;
  List<CentersRecord> simpleSearchResults = [];
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // Model for sidebar component.
  late SidebarModel sidebarModel;

  @override
  void initState(BuildContext context) {
    sidebarModel = createModel(context, () => SidebarModel());
  }

  @override
  void dispose() {
    emailAddressFocusNode?.dispose();
    emailAddressTextController?.dispose();

    tabBarController?.dispose();
    sidebarModel.dispose();
  }
}
