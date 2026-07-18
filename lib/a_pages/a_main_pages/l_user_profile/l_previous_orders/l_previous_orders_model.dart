import '/b_screen_components/s01_navigatio_bar/s01_navigatio_bar_widget.dart';
import '/b_screen_components/s12_footer/s12_footer_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/l_user_profile/l_order_histor_mobile/l_order_histor_mobile_widget.dart';
import '/l_user_profile/l_orderhistory_02/l_orderhistory02_widget.dart';
import 'l_previous_orders_widget.dart' show LPreviousOrdersWidget;
import 'package:flutter/material.dart';

class LPreviousOrdersModel extends FlutterFlowModel<LPreviousOrdersWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for S01_NavigatioBar component.
  late S01NavigatioBarModel s01NavigatioBarModel;
  // Model for L_orderhistory_02 component.
  late LOrderhistory02Model lOrderhistory02Model;
  // Model for S12_Footer component.
  late S12FooterModel s12FooterModel;
  // Model for L_order_history_mobile.
  late LOrderHistorMobileModel lOrderHistoryMobileModel;

  @override
  void initState(BuildContext context) {
    s01NavigatioBarModel = createModel(context, () => S01NavigatioBarModel());
    lOrderhistory02Model = createModel(context, () => LOrderhistory02Model());
    s12FooterModel = createModel(context, () => S12FooterModel());
    lOrderHistoryMobileModel =
        createModel(context, () => LOrderHistorMobileModel());
  }

  @override
  void dispose() {
    s01NavigatioBarModel.dispose();
    lOrderhistory02Model.dispose();
    s12FooterModel.dispose();
    lOrderHistoryMobileModel.dispose();
  }
}
