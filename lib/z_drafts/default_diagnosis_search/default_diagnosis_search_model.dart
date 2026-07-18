import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'default_diagnosis_search_widget.dart' show DefaultDiagnosisSearchWidget;
import 'package:flutter/material.dart';

class DefaultDiagnosisSearchModel
    extends FlutterFlowModel<DefaultDiagnosisSearchWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField-Name widget.
  FocusNode? textFieldNameFocusNode;
  TextEditingController? textFieldNameTextController;
  String? Function(BuildContext, String?)? textFieldNameTextControllerValidator;
  // State field(s) for DropDown-Make widget.
  String? dropDownMakeValue;
  FormFieldController<String>? dropDownMakeValueController;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered1 = false;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for DropDown-Model widget.
  String? dropDownModelValue;
  FormFieldController<String>? dropDownModelValueController;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered2 = false;
  // State field(s) for TextField-SN widget.
  FocusNode? textFieldSNFocusNode;
  TextEditingController? textFieldSNTextController;
  String? Function(BuildContext, String?)? textFieldSNTextControllerValidator;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered3 = false;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldNameFocusNode?.dispose();
    textFieldNameTextController?.dispose();

    textFieldFocusNode?.dispose();
    textController2?.dispose();

    textFieldSNFocusNode?.dispose();
    textFieldSNTextController?.dispose();
  }
}
