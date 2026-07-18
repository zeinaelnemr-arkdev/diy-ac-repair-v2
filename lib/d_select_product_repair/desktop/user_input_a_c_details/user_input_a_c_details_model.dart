import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'user_input_a_c_details_widget.dart' show UserInputACDetailsWidget;
import 'package:flutter/material.dart';

class UserInputACDetailsModel
    extends FlutterFlowModel<UserInputACDetailsWidget> {
  ///  Local state fields for this component.

  String? userACMakeName;

  String? userACModelName;

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - Read Document] action in User_Input_A_C_details widget.
  ACMakeRecord? acMake;
  // Stores action output result for [Backend Call - Read Document] action in User_Input_A_C_details widget.
  ACModelRecord? acModel;
  // State field(s) for TextFieldMake widget.
  FocusNode? textFieldMakeFocusNode;
  TextEditingController? textFieldMakeTextController;
  String? Function(BuildContext, String?)? textFieldMakeTextControllerValidator;
  // State field(s) for TextFieldModel widget.
  FocusNode? textFieldModelFocusNode;
  TextEditingController? textFieldModelTextController;
  String? Function(BuildContext, String?)?
      textFieldModelTextControllerValidator;
  // State field(s) for TextField-SN widget.
  FocusNode? textFieldSNFocusNode;
  TextEditingController? textFieldSNTextController;
  String? Function(BuildContext, String?)? textFieldSNTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldMakeFocusNode?.dispose();
    textFieldMakeTextController?.dispose();

    textFieldModelFocusNode?.dispose();
    textFieldModelTextController?.dispose();

    textFieldSNFocusNode?.dispose();
    textFieldSNTextController?.dispose();
  }
}
