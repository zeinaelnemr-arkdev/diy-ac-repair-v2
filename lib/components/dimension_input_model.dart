import '/components/text_field2_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dimension_input_widget.dart' show DimensionInputWidget;
import 'package:flutter/material.dart';

class DimensionInputModel extends FlutterFlowModel<DimensionInputWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for TextField.
  late TextField2Model textFieldModel;

  @override
  void initState(BuildContext context) {
    textFieldModel = createModel(context, () => TextField2Model());
  }

  @override
  void dispose() {
    textFieldModel.dispose();
  }
}
