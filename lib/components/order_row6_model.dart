import '/components/button18_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'order_row6_widget.dart' show OrderRow6Widget;
import 'package:flutter/material.dart';

class OrderRow6Model extends FlutterFlowModel<OrderRow6Widget> {
  ///  State fields for stateful widgets in this component.

  // Model for Button.
  late Button18Model buttonModel;

  @override
  void initState(BuildContext context) {
    buttonModel = createModel(context, () => Button18Model());
  }

  @override
  void dispose() {
    buttonModel.dispose();
  }
}
