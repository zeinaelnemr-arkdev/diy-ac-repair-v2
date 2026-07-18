import '/f_secure_payment_checkout/mobile/components/button7/button7_widget.dart';
import '/f_secure_payment_checkout/mobile/components/form_label/form_label_widget.dart';
import '/f_secure_payment_checkout/mobile/components/payment_badge/payment_badge_widget.dart';
import '/f_secure_payment_checkout/mobile/components/text_field5/text_field5_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'a_secure_checkout_mobile_model.dart';
export 'a_secure_checkout_mobile_model.dart';

class ASecureCheckoutMobileWidget extends StatefulWidget {
  const ASecureCheckoutMobileWidget({super.key});

  @override
  State<ASecureCheckoutMobileWidget> createState() =>
      _ASecureCheckoutMobileWidgetState();
}

class _ASecureCheckoutMobileWidgetState
    extends State<ASecureCheckoutMobileWidget> {
  late ASecureCheckoutMobileModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ASecureCheckoutMobileModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      primary: false,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 24.0, 0.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Cart',
                  style: FlutterFlowTheme.of(context).labelMedium.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).labelMediumFamily,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        letterSpacing: 0.0,
                        lineHeight: 1.2,
                        useGoogleFonts:
                            !FlutterFlowTheme.of(context).labelMediumIsCustom,
                      ),
                ),
                Text(
                  '/',
                  style: FlutterFlowTheme.of(context).labelMedium.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).labelMediumFamily,
                        color: FlutterFlowTheme.of(context).onSurface,
                        letterSpacing: 0.0,
                        lineHeight: 1.2,
                        useGoogleFonts:
                            !FlutterFlowTheme.of(context).labelMediumIsCustom,
                      ),
                ),
                Text(
                  'Shipping',
                  style: FlutterFlowTheme.of(context).labelMedium.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).labelMediumFamily,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        letterSpacing: 0.0,
                        lineHeight: 1.2,
                        useGoogleFonts:
                            !FlutterFlowTheme.of(context).labelMediumIsCustom,
                      ),
                ),
                Text(
                  '/',
                  style: FlutterFlowTheme.of(context).labelMedium.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).labelMediumFamily,
                        color: FlutterFlowTheme.of(context).onSurface,
                        letterSpacing: 0.0,
                        lineHeight: 1.2,
                        useGoogleFonts:
                            !FlutterFlowTheme.of(context).labelMediumIsCustom,
                      ),
                ),
                Text(
                  'Payment',
                  style: FlutterFlowTheme.of(context).labelMedium.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).labelMediumFamily,
                        color: FlutterFlowTheme.of(context).primaryText,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w600,
                        lineHeight: 1.2,
                        useGoogleFonts:
                            !FlutterFlowTheme.of(context).labelMediumIsCustom,
                      ),
                ),
              ].divide(SizedBox(width: 4.0)),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(24.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Secure Checkout',
                  style: FlutterFlowTheme.of(context).headlineMedium.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).headlineMediumFamily,
                        color: FlutterFlowTheme.of(context).primaryText,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w800,
                        lineHeight: 1.2,
                        useGoogleFonts: !FlutterFlowTheme.of(context)
                            .headlineMediumIsCustom,
                      ),
                ),
                Text(
                  'Complete your purchase securely. Your payment information is encrypted and protected with industry-standard protocols.',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).bodyMediumFamily,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        letterSpacing: 0.0,
                        lineHeight: 1.5,
                        useGoogleFonts:
                            !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                      ),
                ),
              ].divide(SizedBox(height: 16.0)),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 16.0),
            child: Container(
              child: Container(
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
                  padding: EdgeInsets.all(16.0),
                  child: Container(
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.verified_user_rounded,
                          color: FlutterFlowTheme.of(context).primaryText,
                          size: 20.0,
                        ),
                        Expanded(
                          flex: 1,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Security Policy',
                                style: FlutterFlowTheme.of(context)
                                    .bodySmall
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodySmallFamily,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                      lineHeight: 1.4,
                                      useGoogleFonts:
                                          !FlutterFlowTheme.of(context)
                                              .bodySmallIsCustom,
                                    ),
                              ),
                              Text(
                                'Credit card details are not stored on our servers. All transactions are processed via encrypted gateways.',
                                style: FlutterFlowTheme.of(context)
                                    .bodySmall
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodySmallFamily,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      letterSpacing: 0.0,
                                      lineHeight: 1.4,
                                      useGoogleFonts:
                                          !FlutterFlowTheme.of(context)
                                              .bodySmallIsCustom,
                                    ),
                              ),
                            ].divide(SizedBox(height: 4.0)),
                          ),
                        ),
                      ].divide(SizedBox(width: 16.0)),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 24.0),
            child: Container(
              child: Container(
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
                  padding: EdgeInsets.all(24.0),
                  child: Container(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          'Payment Information',
                          style: FlutterFlowTheme.of(context)
                              .titleMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .titleMediumFamily,
                                color: FlutterFlowTheme.of(context).primaryText,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.bold,
                                lineHeight: 1.4,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .titleMediumIsCustom,
                              ),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            wrapWithModel(
                              model: _model.formLabelModel1,
                              updateCallback: () => safeSetState(() {}),
                              child: FormLabelWidget(
                                label: 'Cardholder Name',
                              ),
                            ),
                            wrapWithModel(
                              model: _model.textFieldModel1,
                              updateCallback: () => safeSetState(() {}),
                              child: TextField5Widget(
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
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 4.0, 0.0, 0.0),
                              child: Container(
                                child: Text(
                                  'Please enter your full legal name.',
                                  style: FlutterFlowTheme.of(context)
                                      .labelSmall
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .labelSmallFamily,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        letterSpacing: 0.0,
                                        lineHeight: 1.2,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .labelSmallIsCustom,
                                      ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            wrapWithModel(
                              model: _model.formLabelModel2,
                              updateCallback: () => safeSetState(() {}),
                              child: FormLabelWidget(
                                label: 'Card Number',
                              ),
                            ),
                            wrapWithModel(
                              model: _model.textFieldModel2,
                              updateCallback: () => safeSetState(() {}),
                              child: TextField5Widget(
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
                          ],
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
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  wrapWithModel(
                                    model: _model.formLabelModel3,
                                    updateCallback: () => safeSetState(() {}),
                                    child: FormLabelWidget(
                                      label: 'Expiration Date',
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.textFieldModel3,
                                    updateCallback: () => safeSetState(() {}),
                                    child: TextField5Widget(
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
                                ],
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  wrapWithModel(
                                    model: _model.formLabelModel4,
                                    updateCallback: () => safeSetState(() {}),
                                    child: FormLabelWidget(
                                      label: 'Security Code (CVV)',
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.textFieldModel4,
                                    updateCallback: () => safeSetState(() {}),
                                    child: TextField5Widget(
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
                                ],
                              ),
                            ),
                          ].divide(SizedBox(width: 16.0)),
                        ),
                        Divider(
                          height: 16.0,
                          thickness: 1.0,
                          indent: 0.0,
                          endIndent: 0.0,
                          color: FlutterFlowTheme.of(context).alternate,
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
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    letterSpacing: 0.0,
                                    lineHeight: 1.4,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .titleMediumIsCustom,
                                  ),
                            ),
                            Text(
                              '\$124.50',
                              style: FlutterFlowTheme.of(context)
                                  .titleLarge
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .titleLargeFamily,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w800,
                                    lineHeight: 1.3,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .titleLargeIsCustom,
                                  ),
                            ),
                          ],
                        ),
                        wrapWithModel(
                          model: _model.buttonModel,
                          updateCallback: () => safeSetState(() {}),
                          child: Button7Widget(
                            content: 'Pay Securely Now',
                            icon: Icon(
                              Icons.lock_rounded,
                              color: FlutterFlowTheme.of(context).onPrimary,
                              size: 16.0,
                            ),
                            iconPresent: true,
                            iconEndPresent: false,
                            bg: FlutterFlowTheme.of(context).primary,
                            variant: 'primary',
                            size: 'large',
                            fullWidth: true,
                            loading: false,
                            disabled: false,
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            wrapWithModel(
                              model: _model.paymentBadgeModel1,
                              updateCallback: () => safeSetState(() {}),
                              child: PaymentBadgeWidget(
                                name: 'VISA',
                              ),
                            ),
                            wrapWithModel(
                              model: _model.paymentBadgeModel2,
                              updateCallback: () => safeSetState(() {}),
                              child: PaymentBadgeWidget(
                                name: 'MC',
                              ),
                            ),
                            wrapWithModel(
                              model: _model.paymentBadgeModel3,
                              updateCallback: () => safeSetState(() {}),
                              child: PaymentBadgeWidget(
                                name: 'AMEX',
                              ),
                            ),
                            wrapWithModel(
                              model: _model.paymentBadgeModel4,
                              updateCallback: () => safeSetState(() {}),
                              child: PaymentBadgeWidget(
                                name: 'PAYPAL',
                              ),
                            ),
                          ].divide(SizedBox(width: 8.0)),
                        ),
                      ].divide(SizedBox(height: 24.0)),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(32.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.shield_rounded,
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
                            useGoogleFonts: !FlutterFlowTheme.of(context)
                                .labelSmallIsCustom,
                          ),
                    ),
                  ].divide(SizedBox(width: 4.0)),
                ),
                Text(
                  '© 2023 DIY AC Repair Systems Inc. All rights reserved.',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).labelSmall.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).labelSmallFamily,
                        color: FlutterFlowTheme.of(context).onSurface,
                        letterSpacing: 0.0,
                        lineHeight: 1.2,
                        useGoogleFonts:
                            !FlutterFlowTheme.of(context).labelSmallIsCustom,
                      ),
                ),
              ].divide(SizedBox(height: 8.0)),
            ),
          ),
        ],
      ),
    );
  }
}
