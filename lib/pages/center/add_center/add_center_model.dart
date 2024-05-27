import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'add_center_widget.dart' show AddCenterWidget;
import 'package:flutter/material.dart';

class AddCenterModel extends FlutterFlowModel<AddCenterWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for centerName widget.
  FocusNode? centerNameFocusNode;
  TextEditingController? centerNameTextController;
  String? Function(BuildContext, String?)? centerNameTextControllerValidator;
  String? _centerNameTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '3h7lo9t6' /* Please enter an age for the pa... */,
      );
    }

    return null;
  }

  // State field(s) for DropDown widget.
  List<String>? dropDownValue;
  FormFieldController<List<String>>? dropDownValueController;
  // State field(s) for centerAddress widget.
  FocusNode? centerAddressFocusNode;
  TextEditingController? centerAddressTextController;
  String? Function(BuildContext, String?)? centerAddressTextControllerValidator;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;
  // State field(s) for centerLocation widget.
  var centerLocationValue = const FFPlace();
  // State field(s) for centerDescription widget.
  FocusNode? centerDescriptionFocusNode;
  TextEditingController? centerDescriptionTextController;
  String? Function(BuildContext, String?)?
      centerDescriptionTextControllerValidator;

  @override
  void initState(BuildContext context) {
    centerNameTextControllerValidator = _centerNameTextControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    centerNameFocusNode?.dispose();
    centerNameTextController?.dispose();

    centerAddressFocusNode?.dispose();
    centerAddressTextController?.dispose();

    centerDescriptionFocusNode?.dispose();
    centerDescriptionTextController?.dispose();
  }
}
