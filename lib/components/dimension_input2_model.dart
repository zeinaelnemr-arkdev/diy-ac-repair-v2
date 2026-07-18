import '/components/text_field8_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dimension_input2_widget.dart' show DimensionInput2Widget;
import 'package:flutter/material.dart';

class DimensionInput2Model extends FlutterFlowModel<DimensionInput2Widget> {
  ///  State fields for stateful widgets in this component.

  // Model for TextField.
  late TextField8Model textFieldModel;

  @override
  void initState(BuildContext context) {
    textFieldModel = createModel(context, () => TextField8Model());
  }

  @override
  void dispose() {
    textFieldModel.dispose();
  }
}
