import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'checkout_breadcrumb_model.dart';
export 'checkout_breadcrumb_model.dart';

class CheckoutBreadcrumbWidget extends StatefulWidget {
  const CheckoutBreadcrumbWidget({super.key});

  @override
  State<CheckoutBreadcrumbWidget> createState() =>
      _CheckoutBreadcrumbWidgetState();
}

class _CheckoutBreadcrumbWidgetState extends State<CheckoutBreadcrumbWidget> {
  late CheckoutBreadcrumbModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CheckoutBreadcrumbModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Cart',
          style: FlutterFlowTheme.of(context).labelLarge.override(
                fontFamily: FlutterFlowTheme.of(context).labelLargeFamily,
                color: FlutterFlowTheme.of(context).secondaryText,
                fontSize: 18.0,
                letterSpacing: 0.0,
                lineHeight: 1.2,
                useGoogleFonts:
                    !FlutterFlowTheme.of(context).labelLargeIsCustom,
              ),
        ),
        Icon(
          Icons.chevron_right_rounded,
          color: FlutterFlowTheme.of(context).accent3,
          size: 18.0,
        ),
        Text(
          'Review Order',
          style: FlutterFlowTheme.of(context).labelLarge.override(
                fontFamily: FlutterFlowTheme.of(context).labelLargeFamily,
                color: FlutterFlowTheme.of(context).primaryText,
                fontSize: 18.0,
                letterSpacing: 0.0,
                fontWeight: FontWeight.bold,
                lineHeight: 1.2,
                useGoogleFonts:
                    !FlutterFlowTheme.of(context).labelLargeIsCustom,
              ),
        ),
        Icon(
          Icons.chevron_right_rounded,
          color: FlutterFlowTheme.of(context).accent3,
          size: 18.0,
        ),
        Text(
          'Payment',
          style: FlutterFlowTheme.of(context).labelLarge.override(
                fontFamily: FlutterFlowTheme.of(context).labelLargeFamily,
                color: FlutterFlowTheme.of(context).accent3,
                letterSpacing: 0.0,
                lineHeight: 1.2,
                useGoogleFonts:
                    !FlutterFlowTheme.of(context).labelLargeIsCustom,
              ),
        ),
      ].divide(SizedBox(width: 8.0)),
    );
  }
}
