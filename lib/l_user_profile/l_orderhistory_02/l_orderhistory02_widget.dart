import '/components/order_row12_widget.dart';
import '/components/stat_card_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'l_orderhistory02_model.dart';
export 'l_orderhistory02_model.dart';

class LOrderhistory02Widget extends StatefulWidget {
  const LOrderhistory02Widget({super.key});

  @override
  State<LOrderhistory02Widget> createState() => _LOrderhistory02WidgetState();
}

class _LOrderhistory02WidgetState extends State<LOrderhistory02Widget> {
  late LOrderhistory02Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LOrderhistory02Model());

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
            padding: EdgeInsets.all(32.0),
            child: Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 32.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'ORDER HISTORY',
                          style: FlutterFlowTheme.of(context)
                              .headlineLarge
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .headlineLargeFamily,
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontSize: 40.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.bold,
                                lineHeight: 1.1,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .headlineLargeIsCustom,
                              ),
                        ),
                        Text(
                          'Review and track your previous transactions',
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
                      ].divide(SizedBox(height: 4.0)),
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 1,
                        child: wrapWithModel(
                          model: _model.statCardModel1,
                          updateCallback: () => safeSetState(() {}),
                          child: StatCardWidget(
                            label: 'TOTAL SPENT',
                            value: '\$14,290.50',
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: wrapWithModel(
                          model: _model.statCardModel2,
                          updateCallback: () => safeSetState(() {}),
                          child: StatCardWidget(
                            label: 'AVG. DELIVERY',
                            value: '2.4 DAYS',
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: wrapWithModel(
                          model: _model.statCardModel3,
                          updateCallback: () => safeSetState(() {}),
                          child: StatCardWidget(
                            label: 'TOTAL ORDERS',
                            value: '128',
                          ),
                        ),
                      ),
                    ].divide(SizedBox(width: 24.0)),
                  ),
                  Container(
                    height: 32.0,
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 16.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          flex: 3,
                          child: Text(
                            'ORDER INFO',
                            style: FlutterFlowTheme.of(context)
                                .labelSmall
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .labelSmallFamily,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                  lineHeight: 1.2,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .labelSmallIsCustom,
                                ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Text(
                            'STATUS',
                            style: FlutterFlowTheme.of(context)
                                .labelSmall
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .labelSmallFamily,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                  lineHeight: 1.2,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .labelSmallIsCustom,
                                ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Text(
                            'ITEMS',
                            style: FlutterFlowTheme.of(context)
                                .labelSmall
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .labelSmallFamily,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                  lineHeight: 1.2,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .labelSmallIsCustom,
                                ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Text(
                            'TOTAL',
                            style: FlutterFlowTheme.of(context)
                                .labelSmall
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .labelSmallFamily,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                  lineHeight: 1.2,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .labelSmallIsCustom,
                                ),
                          ),
                        ),
                        Container(
                          width: 100.0,
                        ),
                      ],
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      wrapWithModel(
                        model: _model.orderRowModel1,
                        updateCallback: () => safeSetState(() {}),
                        child: OrderRow12Widget(
                          date: 'OCT 12, 2023',
                          items: '3',
                          order_id: 'AB-9021',
                          status: 'delivered',
                          total: '450.00',
                        ),
                      ),
                      wrapWithModel(
                        model: _model.orderRowModel2,
                        updateCallback: () => safeSetState(() {}),
                        child: OrderRow12Widget(
                          date: 'OCT 08, 2023',
                          items: '1',
                          order_id: 'AB-8944',
                          status: 'delivered',
                          total: '1,200.00',
                        ),
                      ),
                      wrapWithModel(
                        model: _model.orderRowModel3,
                        updateCallback: () => safeSetState(() {}),
                        child: OrderRow12Widget(
                          date: 'SEP 29, 2023',
                          items: '2',
                          order_id: 'AB-8812',
                          status: 'cancelled',
                          total: '89.99',
                        ),
                      ),
                      wrapWithModel(
                        model: _model.orderRowModel4,
                        updateCallback: () => safeSetState(() {}),
                        child: OrderRow12Widget(
                          date: 'SEP 24, 2023',
                          items: '5',
                          order_id: 'AB-8750',
                          status: 'delivered',
                          total: '2,105.40',
                        ),
                      ),
                      wrapWithModel(
                        model: _model.orderRowModel5,
                        updateCallback: () => safeSetState(() {}),
                        child: OrderRow12Widget(
                          date: 'SEP 15, 2023',
                          items: '1',
                          order_id: 'AB-8601',
                          status: 'delivered',
                          total: '320.00',
                        ),
                      ),
                      wrapWithModel(
                        model: _model.orderRowModel6,
                        updateCallback: () => safeSetState(() {}),
                        child: OrderRow12Widget(
                          date: 'SEP 10, 2023',
                          items: '4',
                          order_id: 'AB-8544',
                          status: 'delivered',
                          total: '560.25',
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 32.0,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          border: Border.all(
                            color: FlutterFlowTheme.of(context).primaryText,
                            width: 2.0,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Container(
                            child: Container(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Icon(
                                Icons.chevron_left_rounded,
                                color: FlutterFlowTheme.of(context).primaryText,
                                size: 24.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryText,
                          shape: BoxShape.rectangle,
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              32.0, 16.0, 32.0, 16.0),
                          child: Container(
                            child: Container(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Text(
                                'PAGE 1 OF 12',
                                style: FlutterFlowTheme.of(context)
                                    .labelLarge
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .labelLargeFamily,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                      lineHeight: 1.2,
                                      useGoogleFonts:
                                          !FlutterFlowTheme.of(context)
                                              .labelLargeIsCustom,
                                    ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          border: Border.all(
                            color: FlutterFlowTheme.of(context).primaryText,
                            width: 2.0,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Container(
                            child: Container(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Icon(
                                Icons.chevron_right_rounded,
                                color: FlutterFlowTheme.of(context).primaryText,
                                size: 24.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ].divide(SizedBox(width: 16.0)),
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
