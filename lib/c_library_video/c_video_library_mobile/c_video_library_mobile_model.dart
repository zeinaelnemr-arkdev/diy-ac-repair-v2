import '/components/diagnostic_card2_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'c_video_library_mobile_widget.dart' show CVideoLibraryMobileWidget;
import 'package:flutter/material.dart';

class CVideoLibraryMobileModel
    extends FlutterFlowModel<CVideoLibraryMobileWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for DiagnosticCard.
  late DiagnosticCard2Model diagnosticCardModel1;
  // Model for DiagnosticCard.
  late DiagnosticCard2Model diagnosticCardModel2;
  // Model for DiagnosticCard.
  late DiagnosticCard2Model diagnosticCardModel3;
  // Model for DiagnosticCard.
  late DiagnosticCard2Model diagnosticCardModel4;
  // Model for DiagnosticCard.
  late DiagnosticCard2Model diagnosticCardModel5;
  // Model for DiagnosticCard.
  late DiagnosticCard2Model diagnosticCardModel6;

  @override
  void initState(BuildContext context) {
    diagnosticCardModel1 = createModel(context, () => DiagnosticCard2Model());
    diagnosticCardModel2 = createModel(context, () => DiagnosticCard2Model());
    diagnosticCardModel3 = createModel(context, () => DiagnosticCard2Model());
    diagnosticCardModel4 = createModel(context, () => DiagnosticCard2Model());
    diagnosticCardModel5 = createModel(context, () => DiagnosticCard2Model());
    diagnosticCardModel6 = createModel(context, () => DiagnosticCard2Model());
  }

  @override
  void dispose() {
    diagnosticCardModel1.dispose();
    diagnosticCardModel2.dispose();
    diagnosticCardModel3.dispose();
    diagnosticCardModel4.dispose();
    diagnosticCardModel5.dispose();
    diagnosticCardModel6.dispose();
  }
}
