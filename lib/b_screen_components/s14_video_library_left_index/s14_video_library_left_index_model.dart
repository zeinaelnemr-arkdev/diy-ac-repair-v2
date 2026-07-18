import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 's14_video_library_left_index_widget.dart'
    show S14VideoLibraryLeftIndexWidget;
import 'package:flutter/material.dart';

class S14VideoLibraryLeftIndexModel
    extends FlutterFlowModel<S14VideoLibraryLeftIndexWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  /// Additional helper methods.
  String? get radioButtonValue => radioButtonValueController?.value;
}
