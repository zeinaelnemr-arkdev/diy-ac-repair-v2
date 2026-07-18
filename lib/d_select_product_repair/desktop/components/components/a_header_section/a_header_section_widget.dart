import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'a_header_section_model.dart';
export 'a_header_section_model.dart';

class AHeaderSectionWidget extends StatefulWidget {
  const AHeaderSectionWidget({
    super.key,
    String? partParam,
  }) : this.partParam = partParam ?? 'MOTOR';

  final String partParam;

  @override
  State<AHeaderSectionWidget> createState() => _AHeaderSectionWidgetState();
}

class _AHeaderSectionWidgetState extends State<AHeaderSectionWidget> {
  late AHeaderSectionModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AHeaderSectionModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (responsiveVisibility(
          context: context,
          phone: false,
          tablet: false,
        ))
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Home',
                style: FlutterFlowTheme.of(context).labelSmall.override(
                      fontFamily: FlutterFlowTheme.of(context).labelSmallFamily,
                      color: FlutterFlowTheme.of(context).tertiary,
                      letterSpacing: 0.0,
                      lineHeight: 1.2,
                      useGoogleFonts:
                          !FlutterFlowTheme.of(context).labelSmallIsCustom,
                    ),
              ),
              Text(
                '/',
                style: FlutterFlowTheme.of(context).labelSmall.override(
                      fontFamily: FlutterFlowTheme.of(context).labelSmallFamily,
                      color: FlutterFlowTheme.of(context).tertiary,
                      letterSpacing: 0.0,
                      lineHeight: 1.2,
                      useGoogleFonts:
                          !FlutterFlowTheme.of(context).labelSmallIsCustom,
                    ),
              ),
              Text(
                'AC Parts',
                style: FlutterFlowTheme.of(context).labelSmall.override(
                      fontFamily: FlutterFlowTheme.of(context).labelSmallFamily,
                      color: FlutterFlowTheme.of(context).tertiary,
                      letterSpacing: 0.0,
                      lineHeight: 1.2,
                      useGoogleFonts:
                          !FlutterFlowTheme.of(context).labelSmallIsCustom,
                    ),
              ),
              Text(
                '/',
                style: FlutterFlowTheme.of(context).labelSmall.override(
                      fontFamily: FlutterFlowTheme.of(context).labelSmallFamily,
                      letterSpacing: 0.0,
                      lineHeight: 1.2,
                      useGoogleFonts:
                          !FlutterFlowTheme.of(context).labelSmallIsCustom,
                    ),
              ),
              Text(
                widget.partParam,
                style: FlutterFlowTheme.of(context).labelSmall.override(
                      fontFamily: FlutterFlowTheme.of(context).labelSmallFamily,
                      letterSpacing: 0.0,
                      lineHeight: 1.2,
                      useGoogleFonts:
                          !FlutterFlowTheme.of(context).labelSmallIsCustom,
                    ),
              ),
            ].divide(SizedBox(width: 4.0)),
          ),
        RichText(
          textScaler: MediaQuery.of(context).textScaler,
          text: TextSpan(
            children: [
              TextSpan(
                text: 'SELECT ',
                style: FlutterFlowTheme.of(context).headlineLarge.override(
                      fontFamily:
                          FlutterFlowTheme.of(context).headlineLargeFamily,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w900,
                      lineHeight: 1.1,
                      useGoogleFonts:
                          !FlutterFlowTheme.of(context).headlineLargeIsCustom,
                    ),
              ),
              TextSpan(
                text: widget.partParam,
                style: TextStyle(
                  color: FlutterFlowTheme.of(context).primaryText,
                  fontSize: 64.0,
                  height: 1.1,
                ),
              )
            ],
            style: FlutterFlowTheme.of(context).headlineLarge.override(
                  fontFamily: FlutterFlowTheme.of(context).headlineLargeFamily,
                  fontSize: 50.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.w900,
                  lineHeight: 1.1,
                  useGoogleFonts:
                      !FlutterFlowTheme.of(context).headlineLargeIsCustom,
                ),
          ),
        ),
        Container(
          child: Text(
            'Choose the specific motor that fits your AC unit model. All parts are certified for DIY installation.',
            style: FlutterFlowTheme.of(context).bodyLarge.override(
                  fontFamily: FlutterFlowTheme.of(context).bodyLargeFamily,
                  color: FlutterFlowTheme.of(context).secondaryText,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.w300,
                  lineHeight: 1.6,
                  useGoogleFonts:
                      !FlutterFlowTheme.of(context).bodyLargeIsCustom,
                ),
          ),
        ),
      ].divide(SizedBox(height: 16.0)),
    );
  }
}
