import '/b_screen_components/s01_navigatio_bar/s01_navigatio_bar_widget.dart';
import '/b_screen_components/s12_footer/s12_footer_widget.dart';
import '/e_review_your_order/desktop/components/track_and_find_my_order/track_and_find_my_order_widget.dart';
import '/e_review_your_order/mobile/track_and_find_my_order_mobile/track_and_find_my_order_mobile_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'g_track_and_find_my_order_widget.dart' show GTrackAndFindMyOrderWidget;
import 'package:flutter/material.dart';

class GTrackAndFindMyOrderModel
    extends FlutterFlowModel<GTrackAndFindMyOrderWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for S01_NavigatioBar component.
  late S01NavigatioBarModel s01NavigatioBarModel;
  // Model for Track_and_find_my_order component.
  late TrackAndFindMyOrderModel trackAndFindMyOrderModel;
  // Model for Track_and_find_my_order_mobile component.
  late TrackAndFindMyOrderMobileModel trackAndFindMyOrderMobileModel;
  // Model for S12_Footer component.
  late S12FooterModel s12FooterModel;

  @override
  void initState(BuildContext context) {
    s01NavigatioBarModel = createModel(context, () => S01NavigatioBarModel());
    trackAndFindMyOrderModel =
        createModel(context, () => TrackAndFindMyOrderModel());
    trackAndFindMyOrderMobileModel =
        createModel(context, () => TrackAndFindMyOrderMobileModel());
    s12FooterModel = createModel(context, () => S12FooterModel());
  }

  @override
  void dispose() {
    s01NavigatioBarModel.dispose();
    trackAndFindMyOrderModel.dispose();
    trackAndFindMyOrderMobileModel.dispose();
    s12FooterModel.dispose();
  }
}
