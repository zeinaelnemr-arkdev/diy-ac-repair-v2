import '/backend/backend.dart';
import '/components/button38_widget.dart';
import '/components/order_card_widget.dart';
import '/components/text_field18_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'track_and_find_my_order_model.dart';
export 'track_and_find_my_order_model.dart';

class TrackAndFindMyOrderWidget extends StatefulWidget {
  const TrackAndFindMyOrderWidget({super.key});

  @override
  State<TrackAndFindMyOrderWidget> createState() =>
      _TrackAndFindMyOrderWidgetState();
}

class _TrackAndFindMyOrderWidgetState extends State<TrackAndFindMyOrderWidget> {
  late TrackAndFindMyOrderModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TrackAndFindMyOrderModel());

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
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            shape: BoxShape.rectangle,
          ),
        ),
        Expanded(
          flex: 1,
          child: SingleChildScrollView(
            primary: false,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(48.0, 32.0, 48.0, 32.0),
                  child: Container(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Container(
                          height: 24.0,
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'TRACK & FIND MY ORDER',
                              style: FlutterFlowTheme.of(context)
                                  .displaySmall
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .displaySmallFamily,
                                    fontSize: 40.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w900,
                                    lineHeight: 1.1,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .displaySmallIsCustom,
                                  ),
                            ),
                            Container(
                              constraints: BoxConstraints(
                                maxWidth: 600.0,
                              ),
                              child: Text(
                                'Can\'t find your confirmation email? Enter your details below to securely locate your order status and shipping history.',
                                style: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
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
                            ),
                          ].divide(SizedBox(height: 16.0)),
                        ),
                        Container(
                          height: 32.0,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            shape: BoxShape.rectangle,
                            border: Border.all(
                              color: FlutterFlowTheme.of(context).alternate,
                              width: 1.0,
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(32.0),
                            child: Container(
                              child: Form(
                                key: _model.formKey,
                                autovalidateMode: AutovalidateMode.disabled,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
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
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        8.0, 0.0, 0.0, 0.0),
                                                child: Text(
                                                  'EMAIL ADDRESS',
                                                  style:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelSmall
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelSmallFamily,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            lineHeight: 1.2,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelSmallIsCustom,
                                                          ),
                                                ),
                                              ),
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Padding(
                                                  padding: EdgeInsets.all(4.0),
                                                  child: wrapWithModel(
                                                    model:
                                                        _model.textFieldModel1,
                                                    updateCallback: () =>
                                                        safeSetState(() {}),
                                                    child: TextField18Widget(
                                                      label: '',
                                                      labelPresent: false,
                                                      helper: '',
                                                      helperPresent: false,
                                                      hint:
                                                          '   e.g. name@example.com',
                                                      value: '',
                                                      onChange: '',
                                                      onSubmit: '',
                                                      leadingIcon: Icon(
                                                        Icons.email_outlined,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        size: 18.0,
                                                      ),
                                                      leadingIconPresent: true,
                                                      trailingIconPresent:
                                                          false,
                                                      variant: 'outlined',
                                                      error: false,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ].divide(SizedBox(height: 4.0)),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'PHONE NUMBER',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .labelSmall
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelSmallFamily,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          lineHeight: 1.2,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .labelSmallIsCustom,
                                                        ),
                                              ),
                                              wrapWithModel(
                                                model: _model.textFieldModel2,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: TextField18Widget(
                                                  label: '',
                                                  labelPresent: false,
                                                  helper: '',
                                                  helperPresent: false,
                                                  hint: '  (555) 000-0000',
                                                  value: '',
                                                  onChange: '',
                                                  onSubmit: '',
                                                  leadingIcon: Icon(
                                                    Icons.phone_outlined,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    size: 24.0,
                                                  ),
                                                  leadingIconPresent: true,
                                                  trailingIconPresent: false,
                                                  variant: 'outlined',
                                                  error: false,
                                                ),
                                              ),
                                            ].divide(SizedBox(height: 4.0)),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        8.0, 0.0, 0.0, 0.0),
                                                child: Text(
                                                  'PIN',
                                                  style:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelSmall
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelSmallFamily,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            lineHeight: 1.2,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelSmallIsCustom,
                                                          ),
                                                ),
                                              ),
                                              wrapWithModel(
                                                model: _model.textFieldModel3,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: TextField18Widget(
                                                  label: '',
                                                  labelPresent: false,
                                                  helper: '',
                                                  helperPresent: false,
                                                  hint: '  0000',
                                                  value: '',
                                                  onChange: '',
                                                  onSubmit: '',
                                                  leadingIcon: Icon(
                                                    Icons.credit_card_outlined,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    size: 24.0,
                                                  ),
                                                  leadingIconPresent: true,
                                                  trailingIconPresent: false,
                                                  variant: 'outlined',
                                                  error: false,
                                                ),
                                              ),
                                            ].divide(SizedBox(height: 4.0)),
                                          ),
                                        ),
                                      ].divide(SizedBox(width: 16.0)),
                                    ),
                                    InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        _model.formval = true;
                                        if (_model.formKey.currentState ==
                                                null ||
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
                                        _model.orders = _model.orderList!
                                            .toList()
                                            .cast<OrdersRecord>();
                                        if (_model.orders.length > 0) {
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
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: Button38Widget(
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
                                          fullWidth: false,
                                          loading: false,
                                          disabled: false,
                                        ),
                                      ),
                                    ),
                                  ].divide(SizedBox(height: 24.0)),
                                ),
                              ),
                            ),
                          ),
                        ),
                        if (_model.zeroResult)
                          Container(
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              shape: BoxShape.rectangle,
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(16.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 8.0, 0.0, 0.0),
                                    child: Icon(
                                      Icons.info_rounded,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      size: 32.0,
                                    ),
                                  ),
                                  Text(
                                    'To return returnable items, Please follow the email sent to you during payments at checkout.',
                                    style: FlutterFlowTheme.of(context)
                                        .bodySmall
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodySmallFamily,
                                          fontSize: 24.0,
                                          letterSpacing: 0.0,
                                          lineHeight: 1.5,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .bodySmallIsCustom,
                                        ),
                                  ),
                                ].divide(SizedBox(width: 8.0)),
                              ),
                            ),
                          ),
                        Container(
                          decoration: BoxDecoration(),
                          child: Visibility(
                            visible: !_model.zeroResult,
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  height: 48.0,
                                  decoration: BoxDecoration(),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      'ORDERS ( ${_model.orders.length.toString()} )',
                                      style: FlutterFlowTheme.of(context)
                                          .titleLarge
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .titleLargeFamily,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w900,
                                            lineHeight: 1.2,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .titleLargeIsCustom,
                                          ),
                                    ),
                                    Text(
                                      'Showing results for yourorders',
                                      style: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodySmallFamily,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            letterSpacing: 0.0,
                                            fontStyle: FontStyle.italic,
                                            lineHeight: 1.5,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .bodySmallIsCustom,
                                          ),
                                    ),
                                  ],
                                ),
                                Container(
                                  height: 16.0,
                                ),
                                Builder(
                                  builder: (context) {
                                    final ordersList = _model.orders.toList();

                                    return ListView.separated(
                                      padding: EdgeInsets.zero,
                                      shrinkWrap: true,
                                      scrollDirection: Axis.vertical,
                                      itemCount: ordersList.length,
                                      separatorBuilder: (_, __) =>
                                          SizedBox(height: 8.0),
                                      itemBuilder: (context, ordersListIndex) {
                                        final ordersListItem =
                                            ordersList[ordersListIndex];
                                        return wrapWithModel(
                                          model:
                                              _model.orderCardModels.getModel(
                                            ordersListItem.orderNumber,
                                            ordersListIndex,
                                          ),
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: OrderCardWidget(
                                            key: Key(
                                              'Keypif_${ordersListItem.orderNumber}',
                                            ),
                                            date: dateTimeFormat("yMMMd",
                                                ordersListItem.createdAt),
                                            iconName: Icon(
                                              Icons.storefront_sharp,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              size: 28.0,
                                            ),
                                            idNum: ordersListItem.orderNumber,
                                            items: ordersListItem
                                                .payment.amountTotal
                                                .toString(),
                                            status: ordersListItem.status?.name,
                                            orderId: ordersListItem.reference,
                                          ),
                                        );
                                      },
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 48.0,
                          decoration: BoxDecoration(),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            shape: BoxShape.rectangle,
                            border: Border.all(
                              color: FlutterFlowTheme.of(context).alternate,
                              width: 1.0,
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(32.0),
                            child: Container(
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'STILL NEED HELP?',
                                        style: FlutterFlowTheme.of(context)
                                            .titleLarge
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .titleLargeFamily,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w900,
                                              lineHeight: 1.2,
                                              useGoogleFonts:
                                                  !FlutterFlowTheme.of(context)
                                                      .titleLargeIsCustom,
                                            ),
                                      ),
                                      Text(
                                        'Our support team is available 24/7 to help you find your order or assist with any repair questions.',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              letterSpacing: 0.0,
                                              lineHeight: 1.5,
                                              useGoogleFonts:
                                                  !FlutterFlowTheme.of(context)
                                                      .bodyMediumIsCustom,
                                            ),
                                      ),
                                    ].divide(SizedBox(height: 4.0)),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          context.pushNamed(
                                              KContactWidget.routeName);
                                        },
                                        child: wrapWithModel(
                                          model: _model.buttonModel2,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: Button38Widget(
                                            content: 'CONTACT US',
                                            icon: Icon(
                                              Icons.chat_bubble_outlined,
                                              color: Colors.white,
                                              size: 16.0,
                                            ),
                                            iconPresent: true,
                                            iconEndPresent: false,
                                            variant: 'primary',
                                            size: 'medium',
                                            fullWidth: false,
                                            loading: false,
                                            disabled: false,
                                          ),
                                        ),
                                      ),
                                      if (false)
                                        wrapWithModel(
                                          model: _model.buttonModel3,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: Button38Widget(
                                            content: 'FAQS',
                                            icon: Icon(
                                              Icons.help_outline_rounded,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              size: 16.0,
                                            ),
                                            iconPresent: true,
                                            iconEndPresent: false,
                                            variant: 'outline',
                                            size: 'medium',
                                            fullWidth: false,
                                            loading: false,
                                            disabled: false,
                                          ),
                                        ),
                                    ].divide(SizedBox(width: 16.0)),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            shape: BoxShape.rectangle,
          ),
        ),
      ],
    );
  }
}
