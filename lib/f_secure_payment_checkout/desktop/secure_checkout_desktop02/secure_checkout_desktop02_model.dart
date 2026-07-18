import '/f_secure_payment_checkout/desktop/secure_checkout_desktop/secure_checkout_desktop_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'secure_checkout_desktop02_widget.dart'
    show SecureCheckoutDesktop02Widget;
import 'package:flutter/material.dart';

class SecureCheckoutDesktop02Model
    extends FlutterFlowModel<SecureCheckoutDesktop02Widget> {
  ///  State fields for stateful widgets in this component.

  // Model for Secure_Checkout_desktop component.
  late SecureCheckoutDesktopModel secureCheckoutDesktopModel;

  @override
  void initState(BuildContext context) {
    secureCheckoutDesktopModel =
        createModel(context, () => SecureCheckoutDesktopModel());
  }

  @override
  void dispose() {
    secureCheckoutDesktopModel.dispose();
  }
}
