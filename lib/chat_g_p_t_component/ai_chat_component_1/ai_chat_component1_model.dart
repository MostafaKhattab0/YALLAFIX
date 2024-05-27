import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/chat_g_p_t_component/writing_indicator_1/writing_indicator1_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'ai_chat_component1_widget.dart' show AiChatComponent1Widget;
import 'package:flutter/material.dart';

class AiChatComponent1Model extends FlutterFlowModel<AiChatComponent1Widget> {
  ///  Local state fields for this component.

  bool aiResponding = false;

  String threadID = ' ';

  List<ContentStruct> chatHistory = [];
  void addToChatHistory(ContentStruct item) => chatHistory.add(item);
  void removeFromChatHistory(ContentStruct item) => chatHistory.remove(item);
  void removeAtIndexFromChatHistory(int index) => chatHistory.removeAt(index);
  void insertAtIndexInChatHistory(int index, ContentStruct item) =>
      chatHistory.insert(index, item);
  void updateChatHistoryAtIndex(int index, Function(ContentStruct) updateFn) =>
      chatHistory[index] = updateFn(chatHistory[index]);

  ///  State fields for stateful widgets in this component.

  // State field(s) for ListView widget.
  ScrollController? listViewController;
  // Model for writingIndicator_1 component.
  late WritingIndicator1Model writingIndicator1Model;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - API (AI Chat)] action in IconButton widget.
  ApiCallResponse? apiChatResult;

  @override
  void initState(BuildContext context) {
    listViewController = ScrollController();
    writingIndicator1Model =
        createModel(context, () => WritingIndicator1Model());
  }

  @override
  void dispose() {
    listViewController?.dispose();
    writingIndicator1Model.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
