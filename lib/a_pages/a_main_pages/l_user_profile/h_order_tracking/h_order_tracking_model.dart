import '/b_screen_components/s01_navigatio_bar/s01_navigatio_bar_widget.dart';
import '/b_screen_components/s12_footer/s12_footer_widget.dart';
import '/backend/backend.dart';
import '/e_review_your_order/desktop/components/h_order_tracking_desktop/h_order_tracking_desktop_widget.dart';
import '/e_review_your_order/mobile/h_track_order_mobile/h_track_order_mobile_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'h_order_tracking_widget.dart' show HOrderTrackingWidget;
import 'package:flutter/material.dart';

class HOrderTrackingModel extends FlutterFlowModel<HOrderTrackingWidget> {
  ///  Local state fields for this page.

  OrdersRecord? order;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Read Document] action in H_Order_Tracking widget.
  OrdersRecord? orderAct1;
  // Model for S01_NavigatioBar component.
  late S01NavigatioBarModel s01NavigatioBarModel;
  // Model for H_order_tracking_desktop component.
  late HOrderTrackingDesktopModel hOrderTrackingDesktopModel;
  // Model for H_Track_order_mobile component.
  late HTrackOrderMobileModel hTrackOrderMobileModel;
  // Model for S12_Footer component.
  late S12FooterModel s12FooterModel;

  @override
  void initState(BuildContext context) {
    s01NavigatioBarModel = createModel(context, () => S01NavigatioBarModel());
    hOrderTrackingDesktopModel =
        createModel(context, () => HOrderTrackingDesktopModel());
    hTrackOrderMobileModel =
        createModel(context, () => HTrackOrderMobileModel());
    s12FooterModel = createModel(context, () => S12FooterModel());
  }

  @override
  void dispose() {
    s01NavigatioBarModel.dispose();
    hOrderTrackingDesktopModel.dispose();
    hTrackOrderMobileModel.dispose();
    s12FooterModel.dispose();
  }
}
