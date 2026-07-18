import '/components/button17_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'order_row5_widget.dart' show OrderRow5Widget;
import 'package:flutter/material.dart';

class OrderRow5Model extends FlutterFlowModel<OrderRow5Widget> {
  ///  State fields for stateful widgets in this component.

  // Model for Button.
  late Button17Model buttonModel;

  @override
  void initState(BuildContext context) {
    buttonModel = createModel(context, () => Button17Model());
  }

  @override
  void dispose() {
    buttonModel.dispose();
  }
}
