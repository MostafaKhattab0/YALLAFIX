import '/flutter_flow/flutter_flow_util.dart';
import 'edit_booking_cust_widget.dart' show EditBookingCustWidget;
import 'package:flutter/material.dart';

class EditBookingCustModel extends FlutterFlowModel<EditBookingCustWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for fullName widget.
  FocusNode? fullNameFocusNode;
  TextEditingController? fullNameTextController;
  String? Function(BuildContext, String?)? fullNameTextControllerValidator;
  String? _fullNameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        's8su54at' /* Please enter the patients full... */,
      );
    }

    return null;
  }

  // State field(s) for car widget.
  FocusNode? carFocusNode;
  TextEditingController? carTextController;
  String? Function(BuildContext, String?)? carTextControllerValidator;
  String? _carTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'eqar0bsl' /* Please enter an age for the pa... */,
      );
    }

    return null;
  }

  // State field(s) for model widget.
  FocusNode? modelFocusNode;
  TextEditingController? modelTextController;
  String? Function(BuildContext, String?)? modelTextControllerValidator;
  // State field(s) for description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionTextController;
  String? Function(BuildContext, String?)? descriptionTextControllerValidator;
  DateTime? datePicked;

  @override
  void initState(BuildContext context) {
    fullNameTextControllerValidator = _fullNameTextControllerValidator;
    carTextControllerValidator = _carTextControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    fullNameFocusNode?.dispose();
    fullNameTextController?.dispose();

    carFocusNode?.dispose();
    carTextController?.dispose();

    modelFocusNode?.dispose();
    modelTextController?.dispose();

    descriptionFocusNode?.dispose();
    descriptionTextController?.dispose();
  }
}
