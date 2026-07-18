import '/components/button38_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'order_card_model.dart';
export 'order_card_model.dart';

class OrderCardWidget extends StatefulWidget {
  const OrderCardWidget({
    super.key,
    String? date,
    this.iconName,
    String? idNum,
    String? items,
    String? status,
    required this.orderId,
  })  : this.date = date ?? 'October 12, 2023',
        this.idNum = idNum ?? 'ORD-88291',
        this.items = items ?? 'Replacement Capacitor, Service Valve Set',
        this.status = status ?? 'DELIVERED';

  final String date;
  final Widget? iconName;
  final String idNum;
  final String items;
  final String status;
  final DocumentReference? orderId;

  @override
  State<OrderCardWidget> createState() => _OrderCardWidgetState();
}

class _OrderCardWidgetState extends State<OrderCardWidget> {
  late OrderCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OrderCardModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(0.0),
        shape: BoxShape.rectangle,
        border: Border.all(
          color: FlutterFlowTheme.of(context).primary,
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
              Container(
                width: 56.0,
                height: 56.0,
                decoration: BoxDecoration(
                  color: Color(0xFFF0F0F0),
                  shape: BoxShape.rectangle,
                  border: Border.all(
                    color: FlutterFlowTheme.of(context).primary,
                    width: 2.0,
                  ),
                ),
                alignment: AlignmentDirectional(0.0, 0.0),
                child: widget.iconName!,
              ),
              Expanded(
                flex: 1,
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
                          valueOrDefault<String>(
                            'ORDER #${widget.idNum}',
                            'ORDER #ORD-88291',
                          ),
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                font: GoogleFonts.archivoBlack(
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontSize: 18.0,
                                letterSpacing: 0.0,
                                fontWeight: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontStyle,
                                lineHeight: 1.5,
                              ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).primary,
                            shape: BoxShape.rectangle,
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                8.0, 4.0, 8.0, 4.0),
                            child: Container(
                              child: Text(
                                valueOrDefault<String>(
                                  widget.status,
                                  'DELIVERED',
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyMediumFamily,
                                      color: Colors.white,
                                      fontSize: 10.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                      lineHeight: 1.5,
                                      useGoogleFonts:
                                          !FlutterFlowTheme.of(context)
                                              .bodyMediumIsCustom,
                                    ),
                              ),
                            ),
                          ),
                        ),
                      ].divide(SizedBox(width: 8.0)),
                    ),
                    Text(
                      valueOrDefault<String>(
                        widget.date,
                        'October 12, 2023',
                      ),
                      style: FlutterFlowTheme.of(context).labelSmall.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).labelSmallFamily,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            fontSize: 18.0,
                            letterSpacing: 0.0,
                            lineHeight: 1.2,
                            useGoogleFonts: !FlutterFlowTheme.of(context)
                                .labelSmallIsCustom,
                          ),
                    ),
                    Text(
                      valueOrDefault<String>(
                        'Total :${widget.items}',
                        'Items: Replacement Capacitor, Service Valve Set',
                      ),
                      maxLines: 1,
                      style: FlutterFlowTheme.of(context).bodySmall.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).bodySmallFamily,
                            color: FlutterFlowTheme.of(context).primaryText,
                            letterSpacing: 0.0,
                            lineHeight: 1.5,
                            useGoogleFonts:
                                !FlutterFlowTheme.of(context).bodySmallIsCustom,
                          ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ].divide(SizedBox(height: 4.0)),
                ),
              ),
              InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  context.pushNamed(
                    HOrderTrackingWidget.routeName,
                    queryParameters: {
                      'orderId': serializeParam(
                        widget.orderId,
                        ParamType.DocumentReference,
                      ),
                    }.withoutNulls,
                  );
                },
                child: wrapWithModel(
                  model: _model.buttonModel,
                  updateCallback: () => safeSetState(() {}),
                  child: Button38Widget(
                    content: 'VIEW DETAILS',
                    iconPresent: false,
                    iconEndPresent: false,
                    variant: 'outline',
                    size: 'small',
                    fullWidth: false,
                    loading: false,
                    disabled: false,
                  ),
                ),
              ),
            ].divide(SizedBox(width: 16.0)),
          ),
        ),
      ),
    );
  }
}
