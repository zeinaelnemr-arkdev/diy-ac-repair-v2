import '/components/button27_widget.dart';
import '/components/button36_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'address_card2_widget.dart' show AddressCard2Widget;
import 'package:flutter/material.dart';

class AddressCard2Model extends FlutterFlowModel<AddressCard2Widget> {
  ///  State fields for stateful widgets in this component.

  // Model for Button.
  late Button27Model buttonModel;
  // Model for Button.
  late Button36Model buttonModel1;
  // Model for Button.
  late Button36Model buttonModel2;

  @override
  void initState(BuildContext context) {
    buttonModel = createModel(context, () => Button27Model());
    buttonModel1 = createModel(context, () => Button36Model());
    buttonModel2 = createModel(context, () => Button36Model());
  }

  @override
  void dispose() {
    buttonModel.dispose();
    buttonModel1.dispose();
    buttonModel2.dispose();
  }
}
