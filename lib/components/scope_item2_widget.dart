import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'scope_item2_model.dart';
export 'scope_item2_model.dart';

class ScopeItem2Widget extends StatefulWidget {
  const ScopeItem2Widget({
    super.key,
    String? num,
    String? subtitle,
    String? title,
  })  : this.num = num ?? '01',
        this.subtitle = subtitle ?? 'CONDENSER COMPONENT',
        this.title = title ?? 'THE FAN MOTOR';

  final String num;
  final String subtitle;
  final String title;

  @override
  State<ScopeItem2Widget> createState() => _ScopeItem2WidgetState();
}

class _ScopeItem2WidgetState extends State<ScopeItem2Widget> {
  late ScopeItem2Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ScopeItem2Model());

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
        shape: BoxShape.rectangle,
        border: Border.all(
          color: Colors.white,
          width: 1.0,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Container(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                valueOrDefault<String>(
                  widget.num,
                  '01',
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                      color: Color(0x99FFFFFF),
                      fontSize: 16.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.bold,
                      lineHeight: 1.5,
                      useGoogleFonts:
                          !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                    ),
              ),
              Text(
                valueOrDefault<String>(
                  widget.title,
                  'THE FAN MOTOR',
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                      color: Colors.white,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.bold,
                      lineHeight: 1.5,
                      useGoogleFonts:
                          !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                    ),
              ),
              Text(
                valueOrDefault<String>(
                  widget.subtitle,
                  'CONDENSER COMPONENT',
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      font: GoogleFonts.roboto(
                        fontWeight: FontWeight.bold,
                        fontStyle:
                            FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                      ),
                      color: Color(0xCCFFFFFF),
                      fontSize: 10.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.bold,
                      fontStyle:
                          FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                      lineHeight: 1.5,
                    ),
              ),
            ].divide(SizedBox(height: 4.0)),
          ),
        ),
      ),
    );
  }
}
