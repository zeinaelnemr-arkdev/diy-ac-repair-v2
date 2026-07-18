import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'summary_line2_model.dart';
export 'summary_line2_model.dart';

class SummaryLine2Widget extends StatefulWidget {
  const SummaryLine2Widget({
    super.key,
    String? label,
    String? value,
    bool? isTotal,
  })  : this.label = label ?? 'SUBTOTAL',
        this.value = value ?? '\$217.40',
        this.isTotal = isTotal ?? false;

  final String label;
  final String value;
  final bool isTotal;

  @override
  State<SummaryLine2Widget> createState() => _SummaryLine2WidgetState();
}

class _SummaryLine2WidgetState extends State<SummaryLine2Widget> {
  late SummaryLine2Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SummaryLine2Model());

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
              'SUBTOTAL',
            ),
            style: FlutterFlowTheme.of(context).labelSmall.override(
                  fontFamily: FlutterFlowTheme.of(context).labelSmallFamily,
                  color: FlutterFlowTheme.of(context).secondaryText,
                  letterSpacing: 0.0,
                  lineHeight: 1.2,
                  useGoogleFonts:
                      !FlutterFlowTheme.of(context).labelSmallIsCustom,
                ),
          ),
          Text(
            valueOrDefault<String>(
              widget.value,
              '\$217.40',
            ),
            style: FlutterFlowTheme.of(context).titleMedium.override(
                  fontFamily: FlutterFlowTheme.of(context).titleMediumFamily,
                  color: FlutterFlowTheme.of(context).primaryText,
                  letterSpacing: 0.0,
                  lineHeight: 1.2,
                  useGoogleFonts:
                      !FlutterFlowTheme.of(context).titleMediumIsCustom,
                ),
          ),
        ],
      ),
    );
  }
}
