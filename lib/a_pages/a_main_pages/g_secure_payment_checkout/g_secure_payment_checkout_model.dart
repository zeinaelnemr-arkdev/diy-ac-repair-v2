import '/b_screen_components/s01_navigatio_bar/s01_navigatio_bar_widget.dart';
import '/b_screen_components/s08_company_investors/s08_company_investors_widget.dart';
import '/b_screen_components/s12_footer/s12_footer_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/g_checkout_details/details_checkout_mobile_and_desktop/details_checkout_mobile_and_desktop_widget.dart';
import 'g_secure_payment_checkout_widget.dart'
    show GSecurePaymentCheckoutWidget;
import 'package:flutter/material.dart';

class GSecurePaymentCheckoutModel
    extends FlutterFlowModel<GSecurePaymentCheckoutWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for S01_NavigatioBar component.
  late S01NavigatioBarModel s01NavigatioBarModel;
  // Model for Details_Checkout_mobile_and_desktop component.
  late DetailsCheckoutMobileAndDesktopModel
      detailsCheckoutMobileAndDesktopModel;
  // Model for S08_CompanyInvestors component.
  late S08CompanyInvestorsModel s08CompanyInvestorsModel;
  // Model for S12_Footer component.
  late S12FooterModel s12FooterModel;

  @override
  void initState(BuildContext context) {
    s01NavigatioBarModel = createModel(context, () => S01NavigatioBarModel());
    detailsCheckoutMobileAndDesktopModel =
        createModel(context, () => DetailsCheckoutMobileAndDesktopModel());
    s08CompanyInvestorsModel =
        createModel(context, () => S08CompanyInvestorsModel());
    s12FooterModel = createModel(context, () => S12FooterModel());
  }

  @override
  void dispose() {
    s01NavigatioBarModel.dispose();
    detailsCheckoutMobileAndDesktopModel.dispose();
    s08CompanyInvestorsModel.dispose();
    s12FooterModel.dispose();
  }
}
