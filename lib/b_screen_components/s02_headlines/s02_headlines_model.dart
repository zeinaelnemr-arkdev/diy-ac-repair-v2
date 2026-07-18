import '/b_screen_components/asterisk/asterisk_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 's02_headlines_widget.dart' show S02HeadlinesWidget;
import 'package:flutter/material.dart';

class S02HeadlinesModel extends FlutterFlowModel<S02HeadlinesWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Carousel widget.
  CarouselSliderController? carouselController;
  int carouselCurrentIndex = 0;

  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered = false;
  // Model for Asterisk component.
  late AsteriskModel asteriskModel;

  @override
  void initState(BuildContext context) {
    asteriskModel = createModel(context, () => AsteriskModel());
  }

  @override
  void dispose() {
    asteriskModel.dispose();
  }
}
