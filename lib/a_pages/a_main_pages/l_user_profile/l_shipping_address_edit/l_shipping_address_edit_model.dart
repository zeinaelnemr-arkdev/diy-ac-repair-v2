import '/b_screen_components/s01_navigatio_bar/s01_navigatio_bar_widget.dart';
import '/b_screen_components/s12_footer/s12_footer_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/l_user_profile/l_shipping_address_desktop/l_shipping_address_desktop_widget.dart';
import '/l_user_profile/l_shipping_address_mobile_02/l_shipping_address_mobile02_widget.dart';
import '/l_user_profile/l_shippingaddress_02/l_shippingaddress02_widget.dart';
import 'l_shipping_address_edit_widget.dart' show LShippingAddressEditWidget;
import 'package:flutter/material.dart';

class LShippingAddressEditModel
    extends FlutterFlowModel<LShippingAddressEditWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for S01_NavigatioBar component.
  late S01NavigatioBarModel s01NavigatioBarModel;
  // Model for L_shipping_address_desktop component.
  late LShippingAddressDesktopModel lShippingAddressDesktopModel;
  // Model for L_shippingaddress_02 component.
  late LShippingaddress02Model lShippingaddress02Model;
  // Model for S12_Footer component.
  late S12FooterModel s12FooterModel;
  // Model for L_shipping_address_mobile_02 component.
  late LShippingAddressMobile02Model lShippingAddressMobile02Model;

  @override
  void initState(BuildContext context) {
    s01NavigatioBarModel = createModel(context, () => S01NavigatioBarModel());
    lShippingAddressDesktopModel =
        createModel(context, () => LShippingAddressDesktopModel());
    lShippingaddress02Model =
        createModel(context, () => LShippingaddress02Model());
    s12FooterModel = createModel(context, () => S12FooterModel());
    lShippingAddressMobile02Model =
        createModel(context, () => LShippingAddressMobile02Model());
  }

  @override
  void dispose() {
    s01NavigatioBarModel.dispose();
    lShippingAddressDesktopModel.dispose();
    lShippingaddress02Model.dispose();
    s12FooterModel.dispose();
    lShippingAddressMobile02Model.dispose();
  }
}
