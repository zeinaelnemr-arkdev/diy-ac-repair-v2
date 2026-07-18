import '/components/button37_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'something_went_wrong_widget.dart' show SomethingWentWrongWidget;
import 'package:flutter/material.dart';

class SomethingWentWrongModel
    extends FlutterFlowModel<SomethingWentWrongWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Button.
  late Button37Model buttonModel1;
  // Model for Button.
  late Button37Model buttonModel2;

  @override
  void initState(BuildContext context) {
    buttonModel1 = createModel(context, () => Button37Model());
    buttonModel2 = createModel(context, () => Button37Model());
  }

  @override
  void dispose() {
    buttonModel1.dispose();
    buttonModel2.dispose();
  }
}
