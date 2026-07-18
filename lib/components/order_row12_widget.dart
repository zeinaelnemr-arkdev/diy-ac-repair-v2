import '/components/button24_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'order_row12_model.dart';
export 'order_row12_model.dart';

class OrderRow12Widget extends StatefulWidget {
  const OrderRow12Widget({
    super.key,
    String? date,
    String? items,
    String? order_id,
    String? status,
    String? total,
  })  : this.date = date ?? 'OCT 12, 2023',
        this.items = items ?? '3',
        this.order_id = order_id ?? 'AB-9021',
        this.status = status ?? 'delivered',
        this.total = total ?? '450.00';

  final String date;
  final String items;
  final String order_id;
  final String status;
  final String total;

  @override
  State<OrderRow12Widget> createState() => _OrderRow12WidgetState();
}

class _OrderRow12WidgetState extends State<OrderRow12Widget> {
  late OrderRow12Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OrderRow12Model());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
      child: Container(
        child: Container(
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            shape: BoxShape.rectangle,
            border: Border.all(
              color: FlutterFlowTheme.of(context).primaryText,
              width: 2.0,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(24.0),
            child: Container(
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 3,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'ORDER #${widget.order_id}',
                          style: FlutterFlowTheme.of(context)
                              .titleMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .titleMediumFamily,
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontSize: 24.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.bold,
                                lineHeight: 1.4,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .titleMediumIsCustom,
                              ),
                        ),
                        Text(
                          'PLACED ON ${widget.date}',
                          style: FlutterFlowTheme.of(context)
                              .labelSmall
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .labelSmallFamily,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                fontSize: 18.0,
                                letterSpacing: 0.0,
                                lineHeight: 1.2,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .labelSmallIsCustom,
                              ),
                        ),
                      ].divide(SizedBox(height: 4.0)),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      width: 140.0,
                      decoration: BoxDecoration(
                        color: widget.status == 'delivered'
                            ? Color(0xFF91BF91)
                            : Color(0xFFFD9090),
                        shape: BoxShape.rectangle,
                        border: Border.all(
                          color: FlutterFlowTheme.of(context).primaryText,
                          width: 1.0,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 8.0, 16.0, 8.0),
                        child: Container(
                          child: Container(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Text(
                              valueOrDefault<String>(
                                widget.status,
                                'Delivered',
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .labelLarge
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .labelLargeFamily,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
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
                  ),
                  Expanded(
                    flex: 2,
                    child: Text(
                      '${widget.items} ITEMS',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).bodyMediumFamily,
                            color: FlutterFlowTheme.of(context).primaryText,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.bold,
                            lineHeight: 1.5,
                            useGoogleFonts: !FlutterFlowTheme.of(context)
                                .bodyMediumIsCustom,
                          ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Text(
                      '\$${widget.total}',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).titleMedium.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).titleMediumFamily,
                            color: FlutterFlowTheme.of(context).primaryText,
                            fontSize: 24.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.bold,
                            lineHeight: 1.4,
                            useGoogleFonts: !FlutterFlowTheme.of(context)
                                .titleMediumIsCustom,
                          ),
                    ),
                  ),
                  wrapWithModel(
                    model: _model.buttonModel,
                    updateCallback: () => safeSetState(() {}),
                    child: Button24Widget(
                      content: 'DETAILS',
                      icon_present: false,
                      icon_end_present: false,
                      variant: 'outline',
                      size: 'small',
                      full_width: false,
                      loading: false,
                      disabled: false,
                    ),
                  ),
                ].divide(SizedBox(width: 24.0)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
