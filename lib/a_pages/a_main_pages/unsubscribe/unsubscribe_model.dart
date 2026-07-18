import '/backend/backend.dart';
import '/components/status_illustration_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'unsubscribe_widget.dart' show UnsubscribeWidget;
import 'package:flutter/material.dart';

class UnsubscribeModel extends FlutterFlowModel<UnsubscribeWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Read Document] action in unsubscribe widget.
  SubscriberRecord? subscDoc;
  // Model for StatusIllustration.
  late StatusIllustrationModel statusIllustrationModel;

  @override
  void initState(BuildContext context) {
    statusIllustrationModel =
        createModel(context, () => StatusIllustrationModel());
  }

  @override
  void dispose() {
    statusIllustrationModel.dispose();
  }
}
