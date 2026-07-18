import '/components/order_item_widget.dart';
import '/components/stat_card2_widget.dart';
import '/components/text_field19_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'l_order_histor_mobile_model.dart';
export 'l_order_histor_mobile_model.dart';

class LOrderHistorMobileWidget extends StatefulWidget {
  const LOrderHistorMobileWidget({super.key});

  @override
  State<LOrderHistorMobileWidget> createState() =>
      _LOrderHistorMobileWidgetState();
}

class _LOrderHistorMobileWidgetState extends State<LOrderHistorMobileWidget> {
  late LOrderHistorMobileModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LOrderHistorMobileModel());

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
            padding: EdgeInsets.all(24.0),
            child: Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'ORDER HISTORY',
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
                      Text(
                        'Review and track your previous transactions',
                        style: FlutterFlowTheme.of(context).bodySmall.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodySmallFamily,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              letterSpacing: 0.0,
                              lineHeight: 1.4,
                              useGoogleFonts: !FlutterFlowTheme.of(context)
                                  .bodySmallIsCustom,
                            ),
                      ),
                    ].divide(SizedBox(height: 4.0)),
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
                          child: StatCard2Widget(
                            label: 'TOTAL ORDERS',
                            value: '128',
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: wrapWithModel(
                          model: _model.statCardModel2,
                          updateCallback: () => safeSetState(() {}),
                          child: StatCard2Widget(
                            label: 'TOTAL SPENT',
                            value: '\$14,290',
                          ),
                        ),
                      ),
                    ].divide(SizedBox(width: 16.0)),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 1,
                        child: wrapWithModel(
                          model: _model.textFieldModel,
                          updateCallback: () => safeSetState(() {}),
                          child: TextField19Widget(
                            label: false,
                            helper: false,
                            hint: 'Search order ID...',
                            value: '',
                            leading_icon: Icon(
                              Icons.search_rounded,
                            ),
                            leading_icon_present: true,
                            trailing_icon_present: false,
                            variant: 'outlined',
                            error: false,
                          ),
                        ),
                      ),
                      FlutterFlowIconButton(
                        borderColor: FlutterFlowTheme.of(context).primaryText,
                        borderRadius: 0.0,
                        borderWidth: 1.0,
                        buttonSize: 40.0,
                        fillColor: Colors.transparent,
                        icon: Icon(
                          Icons.filter_list_rounded,
                          size: 24.0,
                        ),
                        onPressed: () {
                          print('IconButton pressed ...');
                        },
                      ),
                    ].divide(SizedBox(width: 16.0)),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      wrapWithModel(
                        model: _model.orderItemModel1,
                        updateCallback: () => safeSetState(() {}),
                        child: OrderItemWidget(
                          date: 'OCT 12, 2023',
                          item_count: '3',
                          order_id: 'AB-9021',
                          status: 'delivered',
                          total: '\$450.00',
                        ),
                      ),
                      wrapWithModel(
                        model: _model.orderItemModel2,
                        updateCallback: () => safeSetState(() {}),
                        child: OrderItemWidget(
                          date: 'OCT 08, 2023',
                          item_count: '1',
                          order_id: 'AB-8944',
                          status: 'delivered',
                          total: '\$1,200.00',
                        ),
                      ),
                      wrapWithModel(
                        model: _model.orderItemModel3,
                        updateCallback: () => safeSetState(() {}),
                        child: OrderItemWidget(
                          date: 'SEP 29, 2023',
                          item_count: '2',
                          order_id: 'AB-8812',
                          status: 'cancelled',
                          total: '\$89.99',
                        ),
                      ),
                      wrapWithModel(
                        model: _model.orderItemModel4,
                        updateCallback: () => safeSetState(() {}),
                        child: OrderItemWidget(
                          date: 'SEP 24, 2023',
                          item_count: '5',
                          order_id: 'AB-8750',
                          status: 'delivered',
                          total: '\$2,105.40',
                        ),
                      ),
                      wrapWithModel(
                        model: _model.orderItemModel5,
                        updateCallback: () => safeSetState(() {}),
                        child: OrderItemWidget(
                          date: 'SEP 15, 2023',
                          item_count: '1',
                          order_id: 'AB-8601',
                          status: 'delivered',
                          total: '\$320.00',
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 24.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        FlutterFlowIconButton(
                          borderColor: FlutterFlowTheme.of(context).primaryText,
                          borderRadius: 8.0,
                          borderWidth: 1.0,
                          buttonSize: 40.0,
                          fillColor: Colors.transparent,
                          icon: Icon(
                            Icons.chevron_left_rounded,
                            size: 24.0,
                          ),
                          onPressed: () {
                            print('IconButton pressed ...');
                          },
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).primaryText,
                            shape: BoxShape.rectangle,
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 8.0, 16.0, 8.0),
                            child: Container(
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
                        FlutterFlowIconButton(
                          borderColor: FlutterFlowTheme.of(context).primaryText,
                          borderRadius: 8.0,
                          borderWidth: 1.0,
                          buttonSize: 40.0,
                          fillColor: Colors.transparent,
                          icon: Icon(
                            Icons.chevron_right_rounded,
                            size: 24.0,
                          ),
                          onPressed: () {
                            print('IconButton pressed ...');
                          },
                        ),
                      ].divide(SizedBox(width: 16.0)),
                    ),
                  ),
                ].divide(SizedBox(height: 24.0)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
