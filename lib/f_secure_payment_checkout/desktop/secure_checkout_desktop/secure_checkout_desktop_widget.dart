import '/f_secure_payment_checkout/desktop/payment_badge2/payment_badge2_widget.dart';
import '/f_secure_payment_checkout/desktop/text_field6/text_field6_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'secure_checkout_desktop_model.dart';
export 'secure_checkout_desktop_model.dart';

class SecureCheckoutDesktopWidget extends StatefulWidget {
  const SecureCheckoutDesktopWidget({super.key});

  @override
  State<SecureCheckoutDesktopWidget> createState() =>
      _SecureCheckoutDesktopWidgetState();
}

class _SecureCheckoutDesktopWidgetState
    extends State<SecureCheckoutDesktopWidget> {
  late SecureCheckoutDesktopModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SecureCheckoutDesktopModel());

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
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Cart',
              style: FlutterFlowTheme.of(context).bodySmall.override(
                    fontFamily: FlutterFlowTheme.of(context).bodySmallFamily,
                    color: FlutterFlowTheme.of(context).secondaryText,
                    fontSize: 18.0,
                    letterSpacing: 0.0,
                    lineHeight: 1.4,
                    useGoogleFonts:
                        !FlutterFlowTheme.of(context).bodySmallIsCustom,
                  ),
            ),
            Text(
              '/',
              style: FlutterFlowTheme.of(context).bodySmall.override(
                    fontFamily: FlutterFlowTheme.of(context).bodySmallFamily,
                    color: FlutterFlowTheme.of(context).onSurface,
                    fontSize: 18.0,
                    letterSpacing: 0.0,
                    lineHeight: 1.4,
                    useGoogleFonts:
                        !FlutterFlowTheme.of(context).bodySmallIsCustom,
                  ),
            ),
            Text(
              'Shipping',
              style: FlutterFlowTheme.of(context).bodySmall.override(
                    fontFamily: FlutterFlowTheme.of(context).bodySmallFamily,
                    color: FlutterFlowTheme.of(context).secondaryText,
                    fontSize: 18.0,
                    letterSpacing: 0.0,
                    lineHeight: 1.4,
                    useGoogleFonts:
                        !FlutterFlowTheme.of(context).bodySmallIsCustom,
                  ),
            ),
            Text(
              '/',
              style: FlutterFlowTheme.of(context).bodySmall.override(
                    fontFamily: FlutterFlowTheme.of(context).bodySmallFamily,
                    color: FlutterFlowTheme.of(context).onSurface,
                    fontSize: 18.0,
                    letterSpacing: 0.0,
                    lineHeight: 1.4,
                    useGoogleFonts:
                        !FlutterFlowTheme.of(context).bodySmallIsCustom,
                  ),
            ),
            Text(
              'Payment',
              style: FlutterFlowTheme.of(context).bodySmall.override(
                    fontFamily: FlutterFlowTheme.of(context).bodySmallFamily,
                    color: FlutterFlowTheme.of(context).primaryText,
                    fontSize: 18.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.bold,
                    lineHeight: 1.4,
                    useGoogleFonts:
                        !FlutterFlowTheme.of(context).bodySmallIsCustom,
                  ),
            ),
          ].divide(SizedBox(width: 4.0)),
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Secure Checkout',
              style: FlutterFlowTheme.of(context).headlineLarge.override(
                    fontFamily:
                        FlutterFlowTheme.of(context).headlineLargeFamily,
                    color: FlutterFlowTheme.of(context).primaryText,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.w800,
                    lineHeight: 1.1,
                    useGoogleFonts:
                        !FlutterFlowTheme.of(context).headlineLargeIsCustom,
                  ),
            ),
            Text(
              'Complete your purchase securely. Your payment information is encrypted and protected with industry-standard protocols.',
              maxLines: 2,
              style: FlutterFlowTheme.of(context).bodyLarge.override(
                    fontFamily: FlutterFlowTheme.of(context).bodyLargeFamily,
                    color: FlutterFlowTheme.of(context).secondaryText,
                    letterSpacing: 0.0,
                    lineHeight: 1.5,
                    useGoogleFonts:
                        !FlutterFlowTheme.of(context).bodyLargeIsCustom,
                  ),
            ),
          ].divide(SizedBox(height: 16.0)),
        ),
        Container(
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            borderRadius: BorderRadius.circular(8.0),
            shape: BoxShape.rectangle,
            border: Border.all(
              color: FlutterFlowTheme.of(context).alternate,
              width: 1.0,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(40.0),
            child: Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Payment Information',
                    style: FlutterFlowTheme.of(context).titleLarge.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).titleLargeFamily,
                          color: FlutterFlowTheme.of(context).primaryText,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.bold,
                          lineHeight: 1.3,
                          useGoogleFonts:
                              !FlutterFlowTheme.of(context).titleLargeIsCustom,
                        ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'Cardholder Name',
                        style: FlutterFlowTheme.of(context).labelLarge.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).labelLargeFamily,
                              color: FlutterFlowTheme.of(context).primaryText,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.bold,
                              lineHeight: 1.3,
                              useGoogleFonts: !FlutterFlowTheme.of(context)
                                  .labelLargeIsCustom,
                            ),
                      ),
                      wrapWithModel(
                        model: _model.textFieldModel1,
                        updateCallback: () => safeSetState(() {}),
                        child: TextField6Widget(
                          label: false,
                          helper: false,
                          hint: 'Enter full name as it appears on card',
                          value: '',
                          leading_icon_present: false,
                          trailing_icon_present: false,
                          variant: 'outlined',
                          error: false,
                        ),
                      ),
                      Text(
                        'Please enter your full legal name.',
                        style: FlutterFlowTheme.of(context).labelSmall.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).labelSmallFamily,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              letterSpacing: 0.0,
                              lineHeight: 1.2,
                              useGoogleFonts: !FlutterFlowTheme.of(context)
                                  .labelSmallIsCustom,
                            ),
                      ),
                    ].divide(SizedBox(height: 8.0)),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'Card Number',
                        style: FlutterFlowTheme.of(context).labelLarge.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).labelLargeFamily,
                              color: FlutterFlowTheme.of(context).primaryText,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.bold,
                              lineHeight: 1.3,
                              useGoogleFonts: !FlutterFlowTheme.of(context)
                                  .labelLargeIsCustom,
                            ),
                      ),
                      wrapWithModel(
                        model: _model.textFieldModel2,
                        updateCallback: () => safeSetState(() {}),
                        child: TextField6Widget(
                          label: false,
                          helper: false,
                          hint: '0000 0000 0000 0000',
                          value: '',
                          leading_icon_present: false,
                          trailing_icon: Icon(
                            Icons.credit_card_rounded,
                          ),
                          trailing_icon_present: true,
                          variant: 'outlined',
                          error: false,
                        ),
                      ),
                    ].divide(SizedBox(height: 8.0)),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text(
                              'Expiration Date',
                              style: FlutterFlowTheme.of(context)
                                  .labelLarge
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .labelLargeFamily,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                    lineHeight: 1.3,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .labelLargeIsCustom,
                                  ),
                            ),
                            wrapWithModel(
                              model: _model.textFieldModel3,
                              updateCallback: () => safeSetState(() {}),
                              child: TextField6Widget(
                                label: false,
                                helper: false,
                                hint: 'MM / YY',
                                value: '',
                                leading_icon_present: false,
                                trailing_icon_present: false,
                                variant: 'outlined',
                                error: false,
                              ),
                            ),
                          ].divide(SizedBox(height: 8.0)),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text(
                              'Security Code (CVV)',
                              style: FlutterFlowTheme.of(context)
                                  .labelLarge
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .labelLargeFamily,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                    lineHeight: 1.3,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .labelLargeIsCustom,
                                  ),
                            ),
                            wrapWithModel(
                              model: _model.textFieldModel4,
                              updateCallback: () => safeSetState(() {}),
                              child: TextField6Widget(
                                label: false,
                                helper: false,
                                hint: '123',
                                value: '',
                                leading_icon_present: false,
                                trailing_icon: Icon(
                                  Icons.help_outline_rounded,
                                ),
                                trailing_icon_present: true,
                                variant: 'outlined',
                                error: false,
                              ),
                            ),
                          ].divide(SizedBox(height: 8.0)),
                        ),
                      ),
                    ].divide(SizedBox(width: 24.0)),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 12.0),
                    child: Container(
                      child: Divider(
                        height: 16.0,
                        thickness: 1.0,
                        indent: 0.0,
                        endIndent: 0.0,
                        color: FlutterFlowTheme.of(context).alternate,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Total Amount Due',
                        style: FlutterFlowTheme.of(context)
                            .titleMedium
                            .override(
                              fontFamily: FlutterFlowTheme.of(context)
                                  .titleMediumFamily,
                              color: FlutterFlowTheme.of(context).primaryText,
                              letterSpacing: 0.0,
                              lineHeight: 1.4,
                              useGoogleFonts: !FlutterFlowTheme.of(context)
                                  .titleMediumIsCustom,
                            ),
                      ),
                      Text(
                        '\$124.50',
                        style: FlutterFlowTheme.of(context)
                            .headlineMedium
                            .override(
                              fontFamily: FlutterFlowTheme.of(context)
                                  .headlineMediumFamily,
                              color: FlutterFlowTheme.of(context).primaryText,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w900,
                              lineHeight: 1.2,
                              useGoogleFonts: !FlutterFlowTheme.of(context)
                                  .headlineMediumIsCustom,
                            ),
                      ),
                    ],
                  ),
                  Container(
                    height: 56.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primary,
                      borderRadius: BorderRadius.circular(8.0),
                      shape: BoxShape.rectangle,
                    ),
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.lock_rounded,
                          color: FlutterFlowTheme.of(context).onPrimary,
                          size: 18.0,
                        ),
                        Text(
                          'Pay Securely Now',
                          style: FlutterFlowTheme.of(context)
                              .titleSmall
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .titleSmallFamily,
                                color: FlutterFlowTheme.of(context).secondary,
                                letterSpacing: 0.0,
                                lineHeight: 1.4,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .titleSmallIsCustom,
                              ),
                        ),
                      ].divide(SizedBox(width: 16.0)),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        wrapWithModel(
                          model: _model.paymentBadgeModel1,
                          updateCallback: () => safeSetState(() {}),
                          child: PaymentBadge2Widget(
                            label: 'VISA',
                          ),
                        ),
                        wrapWithModel(
                          model: _model.paymentBadgeModel2,
                          updateCallback: () => safeSetState(() {}),
                          child: PaymentBadge2Widget(
                            label: 'MC',
                          ),
                        ),
                        wrapWithModel(
                          model: _model.paymentBadgeModel3,
                          updateCallback: () => safeSetState(() {}),
                          child: PaymentBadge2Widget(
                            label: 'AMEX',
                          ),
                        ),
                        wrapWithModel(
                          model: _model.paymentBadgeModel4,
                          updateCallback: () => safeSetState(() {}),
                          child: PaymentBadge2Widget(
                            label: 'PAYPAL',
                          ),
                        ),
                      ].divide(SizedBox(width: 16.0)),
                    ),
                  ),
                ].divide(SizedBox(height: 24.0)),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 40.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.security_rounded,
                    color: FlutterFlowTheme.of(context).secondaryText,
                    size: 14.0,
                  ),
                  Text(
                    'Secure 256-bit SSL Encrypted Connection',
                    style: FlutterFlowTheme.of(context).labelSmall.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).labelSmallFamily,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          letterSpacing: 0.0,
                          lineHeight: 1.2,
                          useGoogleFonts:
                              !FlutterFlowTheme.of(context).labelSmallIsCustom,
                        ),
                  ),
                ].divide(SizedBox(width: 4.0)),
              ),
              Text(
                '© 2023 DIY AC Repair Systems Inc. All rights reserved.',
                style: FlutterFlowTheme.of(context).labelSmall.override(
                      fontFamily: FlutterFlowTheme.of(context).labelSmallFamily,
                      color: FlutterFlowTheme.of(context).secondaryText,
                      letterSpacing: 0.0,
                      lineHeight: 1.2,
                      useGoogleFonts:
                          !FlutterFlowTheme.of(context).labelSmallIsCustom,
                    ),
              ),
            ].divide(SizedBox(height: 8.0)),
          ),
        ),
      ].divide(SizedBox(height: 24.0)),
    );
  }
}
