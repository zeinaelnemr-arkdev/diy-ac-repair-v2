import '/components/button39_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'order_card2_widget.dart' show OrderCard2Widget;
import 'package:flutter/material.dart';

class OrderCard2Model extends FlutterFlowModel<OrderCard2Widget> {
  ///  State fields for stateful widgets in this component.

  // Model for Button.
  late Button39Model buttonModel;

  @override
  void initState(BuildContext context) {
    buttonModel = createModel(context, () => Button39Model());
  }

  @override
  void dispose() {
    buttonModel.dispose();
  }
}
