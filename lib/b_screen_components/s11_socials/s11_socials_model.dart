import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 's11_socials_widget.dart' show S11SocialsWidget;
import 'package:flutter/material.dart';

class S11SocialsModel extends FlutterFlowModel<S11SocialsWidget> {
  ///  Local state fields for this component.

  String? errorMS;

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
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

    if (val.length < 3) {
      return 'Requires at least 3 characters.';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered1 = false;
  // Stores action output result for [Validate Form] action in Row widget.
  bool? form;
  // Stores action output result for [Firestore Query - Query a collection] action in Row widget.
  int? count;
  // Stores action output result for [Backend Call - Create Document] action in Row widget.
  SubscriberRecord? subsDoc;
  // Stores action output result for [Backend Call - Create Document] action in Row widget.
  MailRecord? mail;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered2 = false;

  @override
  void initState(BuildContext context) {
    textFieldEmailAddressTextControllerValidator =
        _textFieldEmailAddressTextControllerValidator;
  }

  @override
  void dispose() {
    textFieldEmailAddressFocusNode?.dispose();
    textFieldEmailAddressTextController?.dispose();
  }
}
