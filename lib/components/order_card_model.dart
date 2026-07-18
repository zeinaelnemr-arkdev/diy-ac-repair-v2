import '/components/button38_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'order_card_widget.dart' show OrderCardWidget;
import 'package:flutter/material.dart';

class OrderCardModel extends FlutterFlowModel<OrderCardWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for Button.
  late Button38Model buttonModel;

  @override
  void initState(BuildContext context) {
    buttonModel = createModel(context, () => Button38Model());
  }

  @override
  void dispose() {
    buttonModel.dispose();
  }
}
