import '/components/button22_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'order_row10_widget.dart' show OrderRow10Widget;
import 'package:flutter/material.dart';

class OrderRow10Model extends FlutterFlowModel<OrderRow10Widget> {
  ///  State fields for stateful widgets in this component.

  // Model for Button.
  late Button22Model buttonModel;

  @override
  void initState(BuildContext context) {
    buttonModel = createModel(context, () => Button22Model());
  }

  @override
  void dispose() {
    buttonModel.dispose();
  }
}
