import '/components/button25_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'order_item_widget.dart' show OrderItemWidget;
import 'package:flutter/material.dart';

class OrderItemModel extends FlutterFlowModel<OrderItemWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for Button.
  late Button25Model buttonModel;

  @override
  void initState(BuildContext context) {
    buttonModel = createModel(context, () => Button25Model());
  }

  @override
  void dispose() {
    buttonModel.dispose();
  }
}
