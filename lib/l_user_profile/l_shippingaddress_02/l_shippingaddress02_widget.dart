import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'l_shippingaddress02_model.dart';
export 'l_shippingaddress02_model.dart';

class LShippingaddress02Widget extends StatefulWidget {
  const LShippingaddress02Widget({super.key});

  @override
  State<LShippingaddress02Widget> createState() =>
      _LShippingaddress02WidgetState();
}

class _LShippingaddress02WidgetState extends State<LShippingaddress02Widget> {
  late LShippingaddress02Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LShippingaddress02Model());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
