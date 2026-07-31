import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/stripe/payment_manager.dart';
import '/components/form_label2_widget.dart';
import '/components/payment_badge3_widget.dart';
import '/components/text_field7_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/g_checkout_details/components/button8/button8_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'details_checkout_mobile_and_desktop_model.dart';
export 'details_checkout_mobile_and_desktop_model.dart';

class DetailsCheckoutMobileAndDesktopWidget extends StatefulWidget {
  const DetailsCheckoutMobileAndDesktopWidget({super.key});

  @override
  State<DetailsCheckoutMobileAndDesktopWidget> createState() =>
      _DetailsCheckoutMobileAndDesktopWidgetState();
}

class _DetailsCheckoutMobileAndDesktopWidgetState
    extends State<DetailsCheckoutMobileAndDesktopWidget> {
  late DetailsCheckoutMobileAndDesktopModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DetailsCheckoutMobileAndDesktopModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.orderPS = null;
      _model.paymentidPS = null;
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return SingleChildScrollView(
      primary: false,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
              shape: BoxShape.rectangle,
            ),
          ),
          Container(
            constraints: BoxConstraints(
              maxWidth: 800.0,
            ),
            child: Padding(
              padding: EdgeInsets.all(32.0),
              child: Container(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Cart',
                          style: FlutterFlowTheme.of(context)
                              .bodySmall
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodySmallFamily,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                fontSize: 18.0,
                                letterSpacing: 0.0,
                                lineHeight: 1.4,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .bodySmallIsCustom,
                              ),
                        ),
                        Text(
                          '/',
                          style: FlutterFlowTheme.of(context)
                              .bodySmall
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodySmallFamily,
                                color: FlutterFlowTheme.of(context).onSurface,
                                fontSize: 18.0,
                                letterSpacing: 0.0,
                                lineHeight: 1.4,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .bodySmallIsCustom,
                              ),
                        ),
                        Text(
                          'Review Order',
                          style: FlutterFlowTheme.of(context)
                              .bodySmall
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodySmallFamily,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                fontSize: 18.0,
                                letterSpacing: 0.0,
                                lineHeight: 1.4,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .bodySmallIsCustom,
                              ),
                        ),
                        Text(
                          '/',
                          style: FlutterFlowTheme.of(context)
                              .bodySmall
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodySmallFamily,
                                color: FlutterFlowTheme.of(context).onSurface,
                                fontSize: 18.0,
                                letterSpacing: 0.0,
                                lineHeight: 1.4,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .bodySmallIsCustom,
                              ),
                        ),
                        Text(
                          'Payment',
                          style: FlutterFlowTheme.of(context)
                              .bodySmall
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodySmallFamily,
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontSize: 18.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w600,
                                lineHeight: 1.4,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .bodySmallIsCustom,
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
                          'Checkout Details',
                          style: FlutterFlowTheme.of(context)
                              .headlineMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .headlineMediumFamily,
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
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyMediumFamily,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                letterSpacing: 0.0,
                                lineHeight: 1.5,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .bodyMediumIsCustom,
                              ),
                        ),
                      ].divide(SizedBox(height: 8.0)),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        borderRadius: BorderRadius.circular(4.0),
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
                                          .bodyMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.bold,
                                            lineHeight: 1.5,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .bodyMediumIsCustom,
                                          ),
                                    ),
                                    Text(
                                      'Credit card details are not stored on our servers. All transactions are processed via encrypted gateways.',
                                      style: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
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
                    Container(
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        borderRadius: BorderRadius.circular(4.0),
                        shape: BoxShape.rectangle,
                        border: Border.all(
                          color: FlutterFlowTheme.of(context).alternate,
                          width: 1.0,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(32.0),
                        child: Container(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Form(
                                key: _model.formKey,
                                autovalidateMode: AutovalidateMode.disabled,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Billing/Shipping Information',
                                      style: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .titleMediumFamily,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.bold,
                                            lineHeight: 1.4,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .titleMediumIsCustom,
                                          ),
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.stretch,
                                      children: [
                                        wrapWithModel(
                                          model: _model.formLabelModel1,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: FormLabel2Widget(
                                            label: 'Full Name',
                                            isRequired: true,
                                          ),
                                        ),
                                        wrapWithModel(
                                          model: _model.textFieldNameModel,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: TextField7Widget(
                                            label: false,
                                            helper: false,
                                            hint: 'John Doe',
                                            value: '',
                                            leading_icon_present: false,
                                            trailing_icon_present: false,
                                            variant: 'outlined',
                                            error: false,
                                          ),
                                        ),
                                      ].divide(SizedBox(height: 8.0)),
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.stretch,
                                      children: [
                                        wrapWithModel(
                                          model: _model.formLabelModel2,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: FormLabel2Widget(
                                            label: 'Email',
                                            isRequired: true,
                                          ),
                                        ),
                                        wrapWithModel(
                                          model: _model.textFieldEmailModel,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: TextField7Widget(
                                            label: false,
                                            helper: false,
                                            hint: 'John@gmail.com',
                                            value: '',
                                            leading_icon_present: false,
                                            trailing_icon_present: false,
                                            variant: 'outlined',
                                            error: false,
                                          ),
                                        ),
                                      ].divide(SizedBox(height: 8.0)),
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.stretch,
                                      children: [
                                        wrapWithModel(
                                          model: _model.formLabelModel3,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: FormLabel2Widget(
                                            label: 'Address',
                                            isRequired: true,
                                          ),
                                        ),
                                        wrapWithModel(
                                          model: _model.textFieldAddressModel,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: TextField7Widget(
                                            label: false,
                                            helper: false,
                                            hint: '123 DIY Lane',
                                            value: '',
                                            leading_icon_present: false,
                                            trailing_icon_present: false,
                                            variant: 'outlined',
                                            error: false,
                                          ),
                                        ),
                                      ].divide(SizedBox(height: 8.0)),
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Expanded(
                                          flex: 1,
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.stretch,
                                            children: [
                                              wrapWithModel(
                                                model: _model.formLabelModel4,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: FormLabel2Widget(
                                                  label: 'City',
                                                  isRequired: true,
                                                ),
                                              ),
                                              wrapWithModel(
                                                model:
                                                    _model.textFieldCityModel,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: TextField7Widget(
                                                  label: false,
                                                  helper: false,
                                                  hint: 'Repair City',
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
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.stretch,
                                            children: [
                                              wrapWithModel(
                                                model: _model.formLabelModel5,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: FormLabel2Widget(
                                                  label: 'State/Province',
                                                  isRequired: true,
                                                ),
                                              ),
                                              wrapWithModel(
                                                model:
                                                    _model.textFieldStateModel,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: TextField7Widget(
                                                  label: false,
                                                  helper: false,
                                                  hint: 'State',
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
                                      ].divide(SizedBox(width: 16.0)),
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Expanded(
                                          flex: 1,
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.stretch,
                                            children: [
                                              wrapWithModel(
                                                model: _model.formLabelModel6,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: FormLabel2Widget(
                                                  label: 'PIN',
                                                  isRequired: true,
                                                ),
                                              ),
                                              wrapWithModel(
                                                model:
                                                    _model.textFieldCardModel,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: TextField7Widget(
                                                  label: false,
                                                  helper: false,
                                                  hint: '00000',
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
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.stretch,
                                            children: [
                                              wrapWithModel(
                                                model: _model.formLabelModel7,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: FormLabel2Widget(
                                                  label: 'Phone Number',
                                                  isRequired: true,
                                                ),
                                              ),
                                              wrapWithModel(
                                                model:
                                                    _model.textFieldPhoneModel,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: TextField7Widget(
                                                  label: false,
                                                  helper: false,
                                                  hint: '(555) 000-0000',
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
                                      ].divide(SizedBox(width: 16.0)),
                                    ),
                                    Text(
                                      'Please remember your details  (Email, phone, PIN) to track and find your order.',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily,
                                            color: Color(0xFFB85757),
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.bold,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .bodyMediumIsCustom,
                                          ),
                                    ),
                                  ].divide(SizedBox(height: 16.0)),
                                ),
                              ),
                              Divider(
                                height: 16.0,
                                thickness: 1.0,
                                indent: 0.0,
                                endIndent: 0.0,
                                color: FlutterFlowTheme.of(context).alternate,
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 16.0, 0.0, 16.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Total Amount Due',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodyLargeFamily,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            letterSpacing: 0.0,
                                            lineHeight: 1.5,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .bodyLargeIsCustom,
                                          ),
                                    ),
                                    Text(
                                                                            '\$${FFAppState().Cart.total.toStringAsFixed(2)}',
                                      style: FlutterFlowTheme.of(context)
                                          .headlineSmall
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .headlineSmallFamily,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w800,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .headlineSmallIsCustom,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  if (_model.orderPS == null) {
                                    _model.form01 = true;
                                    if (_model.formKey.currentState == null ||
                                        !_model.formKey.currentState!
                                            .validate()) {
                                      safeSetState(() => _model.form01 = false);
                                      return;
                                    }
                                    _model.linsACTC =
                                        await actions.cartItemsToOrderLinesA(
                                      FFAppState().Cart.cartItems.toList(),
                                    );

                                    var ordersRecordReference =
                                        OrdersRecord.collection.doc();
                                    await ordersRecordReference.set({
                                      ...createOrdersRecordData(
                                        createdAt: getCurrentTimestamp,
                                        updatedAt: getCurrentTimestamp,
                                        status: OrderStatus.submitted,
                                        totalsSnap: createTotalSnapStruct(
                                          subtotal: FFAppState().Cart.subtotal,
                                          shipping: FFAppState().Cart.shipping,
                                          tax: FFAppState().Cart.tax,
                                          total: FFAppState().Cart.total,
                                          clearUnsetFields: false,
                                          create: true,
                                        ),
                                        payment: createPaymentDataStruct(
                                          provider: 'Strip',
                                          currency: 'usd',
                                          status: PaymentStatus.pending.name,
                                          amountTotal: FFAppState().Cart.total,
                                          clearUnsetFields: false,
                                          create: true,
                                        ),
                                        customerSnap: createCustomerStruct(
                                          email: _model.textFieldEmailModel
                                              .inputTextController.text,
                                          shippingAddress:
                                              '${_model.textFieldAddressModel.inputTextController.text} / ${_model.textFieldCityModel.inputTextController.text} / ${_model.textFieldStateModel.inputTextController.text}',
                                          phone: _model.textFieldPhoneModel
                                              .inputTextController.text,
                                          name: _model.textFieldNameModel
                                              .inputTextController.text,
                                          pin: _model.textFieldCardModel
                                              .inputTextController.text,
                                          clearUnsetFields: false,
                                          create: true,
                                        ),
                                        uid: currentUserReference,
                                        comment: FFAppState().Cart.comment,
                                      ),
                                      ...mapToFirestore(
                                        {
                                          'lines':
                                              getOrderLinesListFirestoreData(
                                            _model.linsACTC,
                                          ),
                                        },
                                      ),
                                    });
                                    _model.order =
                                        OrdersRecord.getDocumentFromData({
                                      ...createOrdersRecordData(
                                        createdAt: getCurrentTimestamp,
                                        updatedAt: getCurrentTimestamp,
                                        status: OrderStatus.submitted,
                                        totalsSnap: createTotalSnapStruct(
                                          subtotal: FFAppState().Cart.subtotal,
                                          shipping: FFAppState().Cart.shipping,
                                          tax: FFAppState().Cart.tax,
                                          total: FFAppState().Cart.total,
                                          clearUnsetFields: false,
                                          create: true,
                                        ),
                                        payment: createPaymentDataStruct(
                                          provider: 'Strip',
                                          currency: 'usd',
                                          status: PaymentStatus.pending.name,
                                          amountTotal: FFAppState().Cart.total,
                                          clearUnsetFields: false,
                                          create: true,
                                        ),
                                        customerSnap: createCustomerStruct(
                                          email: _model.textFieldEmailModel
                                              .inputTextController.text,
                                          shippingAddress:
                                              '${_model.textFieldAddressModel.inputTextController.text} / ${_model.textFieldCityModel.inputTextController.text} / ${_model.textFieldStateModel.inputTextController.text}',
                                          phone: _model.textFieldPhoneModel
                                              .inputTextController.text,
                                          name: _model.textFieldNameModel
                                              .inputTextController.text,
                                          pin: _model.textFieldCardModel
                                              .inputTextController.text,
                                          clearUnsetFields: false,
                                          create: true,
                                        ),
                                        uid: currentUserReference,
                                        comment: FFAppState().Cart.comment,
                                      ),
                                      ...mapToFirestore(
                                        {
                                          'lines':
                                              getOrderLinesListFirestoreData(
                                            _model.linsACTC,
                                          ),
                                        },
                                      ),
                                    }, ordersRecordReference);
                                    _model.orderPS = _model.order?.reference;
                                  } else {
                                    _model.form02 = true;
                                    if (_model.formKey.currentState == null ||
                                        !_model.formKey.currentState!
                                            .validate()) {
                                      safeSetState(() => _model.form02 = false);
                                      return;
                                    }
                                    _model.linsACTU =
                                        await actions.cartItemsToOrderLinesA(
                                      FFAppState().Cart.cartItems.toList(),
                                    );

                                    await _model.orderPS!.update({
                                      ...createOrdersRecordData(
                                        updatedAt: getCurrentTimestamp,
                                        customerSnap: createCustomerStruct(
                                          email: _model.textFieldEmailModel
                                              .inputTextController.text,
                                          phone: _model.textFieldPhoneModel
                                              .inputTextController.text,
                                          shippingAddress:
                                              '${_model.textFieldAddressModel.inputTextController.text} / ${_model.textFieldCityModel.inputTextController.text} / ${_model.textFieldStateModel.inputTextController.text}',
                                          pin: _model.textFieldCardModel
                                              .inputTextController.text,
                                          name: _model.textFieldCardModel
                                              .inputTextController.text,
                                          clearUnsetFields: false,
                                        ),
                                        comment: FFAppState().Cart.comment,
                                      ),
                                      ...mapToFirestore(
                                        {
                                          'lines':
                                              getOrderLinesListFirestoreData(
                                            _model.linsACTU,
                                          ),
                                        },
                                      ),
                                    });
                                  }

                                  final paymentResponse =
                                      await processStripePayment(
                                    context,
                                    amount:
                                        (FFAppState().Cart.total * 100).round(),
                                    currency: 'usd',
                                    customerEmail: _model.textFieldEmailModel
                                        .inputTextController.text,
                                    customerName: _model.textFieldNameModel
                                        .inputTextController.text,
                                    allowGooglePay: false,
                                    allowApplePay: false,
                                  );
                                  if (paymentResponse.paymentId == null &&
                                      paymentResponse.errorMessage != null) {
                                    showSnackbar(
                                      context,
                                      'Error: ${paymentResponse.errorMessage}',
                                    );
                                  }
                                  _model.paymentId =
                                      paymentResponse.paymentId ?? '';

                                  await Future.delayed(
                                    Duration(
                                      milliseconds: 50,
                                    ),
                                  );
                                  if (_model.paymentId != null &&
                                      _model.paymentId != '') {
                                    await _model.orderPS!
                                        .update(createOrdersRecordData(
                                      payment: createPaymentDataStruct(
                                        paymentIntentId: _model.paymentId,
                                        clearUnsetFields: false,
                                      ),
                                    ));

                                    context.pushNamed(
                                      HConfirmationCheckoutWidget.routeName,
                                      queryParameters: {
                                        'orderId': serializeParam(
                                          _model.orderPS,
                                          ParamType.DocumentReference,
                                        ),
                                      }.withoutNulls,
                                    );
                                  }

                                  safeSetState(() {});
                                },
                                child: wrapWithModel(
                                  model: _model.buttonModel,
                                  updateCallback: () => safeSetState(() {}),
                                  child: Button8Widget(
                                    content: 'Pay Securely Now',
                                    icon: Icon(
                                      Icons.lock_rounded,
                                      color: FlutterFlowTheme.of(context)
                                          .onPrimary,
                                      size: 20.0,
                                    ),
                                    iconPresent: true,
                                    iconEndPresent: false,
                                    variant: 'primary',
                                    size: 'large',
                                    fullWidth: true,
                                    loading: false,
                                    disabled: false,
                                  ),
                                ),
                              ),
                              if (false)
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    wrapWithModel(
                                      model: _model.paymentBadgeModel1,
                                      updateCallback: () => safeSetState(() {}),
                                      child: PaymentBadge3Widget(
                                        name: 'VISA',
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.paymentBadgeModel2,
                                      updateCallback: () => safeSetState(() {}),
                                      child: PaymentBadge3Widget(
                                        name: 'MC',
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.paymentBadgeModel3,
                                      updateCallback: () => safeSetState(() {}),
                                      child: PaymentBadge3Widget(
                                        name: 'AMEX',
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.paymentBadgeModel4,
                                      updateCallback: () => safeSetState(() {}),
                                      child: PaymentBadge3Widget(
                                        name: 'PAYPAL',
                                      ),
                                    ),
                                  ].divide(SizedBox(width: 16.0)),
                                ),
                            ].divide(SizedBox(height: 32.0)),
                          ),
                        ),
                      ),
                    ),
                  ].divide(SizedBox(height: 24.0)),
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
                            useGoogleFonts: !FlutterFlowTheme.of(context)
                                .labelSmallIsCustom,
                          ),
                    ),
                  ].divide(SizedBox(width: 4.0)),
                ),
                Text(
                  '© 2023 DIY AC Repair Systems Inc. All rights reserved.',
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
