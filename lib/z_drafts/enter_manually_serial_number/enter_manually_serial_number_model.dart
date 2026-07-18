import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'enter_manually_serial_number_widget.dart'
    show EnterManuallySerialNumberWidget;
import 'package:flutter/material.dart';

class EnterManuallySerialNumberModel
    extends FlutterFlowModel<EnterManuallySerialNumberWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TextField-Make widget.
  FocusNode? textFieldMakeFocusNode;
  TextEditingController? textFieldMakeTextController;
  String? Function(BuildContext, String?)? textFieldMakeTextControllerValidator;
  String? _textFieldMakeTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Enter yourA/C Make e.g. Carrier is required';
    }

    if (val.length < 2) {
      return 'Requires at least 2 characters.';
    }

    return null;
  }

  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered1 = false;
  // State field(s) for TextField-Model widget.
  FocusNode? textFieldModelFocusNode;
  TextEditingController? textFieldModelTextController;
  String? Function(BuildContext, String?)?
      textFieldModelTextControllerValidator;
  String? _textFieldModelTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Model is required';
    }

    if (val.length < 2) {
      return 'Requires at least 2 characters.';
    }

    return null;
  }

  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered2 = false;
  // State field(s) for TextField-SN widget.
  FocusNode? textFieldSNFocusNode;
  TextEditingController? textFieldSNTextController;
  String? Function(BuildContext, String?)? textFieldSNTextControllerValidator;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered3 = false;
  // Stores action output result for [Validate Form] action in Row widget.
  bool? form;
  // Stores action output result for [Backend Call - Create Document] action in Row widget.
  MailRecord? mail;

  @override
  void initState(BuildContext context) {
    textFieldMakeTextControllerValidator =
        _textFieldMakeTextControllerValidator;
    textFieldModelTextControllerValidator =
        _textFieldModelTextControllerValidator;
  }

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
