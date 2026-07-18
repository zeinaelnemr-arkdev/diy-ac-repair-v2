import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 's17_filter_index_widget.dart' show S17FilterIndexWidget;
import 'package:flutter/material.dart';

class S17FilterIndexModel extends FlutterFlowModel<S17FilterIndexWidget> {
  ///  Local state fields for this component.

  String? selectedPart = 'MOTOR';

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
  String? dropDownMakeValue5;
  FormFieldController<String>? dropDownMakeValueController5;
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
