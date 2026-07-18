import '/flutter_flow/flutter_flow_util.dart';
import 'text_field17_widget.dart' show TextField17Widget;
import 'package:flutter/material.dart';

class TextField17Model extends FlutterFlowModel<TextField17Widget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Input widget.
  FocusNode? inputFocusNode;
  TextEditingController? inputTextController;
  String? Function(BuildContext, String?)? inputTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    inputFocusNode?.dispose();
    inputTextController?.dispose();
  }
}
