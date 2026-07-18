import '/b_screen_components/asterisk/asterisk_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 's05_what_we_offer_widget.dart' show S05WhatWeOfferWidget;
import 'package:flutter/material.dart';

class S05WhatWeOfferModel extends FlutterFlowModel<S05WhatWeOfferWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered1 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered2 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered3 = false;
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
