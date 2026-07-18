import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'technical_tag_model.dart';
export 'technical_tag_model.dart';

class TechnicalTagWidget extends StatefulWidget {
  const TechnicalTagWidget({
    super.key,
    String? label,
  }) : this.label = label ?? 'DIAGNOSE_FAST.01';

  final String label;

  @override
  State<TechnicalTagWidget> createState() => _TechnicalTagWidgetState();
}

class _TechnicalTagWidgetState extends State<TechnicalTagWidget> {
  late TechnicalTagModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TechnicalTagModel());

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
        color: FlutterFlowTheme.of(context).primaryText,
        borderRadius: BorderRadius.circular(0.0),
        shape: BoxShape.rectangle,
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(8.0, 4.0, 8.0, 4.0),
        child: Container(
          child: Text(
            valueOrDefault<String>(
              widget.label,
              'DIAGNOSE_FAST.01',
            ),
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  font: GoogleFonts.roboto(
                    fontWeight: FontWeight.w900,
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
                  color: FlutterFlowTheme.of(context).primaryBackground,
                  fontSize: 10.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.w900,
                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  lineHeight: 1.5,
                ),
          ),
        ),
      ),
    );
  }
}
