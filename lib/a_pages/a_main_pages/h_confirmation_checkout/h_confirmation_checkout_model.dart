import '/b_screen_components/s01_navigatio_bar/s01_navigatio_bar_widget.dart';
import '/b_screen_components/s12_footer/s12_footer_widget.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/g_checkout_details/g_confirmation_success/g_confirmation_success_widget.dart';
import 'h_confirmation_checkout_widget.dart' show HConfirmationCheckoutWidget;
import 'package:flutter/material.dart';

class HConfirmationCheckoutModel
    extends FlutterFlowModel<HConfirmationCheckoutWidget> {
  ///  Local state fields for this page.

  OrdersRecord? order;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Read Document] action in H-Confirmation_Checkout widget.
  OrdersRecord? orderAct;
  // Stores action output result for [Backend Call - API (getPaymentById)] action in H-Confirmation_Checkout widget.
  ApiCallResponse? paymentJson;
  // Stores action output result for [Backend Call - Read Document] action in H-Confirmation_Checkout widget.
  OrdersRecord? orderUpdatedAct;
  // Stores action output result for [Custom Action - buildOrderEmailHtml] action in H-Confirmation_Checkout widget.
  String? email;
  // Model for S01_NavigatioBar component.
  late S01NavigatioBarModel s01NavigatioBarModel;
  // Model for G_Confirmation_Success component.
  late GConfirmationSuccessModel gConfirmationSuccessModel;
  // Model for S12_Footer component.
  late S12FooterModel s12FooterModel;

  @override
  void initState(BuildContext context) {
    s01NavigatioBarModel = createModel(context, () => S01NavigatioBarModel());
    gConfirmationSuccessModel =
        createModel(context, () => GConfirmationSuccessModel());
    s12FooterModel = createModel(context, () => S12FooterModel());
  }

  @override
  void dispose() {
    s01NavigatioBarModel.dispose();
    gConfirmationSuccessModel.dispose();
    s12FooterModel.dispose();
  }
}
