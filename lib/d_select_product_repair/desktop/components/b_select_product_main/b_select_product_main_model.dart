import '/d_select_product_repair/desktop/components/components/button/button_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'b_select_product_main_widget.dart' show BSelectProductMainWidget;
import 'package:flutter/material.dart';

class BSelectProductMainModel
    extends FlutterFlowModel<BSelectProductMainWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Dropdown widget.
  String? dropdownValue;
  FormFieldController<String>? dropdownValueController;
  // Model for Button.
  late ButtonModel buttonModel1;
  // Model for Button.
  late ButtonModel buttonModel2;

  @override
  void initState(BuildContext context) {
    buttonModel1 = createModel(context, () => ButtonModel());
    buttonModel2 = createModel(context, () => ButtonModel());
  }

  @override
  void dispose() {
    buttonModel1.dispose();
    buttonModel2.dispose();
  }
}
