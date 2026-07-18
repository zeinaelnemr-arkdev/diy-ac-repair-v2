import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'b_diagnosis_text_mobile_copy_model.dart';
export 'b_diagnosis_text_mobile_copy_model.dart';

class BDiagnosisTextMobileCopyWidget extends StatefulWidget {
  const BDiagnosisTextMobileCopyWidget({super.key});

  @override
  State<BDiagnosisTextMobileCopyWidget> createState() =>
      _BDiagnosisTextMobileCopyWidgetState();
}

class _BDiagnosisTextMobileCopyWidgetState
    extends State<BDiagnosisTextMobileCopyWidget> {
  late BDiagnosisTextMobileCopyModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BDiagnosisTextMobileCopyModel());

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
      width: MediaQuery.sizeOf(context).width < kBreakpointLarge
          ? double.infinity
          : (MediaQuery.sizeOf(context).width * 0.502),
      constraints: BoxConstraints(
        maxWidth: valueOrDefault<double>(
          MediaQuery.sizeOf(context).width < kBreakpointLarge
              ? double.infinity
              : 1055.0,
          1055.0,
        ),
        maxHeight: 800.0,
      ),
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
        borderRadius: BorderRadius.only(),
        border: Border.all(
          color: FlutterFlowTheme.of(context).secondary,
          width: 1.0,
        ),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 0.0),
        child: Stack(
          alignment: AlignmentDirectional(0.0, 0.0),
          children: [
            Padding(
              padding: EdgeInsets.all(valueOrDefault<double>(
                MediaQuery.sizeOf(context).width < kBreakpointSmall
                    ? 15.0
                    : 25.0,
                50.0,
              )),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                    child: Container(
                      height: MediaQuery.sizeOf(context).height * 0.036,
                      constraints: BoxConstraints(
                        maxWidth: 900.0,
                        maxHeight: 205.0,
                      ),
                      decoration: BoxDecoration(),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 10.0, 0.0),
                            child: Container(
                              width: 50.0,
                              height: 3.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).primary,
                              ),
                            ),
                          ),
                          AutoSizeText(
                            'CALIBRATION_DATA',
                            textAlign: TextAlign.start,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyMediumFamily,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .bodyMediumIsCustom,
                                ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Wrap(
                    spacing: 0.0,
                    runSpacing: 0.0,
                    alignment: WrapAlignment.start,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    direction: Axis.horizontal,
                    runAlignment: WrapAlignment.start,
                    verticalDirection: VerticalDirection.down,
                    clipBehavior: Clip.none,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            10.0, 10.0, 0.0, 0.0),
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 0.33,
                          constraints: BoxConstraints(
                            minWidth: valueOrDefault<double>(
                              MediaQuery.sizeOf(context).width <
                                      kBreakpointLarge
                                  ? 600.0
                                  : 530.0,
                              430.0,
                            ),
                            maxHeight: 90.0,
                          ),
                          decoration: BoxDecoration(),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 0.0),
                            child: AutoSizeText(
                              'TECHNICAL PRECISION FOR THR DIY OPERATOR.',
                              style: FlutterFlowTheme.of(context)
                                  .displayLarge
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .displayLargeFamily,
                                    letterSpacing:
                                        MediaQuery.sizeOf(context).width <
                                                kBreakpointSmall
                                            ? FFAppConstants.LetterSpacingM
                                            : FFAppConstants.LetterSpacingTD,
                                    lineHeight: 0.9,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .displayLargeIsCustom,
                                  ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(10.0, 25.0, 0.0, 20.0),
                    child: Container(
                      constraints: BoxConstraints(
                        maxWidth: 900.0,
                        maxHeight: 205.0,
                      ),
                      decoration: BoxDecoration(),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          AutoSizeText(
                            '01',
                            textAlign: TextAlign.start,
                            style: FlutterFlowTheme.of(context)
                                .headlineLarge
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .headlineLargeFamily,
                                  color: FlutterFlowTheme.of(context).tertiary,
                                  fontSize: 45.0,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .headlineLargeIsCustom,
                                ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                20.0, 0.0, 0.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                AutoSizeText(
                                  'FAULT DETECTION',
                                  textAlign: TextAlign.start,
                                  style: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .titleSmallFamily,
                                        letterSpacing: 0.0,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .titleSmallIsCustom,
                                      ),
                                ),
                                AutoSizeText(
                                  'Enter symptoms to isolate failing components using our algorithmic binary tree.',
                                  textAlign: TextAlign.start,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyMediumFamily,
                                        fontSize: 16.0,
                                        letterSpacing: 0.0,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .bodyMediumIsCustom,
                                      ),
                                  overflow: TextOverflow.visible,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                    child: Container(
                      constraints: BoxConstraints(
                        maxWidth: 900.0,
                        maxHeight: 205.0,
                      ),
                      decoration: BoxDecoration(),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          AutoSizeText(
                            '02',
                            textAlign: TextAlign.start,
                            style: FlutterFlowTheme.of(context)
                                .headlineLarge
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .headlineLargeFamily,
                                  color: FlutterFlowTheme.of(context).tertiary,
                                  fontSize: 45.0,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .headlineLargeIsCustom,
                                ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                20.0, 0.0, 0.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                AutoSizeText(
                                  'LIVE TELEMETRY',
                                  textAlign: TextAlign.start,
                                  style: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .titleSmallFamily,
                                        letterSpacing: 0.0,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .titleSmallIsCustom,
                                      ),
                                ),
                                AutoSizeText(
                                  'Compare your multireadings against factory-standard resistance curves.',
                                  textAlign: TextAlign.start,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyMediumFamily,
                                        letterSpacing: 0.0,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .bodyMediumIsCustom,
                                      ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(10.0, 25.0, 0.0, 0.0),
                    child: Container(
                      constraints: BoxConstraints(
                        maxWidth: 900.0,
                        maxHeight: 205.0,
                      ),
                      decoration: BoxDecoration(),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          AutoSizeText(
                            '03',
                            textAlign: TextAlign.start,
                            style: FlutterFlowTheme.of(context)
                                .headlineLarge
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .headlineLargeFamily,
                                  color: FlutterFlowTheme.of(context).tertiary,
                                  fontSize: 45.0,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .headlineLargeIsCustom,
                                ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                20.0, 0.0, 0.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                AutoSizeText(
                                  'SAFETY PROTOCOLS',
                                  textAlign: TextAlign.start,
                                  style: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .titleSmallFamily,
                                        letterSpacing: 0.0,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .titleSmallIsCustom,
                                      ),
                                ),
                                AutoSizeText(
                                  'Mandatory high-voltage discharge guides before every physical intervention.',
                                  textAlign: TextAlign.start,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyMediumFamily,
                                        letterSpacing: 0.0,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .bodyMediumIsCustom,
                                      ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: MediaQuery.sizeOf(context).height * 0.08,
                    constraints: BoxConstraints(
                      minHeight: 50.0,
                      maxHeight: 100.0,
                    ),
                    decoration: BoxDecoration(),
                  ),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primary,
                      border: Border.all(
                        width: 2.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
