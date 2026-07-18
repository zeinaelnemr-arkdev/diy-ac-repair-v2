import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 's07_service_title_model.dart';
export 's07_service_title_model.dart';

class S07ServiceTitleWidget extends StatefulWidget {
  const S07ServiceTitleWidget({super.key});

  @override
  State<S07ServiceTitleWidget> createState() => _S07ServiceTitleWidgetState();
}

class _S07ServiceTitleWidgetState extends State<S07ServiceTitleWidget> {
  late S07ServiceTitleModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => S07ServiceTitleModel());

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
      child: Container(
        width: double.infinity,
        height: MediaQuery.sizeOf(context).height * 0.15,
        constraints: BoxConstraints(
          minHeight: 120.0,
          maxHeight: 159.0,
        ),
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).primaryBackground,
          border: Border.all(
            color: FlutterFlowTheme.of(context).primary,
            width: 1.0,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.design_services_sharp,
                color: FlutterFlowTheme.of(context).primaryText,
                size: valueOrDefault<double>(
                  MediaQuery.sizeOf(context).width < kBreakpointSmall
                      ? 40.0
                      : 70.0,
                  70.0,
                ),
              ),
              Container(
                width: MediaQuery.sizeOf(context).width * 0.04,
                height: double.infinity,
                constraints: BoxConstraints(
                  minWidth: 20.0,
                  maxWidth: 34.0,
                ),
                decoration: BoxDecoration(),
              ),
              Flexible(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                  child: AutoSizeText(
                    'OUR SERVICES',
                    textAlign: TextAlign.start,
                    style: FlutterFlowTheme.of(context).displayMedium.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).displayMediumFamily,
                          fontSize: 100.0,
                          letterSpacing: MediaQuery.sizeOf(context).width <
                                  kBreakpointSmall
                              ? FFAppConstants.LetterSpacingM
                              : FFAppConstants.LetterSpacingTD,
                          fontWeight: FontWeight.normal,
                          lineHeight: 0.9,
                          useGoogleFonts: !FlutterFlowTheme.of(context)
                              .displayMediumIsCustom,
                        ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
