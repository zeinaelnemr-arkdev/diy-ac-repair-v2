import '/f_secure_payment_checkout/desktop/secure_checkout_desktop/secure_checkout_desktop_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'secure_checkout_desktop02_model.dart';
export 'secure_checkout_desktop02_model.dart';

class SecureCheckoutDesktop02Widget extends StatefulWidget {
  const SecureCheckoutDesktop02Widget({super.key});

  @override
  State<SecureCheckoutDesktop02Widget> createState() =>
      _SecureCheckoutDesktop02WidgetState();
}

class _SecureCheckoutDesktop02WidgetState
    extends State<SecureCheckoutDesktop02Widget> {
  late SecureCheckoutDesktop02Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SecureCheckoutDesktop02Model());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 800.0,
          child: wrapWithModel(
            model: _model.secureCheckoutDesktopModel,
            updateCallback: () => safeSetState(() {}),
            child: SecureCheckoutDesktopWidget(),
          ),
        ),
      ],
    );
  }
}
