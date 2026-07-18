import '/components/button24_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'order_row12_widget.dart' show OrderRow12Widget;
import 'package:flutter/material.dart';

class OrderRow12Model extends FlutterFlowModel<OrderRow12Widget> {
  ///  State fields for stateful widgets in this component.

  // Model for Button.
  late Button24Model buttonModel;

  @override
  void initState(BuildContext context) {
    buttonModel = createModel(context, () => Button24Model());
  }

  @override
  void dispose() {
    buttonModel.dispose();
  }
}
