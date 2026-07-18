import '/components/button26_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'address_card_widget.dart' show AddressCardWidget;
import 'package:flutter/material.dart';

class AddressCardModel extends FlutterFlowModel<AddressCardWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for Button.
  late Button26Model buttonModel1;
  // Model for Button.
  late Button26Model buttonModel2;
  // Model for Button.
  late Button26Model buttonModel3;

  @override
  void initState(BuildContext context) {
    buttonModel1 = createModel(context, () => Button26Model());
    buttonModel2 = createModel(context, () => Button26Model());
    buttonModel3 = createModel(context, () => Button26Model());
  }

  @override
  void dispose() {
    buttonModel1.dispose();
    buttonModel2.dispose();
    buttonModel3.dispose();
  }
}
