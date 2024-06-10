import '/flutter_flow/flutter_flow_util.dart';
import 'login_cust_widget.dart' show LoginCustWidget;
import 'package:flutter/material.dart';

class LoginCustModel extends FlutterFlowModel<LoginCustWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey1 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for emailAddress_Create widget.
  FocusNode? emailAddressCreateFocusNode;
  TextEditingController? emailAddressCreateTextController;
  String? Function(BuildContext, String?)?
      emailAddressCreateTextControllerValidator;
  // State field(s) for password_Create widget.
  FocusNode? passwordCreateFocusNode;
  TextEditingController? passwordCreateTextController;
  late bool passwordCreateVisibility;
  String? Function(BuildContext, String?)?
      passwordCreateTextControllerValidator;
  // State field(s) for confirm widget.
  FocusNode? confirmFocusNode;
  TextEditingController? confirmTextController;
  late bool confirmVisibility;
  String? Function(BuildContext, String?)? confirmTextControllerValidator;
  // State field(s) for emailAddresslog widget.
  FocusNode? emailAddresslogFocusNode;
  TextEditingController? emailAddresslogTextController;
  String? Function(BuildContext, String?)?
      emailAddresslogTextControllerValidator;
  // State field(s) for passwordlog widget.
  FocusNode? passwordlogFocusNode;
  TextEditingController? passwordlogTextController;
  late bool passwordlogVisibility;
  String? Function(BuildContext, String?)? passwordlogTextControllerValidator;

  @override
  void initState(BuildContext context) {
    passwordCreateVisibility = false;
    confirmVisibility = false;
    passwordlogVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
    emailAddressCreateFocusNode?.dispose();
    emailAddressCreateTextController?.dispose();

    passwordCreateFocusNode?.dispose();
    passwordCreateTextController?.dispose();

    confirmFocusNode?.dispose();
    confirmTextController?.dispose();

    emailAddresslogFocusNode?.dispose();
    emailAddresslogTextController?.dispose();

    passwordlogFocusNode?.dispose();
    passwordlogTextController?.dispose();
  }
}
