import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'summary_line3_model.dart';
export 'summary_line3_model.dart';

class SummaryLine3Widget extends StatefulWidget {
  const SummaryLine3Widget({
    super.key,
    String? label,
    String? value,
    bool? isTotal,
  })  : this.label = label ?? 'Subtotal',
        this.value = value ?? '\$438.00',
        this.isTotal = isTotal ?? false;

  final String label;
  final String value;
  final bool isTotal;

  @override
  State<SummaryLine3Widget> createState() => _SummaryLine3WidgetState();
}

class _SummaryLine3WidgetState extends State<SummaryLine3Widget> {
  late SummaryLine3Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SummaryLine3Model());

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
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 4.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            valueOrDefault<String>(
              widget.label,
              'Subtotal',
            ),
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                  color: widget.isTotal
                      ? FlutterFlowTheme.of(context).primaryText
                      : FlutterFlowTheme.of(context).secondaryText,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.bold,
                  lineHeight: 1.5,
                  useGoogleFonts:
                      !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                ),
          ),
          Text(
            valueOrDefault<String>(
              widget.value,
              '\$438.00',
            ),
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                  color: FlutterFlowTheme.of(context).primaryText,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.bold,
                  lineHeight: 1.5,
                  useGoogleFonts:
                      !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                ),
          ),
        ],
      ),
    );
  }
}
