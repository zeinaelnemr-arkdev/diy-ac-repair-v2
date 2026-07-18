import '/b_screen_components/asterisk/asterisk_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 's07_service_content_widget.dart' show S07ServiceContentWidget;
import 'package:flutter/material.dart';

class S07ServiceContentModel extends FlutterFlowModel<S07ServiceContentWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered1 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered2 = false;
  // Model for Asterisk component.
  late AsteriskModel asteriskModel1;
  // Model for Asterisk component.
  late AsteriskModel asteriskModel2;
  // Model for Asterisk component.
  late AsteriskModel asteriskModel3;

  @override
  void initState(BuildContext context) {
    asteriskModel1 = createModel(context, () => AsteriskModel());
    asteriskModel2 = createModel(context, () => AsteriskModel());
    asteriskModel3 = createModel(context, () => AsteriskModel());
  }

  @override
  void dispose() {
    asteriskModel1.dispose();
    asteriskModel2.dispose();
    asteriskModel3.dispose();
  }
}
