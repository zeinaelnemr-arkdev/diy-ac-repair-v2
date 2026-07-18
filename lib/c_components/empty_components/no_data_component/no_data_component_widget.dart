import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'no_data_component_model.dart';
export 'no_data_component_model.dart';

class NoDataComponentWidget extends StatefulWidget {
  const NoDataComponentWidget({super.key});

  @override
  State<NoDataComponentWidget> createState() => _NoDataComponentWidgetState();
}

class _NoDataComponentWidgetState extends State<NoDataComponentWidget> {
  late NoDataComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NoDataComponentModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(
            valueOrDefault<double>(
              FFAppConstants.primaryPadding,
              0.0,
            ),
            0.0,
            valueOrDefault<double>(
              FFAppConstants.primaryPadding,
              0.0,
            ),
            0.0),
        child: AutoSizeText(
          'No data yet',
          textAlign: TextAlign.center,
          maxLines: 1,
          style: FlutterFlowTheme.of(context).bodyMedium.override(
                font: GoogleFonts.outfit(
                  fontWeight: FontWeight.bold,
                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                ),
                color: FlutterFlowTheme.of(context).primaryText,
                fontSize: 20.0,
                letterSpacing: 0.0,
                fontWeight: FontWeight.bold,
                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                lineHeight: 1.5,
              ),
        ),
      ),
    );
  }
}
