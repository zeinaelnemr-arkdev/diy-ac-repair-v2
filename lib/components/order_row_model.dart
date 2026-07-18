import '/components/button12_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'order_row_widget.dart' show OrderRowWidget;
import 'package:flutter/material.dart';

class OrderRowModel extends FlutterFlowModel<OrderRowWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for Button.
  late Button12Model buttonModel;

  @override
  void initState(BuildContext context) {
    buttonModel = createModel(context, () => Button12Model());
  }

  @override
  void dispose() {
    buttonModel.dispose();
  }
}
