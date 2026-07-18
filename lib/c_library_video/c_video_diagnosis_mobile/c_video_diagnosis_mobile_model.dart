import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'c_video_diagnosis_mobile_widget.dart' show CVideoDiagnosisMobileWidget;
import 'package:flutter/material.dart';

class CVideoDiagnosisMobileModel
    extends FlutterFlowModel<CVideoDiagnosisMobileWidget> {
  ///  Local state fields for this component.

  DiagnosisVideoRecord? currentVideo;

  List<DiagnosisVideoOptionRecord> videoOptions = [];
  void addToVideoOptions(DiagnosisVideoOptionRecord item) =>
      videoOptions.add(item);
  void removeFromVideoOptions(DiagnosisVideoOptionRecord item) =>
      videoOptions.remove(item);
  void removeAtIndexFromVideoOptions(int index) => videoOptions.removeAt(index);
  void insertAtIndexInVideoOptions(
          int index, DiagnosisVideoOptionRecord item) =>
      videoOptions.insert(index, item);
  void updateVideoOptionsAtIndex(
          int index, Function(DiagnosisVideoOptionRecord) updateFn) =>
      videoOptions[index] = updateFn(videoOptions[index]);

  DiagnosisVideoOptionRecord? selectedOption;

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Firestore Query - Query a collection] action in C_Video_Diagnosis_mobile widget.
  List<DiagnosisVideoOptionRecord>? allOptions;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  /// Additional helper methods.
  String? get radioButtonValue => radioButtonValueController?.value;
}
