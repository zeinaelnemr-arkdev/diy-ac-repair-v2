import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'part_row_copy_model.dart';
export 'part_row_copy_model.dart';

class PartRowCopyWidget extends StatefulWidget {
  const PartRowCopyWidget({
    super.key,
    String? img_desc,
    String? model,
    String? price,
    String? qty,
    String? title,
  })  : this.img_desc = img_desc ??
            'https://dimg.dreamflow.cloud/v1/image/ac%20capacitor%20silver%20cylinder',
        this.model = model ?? '35/5 MFD 370V | Model: CAP-355',
        this.price = price ?? '\$22.50',
        this.qty = qty ?? '1',
        this.title = title ?? 'Replacement Capacitor';

  final String img_desc;
  final String model;
  final String price;
  final String qty;
  final String title;

  @override
  State<PartRowCopyWidget> createState() => _PartRowCopyWidgetState();
}

class _PartRowCopyWidgetState extends State<PartRowCopyWidget> {
  late PartRowCopyModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PartRowCopyModel());

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
        color: FlutterFlowTheme.of(context).grey,
        shape: BoxShape.rectangle,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 16.0),
            child: Container(
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 48.0, 0.0),
                child: Row(
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
                            'Part Details',
                            style: FlutterFlowTheme.of(context)
                                .bodyLarge
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyLargeFamily,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                  lineHeight: 1.6,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .bodyLargeIsCustom,
                                ),
                          ),
                        ].divide(SizedBox(height: 4.0)),
                      ),
                    ),
                    Container(
                      width: 80.0,
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Text(
                        'Qty',
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
                    Container(
                      width: 100.0,
                      alignment: AlignmentDirectional(1.0, -1.0),
                      child: Text(
                        'Price',
                        style: FlutterFlowTheme.of(context).bodyLarge.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyLargeFamily,
                              color: FlutterFlowTheme.of(context).primaryText,
                              fontSize: 18.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.bold,
                              lineHeight: 1.6,
                              useGoogleFonts: !FlutterFlowTheme.of(context)
                                  .bodyLargeIsCustom,
                            ),
                      ),
                    ),
                    Container(
                      width: 100.0,
                      decoration: BoxDecoration(),
                      alignment: AlignmentDirectional(1.0, -1.0),
                      child: Text(
                        'Actions',
                        style: FlutterFlowTheme.of(context).bodyLarge.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyLargeFamily,
                              color: FlutterFlowTheme.of(context).primaryText,
                              fontSize: 18.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.bold,
                              lineHeight: 1.6,
                              useGoogleFonts: !FlutterFlowTheme.of(context)
                                  .bodyLargeIsCustom,
                            ),
                      ),
                    ),
                  ].divide(SizedBox(width: 16.0)),
                ),
              ),
            ),
          ),
          Container(
            height: 1.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).tertiary,
              shape: BoxShape.rectangle,
            ),
          ),
        ],
      ),
    );
  }
}
