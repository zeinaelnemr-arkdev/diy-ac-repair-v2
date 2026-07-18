import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'no_search_component_model.dart';
export 'no_search_component_model.dart';

class NoSearchComponentWidget extends StatefulWidget {
  const NoSearchComponentWidget({super.key});

  @override
  State<NoSearchComponentWidget> createState() =>
      _NoSearchComponentWidgetState();
}

class _NoSearchComponentWidgetState extends State<NoSearchComponentWidget> {
  late NoSearchComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NoSearchComponentModel());

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
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/No_Search_Yet_L.gif',
              width: 100.0,
              height: 100.0,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 8.0),
              child: AutoSizeText(
                'No results found',
                textAlign: TextAlign.center,
                maxLines: 1,
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      font: GoogleFonts.outfit(
                        fontWeight: FontWeight.bold,
                        fontStyle:
                            FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                      ),
                      fontSize: 20.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.bold,
                      fontStyle:
                          FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                      lineHeight: 1.5,
                    ),
              ),
            ),
            AutoSizeText(
              'Sorry, the keyword you entered cannot be found, please check again or search with another keyword.',
              textAlign: TextAlign.center,
              maxLines: 3,
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    font: GoogleFonts.outfit(
                      fontWeight: FontWeight.normal,
                      fontStyle:
                          FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                    ),
                    color: FlutterFlowTheme.of(context).primaryText,
                    fontSize: 17.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.normal,
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                    lineHeight: 1.41,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
