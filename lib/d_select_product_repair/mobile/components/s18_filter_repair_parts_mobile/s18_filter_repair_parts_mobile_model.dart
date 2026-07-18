import '/components/button10_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 's18_filter_repair_parts_mobile_widget.dart'
    show S18FilterRepairPartsMobileWidget;
import 'package:flutter/material.dart';

class S18FilterRepairPartsMobileModel
    extends FlutterFlowModel<S18FilterRepairPartsMobileWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Dropdown widget.
  String? dropdownValue1;
  FormFieldController<String>? dropdownValueController1;
  // State field(s) for Dropdown widget.
  String? dropdownValue2;
  FormFieldController<String>? dropdownValueController2;
  // State field(s) for Dropdown widget.
  String? dropdownValue3;
  FormFieldController<String>? dropdownValueController3;
  // State field(s) for Dropdown widget.
  String? dropdownValue4;
  FormFieldController<String>? dropdownValueController4;
  // State field(s) for Dropdown widget.
  String? dropdownValue5;
  FormFieldController<String>? dropdownValueController5;
  // Model for Button.
  late Button10Model buttonModel1;
  // State field(s) for Dropdown widget.
  String? dropdownValue6;
  FormFieldController<String>? dropdownValueController6;
  // State field(s) for Dropdown widget.
  String? dropdownValue7;
  FormFieldController<String>? dropdownValueController7;
  // State field(s) for Dropdown widget.
  String? dropdownValue8;
  FormFieldController<String>? dropdownValueController8;
  // State field(s) for Dropdown widget.
  String? dropdownValue9;
  FormFieldController<String>? dropdownValueController9;
  // Model for Button.
  late Button10Model buttonModel2;
  // State field(s) for Dropdown widget.
  String? dropdownValue10;
  FormFieldController<String>? dropdownValueController10;
  // State field(s) for Dropdown widget.
  String? dropdownValue11;
  FormFieldController<String>? dropdownValueController11;
  // State field(s) for Dropdown widget.
  String? dropdownValue12;
  FormFieldController<String>? dropdownValueController12;
  // State field(s) for Dropdown widget.
  String? dropdownValue13;
  FormFieldController<String>? dropdownValueController13;
  // State field(s) for Dropdown widget.
  String? dropdownValue14;
  FormFieldController<String>? dropdownValueController14;
  // Model for Button.
  late Button10Model buttonModel3;

  @override
  void initState(BuildContext context) {
    buttonModel1 = createModel(context, () => Button10Model());
    buttonModel2 = createModel(context, () => Button10Model());
    buttonModel3 = createModel(context, () => Button10Model());
  }

  @override
  void dispose() {
    buttonModel1.dispose();
    buttonModel2.dispose();
    buttonModel3.dispose();
  }
}
