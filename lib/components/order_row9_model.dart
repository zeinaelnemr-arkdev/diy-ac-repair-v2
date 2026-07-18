import '/components/button21_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'order_row9_widget.dart' show OrderRow9Widget;
import 'package:flutter/material.dart';

class OrderRow9Model extends FlutterFlowModel<OrderRow9Widget> {
  ///  State fields for stateful widgets in this component.

  // Model for Button.
  late Button21Model buttonModel;

  @override
  void initState(BuildContext context) {
    buttonModel = createModel(context, () => Button21Model());
  }

  @override
  void dispose() {
    buttonModel.dispose();
  }
}
