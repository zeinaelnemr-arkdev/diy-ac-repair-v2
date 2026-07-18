import '/components/address_card2_widget.dart';
import '/components/button27_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'l_shipping_address_mobile02_model.dart';
export 'l_shipping_address_mobile02_model.dart';

class LShippingAddressMobile02Widget extends StatefulWidget {
  const LShippingAddressMobile02Widget({super.key});

  @override
  State<LShippingAddressMobile02Widget> createState() =>
      _LShippingAddressMobile02WidgetState();
}

class _LShippingAddressMobile02WidgetState
    extends State<LShippingAddressMobile02Widget> {
  late LShippingAddressMobile02Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LShippingAddressMobile02Model());

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
            padding: EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 24.0, 100.0),
            child: Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
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
                            Text(
                              'SHIPPING ADDRESSES',
                              style: FlutterFlowTheme.of(context)
                                  .headlineMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .headlineMediumFamily,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    letterSpacing: 0.0,
                                    lineHeight: 1.2,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .headlineMediumIsCustom,
                                  ),
                            ),
                            Text(
                              'Manage delivery locations',
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
                          ],
                        ),
                      ),
                    ].divide(SizedBox(width: 16.0)),
                  ),
                  Container(
                    height: 24.0,
                  ),
                  wrapWithModel(
                    model: _model.buttonModel,
                    updateCallback: () => safeSetState(() {}),
                    child: Button27Widget(
                      content: '+ ADD NEW ADDRESS',
                      icon_present: false,
                      icon_end_present: false,
                      variant: 'primary',
                      size: 'large',
                      full_width: true,
                      loading: false,
                      disabled: false,
                    ),
                  ),
                  Container(
                    height: 24.0,
                  ),
                  wrapWithModel(
                    model: _model.addressCardModel1,
                    updateCallback: () => safeSetState(() {}),
                    child: AddressCard2Widget(
                      city: 'San Francisco',
                      name: 'John Doe',
                      state: 'CA',
                      street: '123 Neo-Tokyo Blvd',
                      zip: '94105',
                      is_default: true,
                      type: 'home',
                    ),
                  ),
                  wrapWithModel(
                    model: _model.addressCardModel2,
                    updateCallback: () => safeSetState(() {}),
                    child: AddressCard2Widget(
                      city: 'Brooklyn',
                      name: 'ABOT Design Lab',
                      state: 'NY',
                      street: '88 Industrial Way',
                      zip: '11201',
                      is_default: false,
                      type: 'Work / Studio',
                    ),
                  ),
                  wrapWithModel(
                    model: _model.addressCardModel3,
                    updateCallback: () => safeSetState(() {}),
                    child: AddressCard2Widget(
                      city: 'Austin',
                      name: 'Fulfillment Center',
                      state: 'TX',
                      street: '500 Logistics Dr',
                      zip: '73301',
                      is_default: false,
                      type: 'warehouse',
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
