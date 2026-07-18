import '/b_screen_components/asterisk/asterisk_widget.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 's10_contac_us_widget.dart' show S10ContacUsWidget;
import 'package:flutter/material.dart';

class S10ContacUsModel extends FlutterFlowModel<S10ContacUsWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // Model for Asterisk component.
  late AsteriskModel asteriskModel;
  // State field(s) for TextField-Name widget.
  FocusNode? textFieldNameFocusNode;
  TextEditingController? textFieldNameTextController;
  String? Function(BuildContext, String?)? textFieldNameTextControllerValidator;
  String? _textFieldNameTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Name is required';
    }

    if (val.length < 2) {
      return 'Requires at least 2 characters.';
    }

    return null;
  }

  // State field(s) for TextField-EmailAddress widget.
  FocusNode? textFieldEmailAddressFocusNode;
  TextEditingController? textFieldEmailAddressTextController;
  String? Function(BuildContext, String?)?
      textFieldEmailAddressTextControllerValidator;
  String? _textFieldEmailAddressTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Email is required';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  // State field(s) for TextField-Subject widget.
  FocusNode? textFieldSubjectFocusNode;
  TextEditingController? textFieldSubjectTextController;
  String? Function(BuildContext, String?)?
      textFieldSubjectTextControllerValidator;
  String? _textFieldSubjectTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Subject is required';
    }

    if (val.length < 3) {
      return 'Requires at least 3 characters.';
    }

    return null;
  }

  // State field(s) for TextField-Message widget.
  FocusNode? textFieldMessageFocusNode;
  TextEditingController? textFieldMessageTextController;
  String? Function(BuildContext, String?)?
      textFieldMessageTextControllerValidator;
  String? _textFieldMessageTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Describe your AC problem is required';
    }

    if (val.length < 5) {
      return 'Requires at least 5 characters.';
    }

    return null;
  }

  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered = false;
  // Stores action output result for [Validate Form] action in Row widget.
  bool? form;
  // Stores action output result for [Firestore Query - Query a collection] action in Row widget.
  SettingsRecord? admin;
  // Stores action output result for [Backend Call - Create Document] action in Row widget.
  MailRecord? mail;

  @override
  void initState(BuildContext context) {
    asteriskModel = createModel(context, () => AsteriskModel());
    textFieldNameTextControllerValidator =
        _textFieldNameTextControllerValidator;
    textFieldEmailAddressTextControllerValidator =
        _textFieldEmailAddressTextControllerValidator;
    textFieldSubjectTextControllerValidator =
        _textFieldSubjectTextControllerValidator;
    textFieldMessageTextControllerValidator =
        _textFieldMessageTextControllerValidator;
  }

  @override
  void dispose() {
    asteriskModel.dispose();
    textFieldNameFocusNode?.dispose();
    textFieldNameTextController?.dispose();

    textFieldEmailAddressFocusNode?.dispose();
    textFieldEmailAddressTextController?.dispose();

    textFieldSubjectFocusNode?.dispose();
    textFieldSubjectTextController?.dispose();

    textFieldMessageFocusNode?.dispose();
    textFieldMessageTextController?.dispose();
  }
}
