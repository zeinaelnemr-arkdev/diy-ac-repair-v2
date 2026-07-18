import '/components/address_card3_widget.dart';
import '/components/button36_widget.dart';
import '/components/text_field11_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'shipping_addresses_model.dart';
export 'shipping_addresses_model.dart';

class ShippingAddressesWidget extends StatefulWidget {
  const ShippingAddressesWidget({super.key});

  static String routeName = 'ShippingAddresses';
  static String routePath = '/shippingAddresses';

  @override
  State<ShippingAddressesWidget> createState() =>
      _ShippingAddressesWidgetState();
}

class _ShippingAddressesWidgetState extends State<ShippingAddressesWidget> {
  late ShippingAddressesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ShippingAddressesModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 1,
              child: Container(
                child: SingleChildScrollView(
                  primary: false,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(40.0),
                        child: Container(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 40.0),
                                child: Container(
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Shipping Addresses',
                                            style: FlutterFlowTheme.of(context)
                                                .headlineLarge
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .headlineLargeFamily,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w800,
                                                  lineHeight: 1.1,
                                                  useGoogleFonts:
                                                      !FlutterFlowTheme.of(
                                                              context)
                                                          .headlineLargeIsCustom,
                                                ),
                                          ),
                                          Text(
                                            'Manage your delivery locations and preferences',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  letterSpacing: 0.0,
                                                  lineHeight: 1.5,
                                                  useGoogleFonts:
                                                      !FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumIsCustom,
                                                ),
                                          ),
                                        ].divide(SizedBox(height: 4.0)),
                                      ),
                                      wrapWithModel(
                                        model: _model.buttonModel1,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: Button36Widget(
                                          content: 'Add New Address',
                                          icon: Icon(
                                            Icons.add_rounded,
                                            color: Colors.white,
                                            size: 24.0,
                                          ),
                                          iconPresent: true,
                                          iconEndPresent: false,
                                          variant: 'primary',
                                          size: 'large',
                                          fullWidth: false,
                                          loading: false,
                                          disabled: false,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    flex: 2,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.stretch,
                                      children: [
                                        wrapWithModel(
                                          model: _model.addressCardModel1,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: AddressCard3Widget(
                                            city: 'San Francisco',
                                            label: 'Home',
                                            recipient: 'John Doe',
                                            state: 'CA',
                                            street: '123 Neo-Tokyo Blvd',
                                            zip: '94105',
                                            isDefault: true,
                                          ),
                                        ),
                                        wrapWithModel(
                                          model: _model.addressCardModel2,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: AddressCard3Widget(
                                            city: 'Brooklyn',
                                            label: 'Work / Studio',
                                            recipient: 'ABOT Design Lab',
                                            state: 'NY',
                                            street:
                                                '88 Industrial Way, Suite 400',
                                            zip: '11201',
                                            isDefault: false,
                                          ),
                                        ),
                                        wrapWithModel(
                                          model: _model.addressCardModel3,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: AddressCard3Widget(
                                            city: 'Austin',
                                            label: 'Warehouse',
                                            recipient: 'Fulfillment Center',
                                            state: 'TX',
                                            street: '500 Logistics Dr',
                                            zip: '73301',
                                            isDefault: false,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            shape: BoxShape.rectangle,
                                            border: Border.all(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              width: 2.0,
                                            ),
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.all(24.0),
                                            child: Container(
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.stretch,
                                                children: [
                                                  Text(
                                                    'Quick Add',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .titleMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleMediumFamily,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          lineHeight: 1.2,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .titleMediumIsCustom,
                                                        ),
                                                  ),
                                                  wrapWithModel(
                                                    model:
                                                        _model.textFieldModel1,
                                                    updateCallback: () =>
                                                        safeSetState(() {}),
                                                    child: TextField11Widget(
                                                      label: 'Address Label',
                                                      labelPresent: true,
                                                      helper: '',
                                                      helperPresent: false,
                                                      hint:
                                                          'e.g. Vacation Home',
                                                      value: '',
                                                      leadingIconPresent: false,
                                                      trailingIconPresent:
                                                          false,
                                                      maxLines: 4,
                                                      variant: 'outlined',
                                                      error: false,
                                                    ),
                                                  ),
                                                  wrapWithModel(
                                                    model:
                                                        _model.textFieldModel2,
                                                    updateCallback: () =>
                                                        safeSetState(() {}),
                                                    child: TextField11Widget(
                                                      label: 'Street Address',
                                                      labelPresent: true,
                                                      helper: '',
                                                      helperPresent: false,
                                                      hint:
                                                          'Enter street and number',
                                                      value: '',
                                                      leadingIconPresent: false,
                                                      trailingIconPresent:
                                                          false,
                                                      maxLines: 4,
                                                      variant: 'outlined',
                                                      error: false,
                                                    ),
                                                  ),
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Expanded(
                                                        flex: 1,
                                                        child: wrapWithModel(
                                                          model: _model
                                                              .textFieldModel3,
                                                          updateCallback: () =>
                                                              safeSetState(
                                                                  () {}),
                                                          child:
                                                              TextField11Widget(
                                                            label: 'City',
                                                            labelPresent: true,
                                                            helper: '',
                                                            helperPresent:
                                                                false,
                                                            hint: 'City',
                                                            value: '',
                                                            leadingIconPresent:
                                                                false,
                                                            trailingIconPresent:
                                                                false,
                                                            maxLines: 4,
                                                            variant: 'outlined',
                                                            error: false,
                                                          ),
                                                        ),
                                                      ),
                                                      Expanded(
                                                        flex: 1,
                                                        child: wrapWithModel(
                                                          model: _model
                                                              .textFieldModel4,
                                                          updateCallback: () =>
                                                              safeSetState(
                                                                  () {}),
                                                          child:
                                                              TextField11Widget(
                                                            label: 'Zip',
                                                            labelPresent: true,
                                                            helper: '',
                                                            helperPresent:
                                                                false,
                                                            hint: '00000',
                                                            value: '',
                                                            leadingIconPresent:
                                                                false,
                                                            trailingIconPresent:
                                                                false,
                                                            maxLines: 4,
                                                            variant: 'outlined',
                                                            error: false,
                                                          ),
                                                        ),
                                                      ),
                                                    ].divide(
                                                        SizedBox(width: 16.0)),
                                                  ),
                                                  wrapWithModel(
                                                    model: _model.buttonModel2,
                                                    updateCallback: () =>
                                                        safeSetState(() {}),
                                                    child: Button36Widget(
                                                      content: 'Save Address',
                                                      iconPresent: false,
                                                      iconEndPresent: false,
                                                      variant: 'primary',
                                                      size: 'medium',
                                                      fullWidth: true,
                                                      loading: false,
                                                      disabled: false,
                                                    ),
                                                  ),
                                                ].divide(
                                                    SizedBox(height: 16.0)),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            borderRadius:
                                                BorderRadius.circular(0.0),
                                            shape: BoxShape.rectangle,
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.all(24.0),
                                            child: Container(
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Icon(
                                                    Icons.info_outline_rounded,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBackground,
                                                    size: 24.0,
                                                  ),
                                                  Text(
                                                    'Shipping Policy',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmallFamily,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBackground,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .titleSmallIsCustom,
                                                        ),
                                                  ),
                                                  Text(
                                                    'Standard shipping is free for all addresses within the continental US. International rates may vary.',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodySmall
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodySmallFamily,
                                                          color:
                                                              Color(0xCCFFFFFF),
                                                          letterSpacing: 0.0,
                                                          lineHeight: 1.4,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodySmallIsCustom,
                                                        ),
                                                  ),
                                                ].divide(SizedBox(height: 8.0)),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ].divide(SizedBox(height: 24.0)),
                                    ),
                                  ),
                                ].divide(SizedBox(width: 40.0)),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
