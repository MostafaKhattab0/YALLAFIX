import '/flutter_flow/flutter_flow_util.dart';
import '/pages/customer/dashboard_task_list/dashboard_task_list_widget.dart';
import 'home_advisor_widget.dart' show HomeAdvisorWidget;
import 'package:flutter/material.dart';

class HomeAdvisorModel extends FlutterFlowModel<HomeAdvisorWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for DashboardTaskList component.
  late DashboardTaskListModel dashboardTaskListModel;

  @override
  void initState(BuildContext context) {
    dashboardTaskListModel =
        createModel(context, () => DashboardTaskListModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    dashboardTaskListModel.dispose();
  }
}
