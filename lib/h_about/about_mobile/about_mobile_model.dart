import '/components/button23_widget.dart';
import '/components/structural_stat2_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'about_mobile_widget.dart' show AboutMobileWidget;
import 'package:flutter/material.dart';

class AboutMobileModel extends FlutterFlowModel<AboutMobileWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for Button.
  late Button23Model buttonModel;
  // Model for StructuralStat.
  late StructuralStat2Model structuralStatModel1;
  // Model for StructuralStat.
  late StructuralStat2Model structuralStatModel2;
  // Model for StructuralStat.
  late StructuralStat2Model structuralStatModel3;

  @override
  void initState(BuildContext context) {
    buttonModel = createModel(context, () => Button23Model());
    structuralStatModel1 = createModel(context, () => StructuralStat2Model());
    structuralStatModel2 = createModel(context, () => StructuralStat2Model());
    structuralStatModel3 = createModel(context, () => StructuralStat2Model());
  }

  @override
  void dispose() {
    buttonModel.dispose();
    structuralStatModel1.dispose();
    structuralStatModel2.dispose();
    structuralStatModel3.dispose();
  }
}
