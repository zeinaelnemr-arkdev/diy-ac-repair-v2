import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'main_appbar_model.dart';
export 'main_appbar_model.dart';

class MainAppbarWidget extends StatefulWidget {
  const MainAppbarWidget({super.key});

  @override
  State<MainAppbarWidget> createState() => _MainAppbarWidgetState();
}

class _MainAppbarWidgetState extends State<MainAppbarWidget> {
  late MainAppbarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MainAppbarModel());

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
      width: double.infinity,
      decoration: BoxDecoration(),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(
            valueOrDefault<double>(
              FFAppConstants.primaryPadding,
              0.0,
            ),
            11.0,
            valueOrDefault<double>(
              FFAppConstants.primaryPadding,
              0.0,
            ),
            12.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Builder(
              builder: (context) {
                if (true) {
                  return Container(
                    width: 40.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).grey,
                      shape: BoxShape.circle,
                    ),
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Icon(
                      Icons.arrow_left,
                      color: FlutterFlowTheme.of(context).primaryText,
                      size: 20.0,
                    ),
                  );
                } else {
                  return Container(
                    width: 40.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primary,
                      shape: BoxShape.circle,
                    ),
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: FlutterFlowTheme.of(context).secondaryText,
                      size: 20.0,
                    ),
                  );
                }
              },
            ),
            Expanded(
              child: Text(
                '',
                textAlign: TextAlign.center,
                maxLines: 1,
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      font: GoogleFonts.archivoBlack(
                        fontWeight: FontWeight.bold,
                        fontStyle:
                            FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                      ),
                      color: FlutterFlowTheme.of(context).primary,
                      fontSize: 20.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.bold,
                      fontStyle:
                          FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                      lineHeight: 1.2,
                    ),
              ),
            ),
            Builder(
              builder: (context) {
                if (true) {
                  return Container(
                    width: 40.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primary,
                      shape: BoxShape.circle,
                    ),
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Icon(
                      Icons.edit_outlined,
                      color: FlutterFlowTheme.of(context).secondaryText,
                      size: 20.0,
                    ),
                  );
                } else {
                  return Container(
                    width: 40.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                  );
                }
              },
            ),
          ].divide(SizedBox(width: 8.0)),
        ),
      ),
    );
  }
}
