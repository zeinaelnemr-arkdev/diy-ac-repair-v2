import '/components/button14_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'order_row2_widget.dart' show OrderRow2Widget;
import 'package:flutter/material.dart';

class OrderRow2Model extends FlutterFlowModel<OrderRow2Widget> {
  ///  State fields for stateful widgets in this component.

  // Model for Button.
  late Button14Model buttonModel;

  @override
  void initState(BuildContext context) {
    buttonModel = createModel(context, () => Button14Model());
  }

  @override
  void dispose() {
    buttonModel.dispose();
  }
}
