import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'industrial_badge_model.dart';
export 'industrial_badge_model.dart';

class IndustrialBadgeWidget extends StatefulWidget {
  const IndustrialBadgeWidget({
    super.key,
    String? label,
  }) : this.label = label ?? 'SYSTEM_MANIFESTO_V1.0';

  final String label;

  @override
  State<IndustrialBadgeWidget> createState() => _IndustrialBadgeWidgetState();
}

class _IndustrialBadgeWidgetState extends State<IndustrialBadgeWidget> {
  late IndustrialBadgeModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => IndustrialBadgeModel());

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
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
      child: Container(
        child: Container(
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).primaryText,
            shape: BoxShape.rectangle,
          ),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(8.0, 4.0, 8.0, 4.0),
            child: Container(
              child: Text(
                valueOrDefault<String>(
                  widget.label,
                  'SYSTEM_MANIFESTO_V1.0',
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      font: GoogleFonts.roboto(
                        fontWeight: FontWeight.bold,
                        fontStyle:
                            FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                      ),
                      color: FlutterFlowTheme.of(context).primaryBackground,
                      fontSize: 10.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.bold,
                      fontStyle:
                          FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                      lineHeight: 1.5,
                    ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
