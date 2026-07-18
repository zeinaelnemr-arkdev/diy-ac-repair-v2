import '/backend/backend.dart';
import '/components/button39_widget.dart';
import '/components/order_card2_widget.dart';
import '/components/text_field21_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'track_and_find_my_order_mobile_model.dart';
export 'track_and_find_my_order_mobile_model.dart';

class TrackAndFindMyOrderMobileWidget extends StatefulWidget {
  const TrackAndFindMyOrderMobileWidget({super.key});

  @override
  State<TrackAndFindMyOrderMobileWidget> createState() =>
      _TrackAndFindMyOrderMobileWidgetState();
}

class _TrackAndFindMyOrderMobileWidgetState
    extends State<TrackAndFindMyOrderMobileWidget> {
  late TrackAndFindMyOrderMobileModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TrackAndFindMyOrderMobileModel());

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
          Container(
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
              shape: BoxShape.rectangle,
            ),
          ),
          Container(
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 24.0, 0.0),
              child: Container(),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(24.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'TRACK & FIND MY ORDER',
                  style: FlutterFlowTheme.of(context).headlineLarge.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).headlineLargeFamily,
                        color: FlutterFlowTheme.of(context).primaryText,
                        letterSpacing: 0.0,
                        lineHeight: 1.1,
                        useGoogleFonts:
                            !FlutterFlowTheme.of(context).headlineLargeIsCustom,
                      ),
                ),
                Text(
                  'Can\'t find your confirmation email? Enter your details below to securely locate your order status and shipping history.',
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
            padding: EdgeInsets.all(24.0),
            child: Container(
              child: Container(
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  shape: BoxShape.rectangle,
                  border: Border.all(
                    color: FlutterFlowTheme.of(context).alternate,
                    width: 2.0,
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
                        Form(
                          key: _model.formKey,
                          autovalidateMode: AutovalidateMode.disabled,
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 10.0),
                                child: wrapWithModel(
                                  model: _model.textFieldModel1,
                                  updateCallback: () => safeSetState(() {}),
                                  child: TextField21Widget(
                                    label: 'EMAIL ADDRESS',
                                    labelPresent: true,
                                    helper: '',
                                    helperPresent: false,
                                    hint: 'e.g. name@example.com',
                                    value: '',
                                    onChange: '',
                                    onSubmit: '',
                                    leadingIcon: Icon(
                                      Icons.mail_outline_rounded,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      size: 24.0,
                                    ),
                                    leadingIconPresent: true,
                                    trailingIconPresent: false,
                                    variant: 'outlined',
                                    error: false,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 10.0),
                                child: wrapWithModel(
                                  model: _model.textFieldModel2,
                                  updateCallback: () => safeSetState(() {}),
                                  child: TextField21Widget(
                                    label: 'PHONE NUMBER',
                                    labelPresent: true,
                                    helper: '',
                                    helperPresent: false,
                                    hint: '(555) 000-0000',
                                    value: '',
                                    onChange: '',
                                    onSubmit: '',
                                    leadingIcon: Icon(
                                      Icons.phone_android_rounded,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      size: 24.0,
                                    ),
                                    leadingIconPresent: true,
                                    trailingIconPresent: false,
                                    variant: 'outlined',
                                    error: false,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 18.0),
                                child: wrapWithModel(
                                  model: _model.textFieldModel3,
                                  updateCallback: () => safeSetState(() {}),
                                  child: TextField21Widget(
                                    label: 'PIN',
                                    labelPresent: true,
                                    helper: '',
                                    helperPresent: false,
                                    hint: '0000',
                                    value: '',
                                    onChange: '',
                                    onSubmit: '',
                                    leadingIcon: Icon(
                                      Icons.credit_card_rounded,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      size: 24.0,
                                    ),
                                    leadingIconPresent: true,
                                    trailingIconPresent: false,
                                    variant: 'outlined',
                                    error: false,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 14.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    _model.formval = true;
                                    if (_model.formKey.currentState == null ||
                                        !_model.formKey.currentState!
                                            .validate()) {
                                      safeSetState(
                                          () => _model.formval = false);
                                      return;
                                    }
                                    _model.orderList =
                                        await queryOrdersRecordOnce(
                                      queryBuilder: (ordersRecord) =>
                                          ordersRecord
                                              .where(
                                                'customerSnap.email',
                                                isEqualTo: _model
                                                    .textFieldModel1
                                                    .inputTextController
                                                    .text,
                                              )
                                              .where(
                                                'customerSnap.phone',
                                                isEqualTo: _model
                                                    .textFieldModel2
                                                    .inputTextController
                                                    .text,
                                              )
                                              .where(
                                                'customerSnap.PIN',
                                                isEqualTo: _model
                                                    .textFieldModel3
                                                    .inputTextController
                                                    .text,
                                              )
                                              .orderBy('createdAt',
                                                  descending: true),
                                    );
                                    _model.orderListM = _model.orderList!
                                        .toList()
                                        .cast<OrdersRecord>();
                                    if (_model.orderListM.length > 0) {
                                      _model.zeroResult = false;
                                      safeSetState(() {});
                                    } else {
                                      _model.zeroResult = true;
                                      safeSetState(() {});
                                    }

                                    safeSetState(() {});
                                  },
                                  child: wrapWithModel(
                                    model: _model.buttonModel1,
                                    updateCallback: () => safeSetState(() {}),
                                    child: Button39Widget(
                                      content: 'SEARCH ORDERS',
                                      icon: Icon(
                                        Icons.search_rounded,
                                        color: Colors.white,
                                        size: 16.0,
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
                              ),
                            ],
                          ),
                        ),
                        if (_model.zeroResult)
                          Container(
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              shape: BoxShape.rectangle,
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.info_outline_rounded,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  size: 18.0,
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Text(
                                    'No orders found with these credentials. Please check your information and try again.',
                                    style: FlutterFlowTheme.of(context)
                                        .bodySmall
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodySmallFamily,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          letterSpacing: 0.0,
                                          lineHeight: 1.5,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .bodySmallIsCustom,
                                        ),
                                  ),
                                ),
                              ].divide(SizedBox(width: 8.0)),
                            ),
                          ),
                      ].divide(SizedBox(height: 16.0)),
                    ),
                  ),
                ),
              ),
            ),
          ),
          if (!_model.zeroResult)
            Padding(
              padding: EdgeInsets.all(24.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Orders ( ${_model.orderListM.length.toString()} )',
                        style: FlutterFlowTheme.of(context)
                            .headlineSmall
                            .override(
                              font: GoogleFonts.anton(
                                fontWeight: FlutterFlowTheme.of(context)
                                    .headlineSmall
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .headlineSmall
                                    .fontStyle,
                              ),
                              color: FlutterFlowTheme.of(context).primaryText,
                              letterSpacing: 0.0,
                              fontWeight: FlutterFlowTheme.of(context)
                                  .headlineSmall
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .headlineSmall
                                  .fontStyle,
                              lineHeight: 1.1,
                            ),
                      ),
                      Container(
                        width: 120.0,
                      ),
                    ],
                  ),
                  Divider(
                    height: 16.0,
                    thickness: 2.0,
                    indent: 0.0,
                    endIndent: 0.0,
                    color: FlutterFlowTheme.of(context).alternate,
                  ),
                  Builder(
                    builder: (context) {
                      final ordersListM = _model.orderListM.toList();

                      return ListView.builder(
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount: ordersListM.length,
                        itemBuilder: (context, ordersListMIndex) {
                          final ordersListMItem = ordersListM[ordersListMIndex];
                          return Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 12.0),
                            child: OrderCard2Widget(
                              key: Key(
                                  'Key3pa_${ordersListMIndex}_of_${ordersListM.length}'),
                              date: dateTimeFormat(
                                  "yMMMd", ordersListMItem.createdAt),
                              iconName: Icon(
                                Icons.inventory_2_outlined,
                                color: FlutterFlowTheme.of(context).primary,
                                size: 24.0,
                              ),
                              idNum: 'ORD-88291',
                              items: 'Replacement Capacitor, Service Valve Set',
                              status: ordersListMItem.status?.name,
                              totalAmount: ordersListMItem.totalsSnap.total,
                              orderId: ordersListMItem.reference,
                            ),
                          );
                        },
                      );
                    },
                  ),
                ].divide(SizedBox(height: 16.0)),
              ),
            ),
          Padding(
            padding: EdgeInsets.all(24.0),
            child: Container(
              child: Container(
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'STILL NEED HELP?',
                          style: FlutterFlowTheme.of(context)
                              .titleMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .titleMediumFamily,
                                color: FlutterFlowTheme.of(context).primaryText,
                                letterSpacing: 0.0,
                                lineHeight: 1.2,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .titleMediumIsCustom,
                              ),
                        ),
                        Text(
                          'Our support team is available 24/7 to help you find your order or assist with any repair questions.',
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
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              flex: 1,
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.pushNamed(KContactWidget.routeName);
                                },
                                child: wrapWithModel(
                                  model: _model.buttonModel2,
                                  updateCallback: () => safeSetState(() {}),
                                  child: Button39Widget(
                                    content: 'CONTACT',
                                    icon: Icon(
                                      Icons.chat_bubble_outline_rounded,
                                      color: Colors.white,
                                      size: 16.0,
                                    ),
                                    iconPresent: true,
                                    iconEndPresent: false,
                                    variant: 'primary',
                                    size: 'medium',
                                    fullWidth: true,
                                    loading: false,
                                    disabled: false,
                                  ),
                                ),
                              ),
                            ),
                            if (false)
                              Expanded(
                                flex: 1,
                                child: wrapWithModel(
                                  model: _model.buttonModel3,
                                  updateCallback: () => safeSetState(() {}),
                                  child: Button39Widget(
                                    content: 'FAQS',
                                    icon: Icon(
                                      Icons.help_outline_rounded,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      size: 16.0,
                                    ),
                                    iconPresent: true,
                                    iconEndPresent: false,
                                    variant: 'outline',
                                    size: 'medium',
                                    fullWidth: true,
                                    loading: false,
                                    disabled: false,
                                  ),
                                ),
                              ),
                          ].divide(SizedBox(width: 16.0)),
                        ),
                      ].divide(SizedBox(height: 16.0)),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: 32.0,
          ),
        ],
      ),
    );
  }
}
