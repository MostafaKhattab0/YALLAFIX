import '/chat_g_p_t_component/reply/reply_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'review_cust_widget.dart' show ReviewCustWidget;
import 'package:flutter/material.dart';

class ReviewCustModel extends FlutterFlowModel<ReviewCustWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for Reply component.
  late ReplyModel replyModel;

  @override
  void initState(BuildContext context) {
    replyModel = createModel(context, () => ReplyModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    replyModel.dispose();
  }
}
