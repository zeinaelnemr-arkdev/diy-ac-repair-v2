import '/flutter_flow/flutter_flow_util.dart';
import '/l_user_profile/l_orderhistory_02/l_orderhistory02_widget.dart';
import 'l_order_history_widget.dart' show LOrderHistoryWidget;
import 'package:flutter/material.dart';

class LOrderHistoryModel extends FlutterFlowModel<LOrderHistoryWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for L_orderhistory_02 component.
  late LOrderhistory02Model lOrderhistory02Model;

  @override
  void initState(BuildContext context) {
    lOrderhistory02Model = createModel(context, () => LOrderhistory02Model());
  }

  @override
  void dispose() {
    lOrderhistory02Model.dispose();
  }
}
