import '/components/button36_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'address_card3_widget.dart' show AddressCard3Widget;
import 'package:flutter/material.dart';

class AddressCard3Model extends FlutterFlowModel<AddressCard3Widget> {
  ///  State fields for stateful widgets in this component.

  // Model for Button.
  late Button36Model buttonModel1;
  // Model for Button.
  late Button36Model buttonModel2;
  // Model for Button.
  late Button36Model buttonModel3;

  @override
  void initState(BuildContext context) {
    buttonModel1 = createModel(context, () => Button36Model());
    buttonModel2 = createModel(context, () => Button36Model());
    buttonModel3 = createModel(context, () => Button36Model());
  }

  @override
  void dispose() {
    buttonModel1.dispose();
    buttonModel2.dispose();
    buttonModel3.dispose();
  }
}
