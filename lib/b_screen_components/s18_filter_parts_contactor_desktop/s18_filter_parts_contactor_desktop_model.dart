import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 's18_filter_parts_contactor_desktop_widget.dart'
    show S18FilterPartsContactorDesktopWidget;
import 'package:flutter/material.dart';

class S18FilterPartsContactorDesktopModel
    extends FlutterFlowModel<S18FilterPartsContactorDesktopWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for DropDown-Make widget.
  String? dropDownMakeValue1;
  FormFieldController<String>? dropDownMakeValueController1;
  // State field(s) for DropDown-Make widget.
  String? dropDownMakeValue2;
  FormFieldController<String>? dropDownMakeValueController2;
  // State field(s) for DropDown-Make widget.
  String? dropDownMakeValue3;
  FormFieldController<String>? dropDownMakeValueController3;
  // State field(s) for DropDown-Make widget.
  String? dropDownMakeValue4;
  FormFieldController<String>? dropDownMakeValueController4;
  // State field(s) for DropDown-Make widget.
  String? dropDownMakeValue5;
  FormFieldController<String>? dropDownMakeValueController5;
  // State field(s) for DropDown-Make widget.
  String? dropDownMakeValue6;
  FormFieldController<String>? dropDownMakeValueController6;
  // State field(s) for DropDown-Make widget.
  String? dropDownMakeValue7;
  FormFieldController<String>? dropDownMakeValueController7;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // State field(s) for DropDown-Make widget.
  String? dropDownMakeValue8;
  FormFieldController<String>? dropDownMakeValueController8;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered = false;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    textFieldFocusNode3?.dispose();
    textController3?.dispose();
  }
}
