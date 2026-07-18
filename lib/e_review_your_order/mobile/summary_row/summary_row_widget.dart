import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'summary_row_model.dart';
export 'summary_row_model.dart';

class SummaryRowWidget extends StatefulWidget {
  const SummaryRowWidget({
    super.key,
    String? label,
    String? value,
  })  : this.label = label ?? 'Items Subtotal',
        this.value = value ?? '41.25';

  final String label;
  final String value;

  @override
  State<SummaryRowWidget> createState() => _SummaryRowWidgetState();
}

class _SummaryRowWidgetState extends State<SummaryRowWidget> {
  late SummaryRowModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SummaryRowModel());

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
            'Items Subtotal',
          ),
          style: FlutterFlowTheme.of(context).bodyMedium.override(
                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                color: FlutterFlowTheme.of(context).secondaryText,
                letterSpacing: 0.0,
                lineHeight: 1.5,
                useGoogleFonts:
                    !FlutterFlowTheme.of(context).bodyMediumIsCustom,
              ),
        ),
        Text(
          '\$${widget.value}',
          style: FlutterFlowTheme.of(context).bodyMedium.override(
                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                color: FlutterFlowTheme.of(context).primaryText,
                letterSpacing: 0.0,
                fontWeight: FontWeight.w500,
                lineHeight: 1.5,
                useGoogleFonts:
                    !FlutterFlowTheme.of(context).bodyMediumIsCustom,
              ),
        ),
      ],
    );
  }
}
