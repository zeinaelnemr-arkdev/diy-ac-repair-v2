import '/b_screen_components/asterisk/asterisk_widget.dart';
import '/components/button9_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/h_about/structural_stat/structural_stat_widget.dart';
import 'about_page_widget.dart' show AboutPageWidget;
import 'package:flutter/material.dart';

class AboutPageModel extends FlutterFlowModel<AboutPageWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for Asterisk component.
  late AsteriskModel asteriskModel1;
  // Model for StructuralStat.
  late StructuralStatModel structuralStatModel1;
  // Model for StructuralStat.
  late StructuralStatModel structuralStatModel2;
  // Model for StructuralStat.
  late StructuralStatModel structuralStatModel3;
  // Model for Button.
  late Button9Model buttonModel;
  // Model for Asterisk component.
  late AsteriskModel asteriskModel2;

  @override
  void initState(BuildContext context) {
    asteriskModel1 = createModel(context, () => AsteriskModel());
    structuralStatModel1 = createModel(context, () => StructuralStatModel());
    structuralStatModel2 = createModel(context, () => StructuralStatModel());
    structuralStatModel3 = createModel(context, () => StructuralStatModel());
    buttonModel = createModel(context, () => Button9Model());
    asteriskModel2 = createModel(context, () => AsteriskModel());
  }

  @override
  void dispose() {
    asteriskModel1.dispose();
    structuralStatModel1.dispose();
    structuralStatModel2.dispose();
    structuralStatModel3.dispose();
    buttonModel.dispose();
    asteriskModel2.dispose();
  }
}
