import '/b_screen_components/asterisk/asterisk_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 's03_homestartdiagnosis01_widget.dart'
    show S03Homestartdiagnosis01Widget;
import 'package:flutter/material.dart';

class S03Homestartdiagnosis01Model
    extends FlutterFlowModel<S03Homestartdiagnosis01Widget> {
  ///  State fields for stateful widgets in this component.

  // Model for Asterisk component.
  late AsteriskModel asteriskModel;
  // State field(s) for TextField-Name widget.
  FocusNode? textFieldNameFocusNode;
  TextEditingController? textFieldNameTextController;
  String? Function(BuildContext, String?)? textFieldNameTextControllerValidator;
  // State field(s) for TextField-EmailAddress widget.
  FocusNode? textFieldEmailAddressFocusNode1;
  TextEditingController? textFieldEmailAddressTextController1;
  String? Function(BuildContext, String?)?
      textFieldEmailAddressTextController1Validator;
  // State field(s) for TextField-EmailAddress widget.
  FocusNode? textFieldEmailAddressFocusNode2;
  TextEditingController? textFieldEmailAddressTextController2;
  String? Function(BuildContext, String?)?
      textFieldEmailAddressTextController2Validator;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered = false;

  @override
  void initState(BuildContext context) {
    asteriskModel = createModel(context, () => AsteriskModel());
  }

  @override
  void dispose() {
    asteriskModel.dispose();
    textFieldNameFocusNode?.dispose();
    textFieldNameTextController?.dispose();

    textFieldEmailAddressFocusNode1?.dispose();
    textFieldEmailAddressTextController1?.dispose();

    textFieldEmailAddressFocusNode2?.dispose();
    textFieldEmailAddressTextController2?.dispose();
  }
}
