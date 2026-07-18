import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'summary_line_model.dart';
export 'summary_line_model.dart';

class SummaryLineWidget extends StatefulWidget {
  const SummaryLineWidget({
    super.key,
    String? label,
    String? value,
    bool? is_success,
    bool? is_total,
  })  : this.label = label ?? 'Subtotal',
        this.value = value ?? '\$41.25',
        this.is_success = is_success ?? false,
        this.is_total = is_total ?? false;

  final String label;
  final String value;
  final bool is_success;
  final bool is_total;

  @override
  State<SummaryLineWidget> createState() => _SummaryLineWidgetState();
}

class _SummaryLineWidgetState extends State<SummaryLineWidget> {
  late SummaryLineModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SummaryLineModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
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
                color: widget.is_total
                    ? FlutterFlowTheme.of(context).primaryText
                    : FlutterFlowTheme.of(context).secondaryText,
                fontSize: 16.0,
                letterSpacing: 0.0,
                fontWeight: FontWeight.normal,
                lineHeight: 1.5,
                useGoogleFonts:
                    !FlutterFlowTheme.of(context).bodyMediumIsCustom,
              ),
        ),
        Text(
          valueOrDefault<String>(
            widget.value,
            '\$41.25',
          ),
          style: FlutterFlowTheme.of(context).bodyMedium.override(
                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                color: widget.is_success
                    ? FlutterFlowTheme.of(context).success
                    : FlutterFlowTheme.of(context).primaryText,
                fontSize: 16.0,
                letterSpacing: 0.0,
                fontWeight: FontWeight.bold,
                lineHeight: 1.5,
                useGoogleFonts:
                    !FlutterFlowTheme.of(context).bodyMediumIsCustom,
              ),
        ),
      ],
    );
  }
}
