import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 's06_core_features_model.dart';
export 's06_core_features_model.dart';

class S06CoreFeaturesWidget extends StatefulWidget {
  const S06CoreFeaturesWidget({super.key});

  @override
  State<S06CoreFeaturesWidget> createState() => _S06CoreFeaturesWidgetState();
}

class _S06CoreFeaturesWidgetState extends State<S06CoreFeaturesWidget> {
  late S06CoreFeaturesModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => S06CoreFeaturesModel());

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
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
        border: Border.all(
          color: FlutterFlowTheme.of(context).primaryText,
          width: 1.0,
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: () {
                if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                  return MediaQuery.sizeOf(context).width;
                } else if (MediaQuery.sizeOf(context).width <
                    kBreakpointLarge) {
                  return MediaQuery.sizeOf(context).width;
                } else {
                  return (MediaQuery.sizeOf(context).width * 0.75);
                }
              }(),
              constraints: BoxConstraints(
                maxWidth: 1500.0,
              ),
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).primaryBackground,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Wrap(
                    spacing: 0.0,
                    runSpacing: 0.0,
                    alignment: WrapAlignment.start,
                    crossAxisAlignment: WrapCrossAlignment.start,
                    direction: Axis.horizontal,
                    runAlignment: WrapAlignment.start,
                    verticalDirection: VerticalDirection.down,
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        width: () {
                          if (MediaQuery.sizeOf(context).width <
                              kBreakpointSmall) {
                            return double.infinity;
                          } else if (MediaQuery.sizeOf(context).width <
                              kBreakpointLarge) {
                            return (MediaQuery.sizeOf(context).width * 0.27);
                          } else {
                            return (MediaQuery.sizeOf(context).width * 0.18);
                          }
                        }(),
                        height:
                            MediaQuery.sizeOf(context).width < kBreakpointLarge
                                ? 115.0
                                : 150.0,
                        constraints: BoxConstraints(
                          maxWidth: MediaQuery.sizeOf(context).width <
                                  kBreakpointSmall
                              ? double.infinity
                              : 345.0,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: FlutterFlowTheme.of(context).primary,
                            width: 1.0,
                          ),
                        ),
                        child: Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: EdgeInsets.all(10.0),
                            child: AutoSizeText(
                              'WHY',
                              minFontSize: 50.0,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.archivoBlack(
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    fontSize: 100.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: () {
                          if (MediaQuery.sizeOf(context).width <
                              kBreakpointSmall) {
                            return double.infinity;
                          } else if (MediaQuery.sizeOf(context).width <
                              kBreakpointMedium) {
                            return (MediaQuery.sizeOf(context).width * 0.367);
                          } else if (MediaQuery.sizeOf(context).width <
                              kBreakpointLarge) {
                            return (MediaQuery.sizeOf(context).width * 0.368);
                          } else {
                            return (MediaQuery.sizeOf(context).width * 0.30);
                          }
                        }(),
                        height:
                            MediaQuery.sizeOf(context).width < kBreakpointLarge
                                ? 115.0
                                : 150.0,
                        constraints: BoxConstraints(
                          maxWidth: 578.0,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: FlutterFlowTheme.of(context).primary,
                            width: 1.0,
                          ),
                        ),
                        child: Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: EdgeInsets.all(10.0),
                            child: AutoSizeText(
                              'CHOOSE',
                              textAlign: TextAlign.start,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.archivoBlack(
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    fontSize: 100.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: () {
                          if (MediaQuery.sizeOf(context).width <
                              kBreakpointSmall) {
                            return MediaQuery.sizeOf(context).width;
                          } else if (MediaQuery.sizeOf(context).width <
                              kBreakpointLarge) {
                            return (MediaQuery.sizeOf(context).width * 0.32);
                          } else {
                            return (MediaQuery.sizeOf(context).width * 0.2697);
                          }
                        }(),
                        height:
                            MediaQuery.sizeOf(context).width < kBreakpointLarge
                                ? 115.0
                                : 150.0,
                        constraints: BoxConstraints(
                          maxWidth: 577.0,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: FlutterFlowTheme.of(context).primary,
                            width: 1.0,
                          ),
                        ),
                        child: Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: EdgeInsets.all(10.0),
                            child: AutoSizeText(
                              'US?',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.archivoBlack(
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    fontSize: 100.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.sizeOf(context).width < kBreakpointLarge
                  ? MediaQuery.sizeOf(context).width
                  : (MediaQuery.sizeOf(context).width * 0.75),
              constraints: BoxConstraints(
                maxWidth: 1500.0,
              ),
              decoration: BoxDecoration(
                border: Border.all(
                  color: FlutterFlowTheme.of(context).primary,
                  width: 1.0,
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    height: valueOrDefault<double>(
                      MediaQuery.sizeOf(context).width < kBreakpointLarge
                          ? 25.0
                          : 50.0,
                      50.0,
                    ),
                    decoration: BoxDecoration(),
                  ),
                  Divider(
                    height: 1.0,
                    thickness: 1.0,
                    color: FlutterFlowTheme.of(context).primary,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryBackground,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0.0, -1.0),
                          child: Container(
                            width: MediaQuery.sizeOf(context).width <
                                    kBreakpointLarge
                                ? MediaQuery.sizeOf(context).width
                                : (MediaQuery.sizeOf(context).width * 0.6),
                            constraints: BoxConstraints(
                              maxWidth: 1200.0,
                            ),
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).primary,
                            ),
                            child: Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    40.0, 15.0, 40.0, 15.0),
                                child: Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(),
                                  child: Text(
                                    'Choosing our platform means fixing your AC with confidence. Here are some of the key benefits you’ll experience when using our solution.',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .labelSmall
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .labelSmallFamily,
                                          color: FlutterFlowTheme.of(context)
                                              .secondary,
                                          letterSpacing: 0.0,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .labelSmallIsCustom,
                                        ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.0, -1.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                valueOrDefault<double>(
                                  MediaQuery.sizeOf(context).width <
                                          kBreakpointSmall
                                      ? 20.0
                                      : 0.0,
                                  0.0,
                                ),
                                0.0,
                                valueOrDefault<double>(
                                  MediaQuery.sizeOf(context).width <
                                          kBreakpointSmall
                                      ? 20.0
                                      : 0.0,
                                  0.0,
                                ),
                                0.0),
                            child: Container(
                              width: MediaQuery.sizeOf(context).width <
                                      kBreakpointLarge
                                  ? MediaQuery.sizeOf(context).width
                                  : (MediaQuery.sizeOf(context).width * 0.6),
                              constraints: BoxConstraints(
                                maxWidth: 1200.0,
                              ),
                              decoration: BoxDecoration(),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    valueOrDefault<double>(
                                      () {
                                        if (MediaQuery.sizeOf(context).width <
                                            kBreakpointSmall) {
                                          return 0.0;
                                        } else if (MediaQuery.sizeOf(context)
                                                .width <
                                            kBreakpointLarge) {
                                          return 40.0;
                                        } else {
                                          return 0.0;
                                        }
                                      }(),
                                      0.0,
                                    ),
                                    0.0,
                                    0.0,
                                    0.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Wrap(
                                      spacing: 0.0,
                                      runSpacing: 0.0,
                                      alignment: WrapAlignment.start,
                                      crossAxisAlignment:
                                          WrapCrossAlignment.center,
                                      direction: Axis.horizontal,
                                      runAlignment: WrapAlignment.start,
                                      verticalDirection: VerticalDirection.down,
                                      clipBehavior: Clip.none,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 30.0, 0.0),
                                          child: Icon(
                                            Icons.check,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            size: 70.0,
                                          ),
                                        ),
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.52,
                                              constraints: BoxConstraints(
                                                minWidth: 300.0,
                                                maxWidth: 1040.0,
                                                maxHeight: 130.0,
                                              ),
                                              decoration: BoxDecoration(),
                                              child: AutoSizeText(
                                                'GUIDED \nREPAIR',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineLarge
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .headlineLargeFamily,
                                                          letterSpacing: MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .width <
                                                                  kBreakpointSmall
                                                              ? FFAppConstants
                                                                  .LetterSpacingM
                                                              : FFAppConstants
                                                                  .LetterSpacingTD,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          lineHeight: 1.0,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .headlineLargeIsCustom,
                                                        ),
                                              ),
                                            ),
                                            Container(
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.52,
                                              height: MediaQuery.sizeOf(context)
                                                      .height *
                                                  0.06,
                                              constraints: BoxConstraints(
                                                minWidth: 300.0,
                                                maxWidth: 1040.0,
                                                maxHeight: 65.0,
                                              ),
                                              decoration: BoxDecoration(),
                                              child: AutoSizeText(
                                                'Follow simple steps and instructions that help you identify issues and fix your AC with confidence.',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .labelSmall
                                                    .override(
                                                      fontFamily:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelSmallFamily,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      letterSpacing: 0.0,
                                                      useGoogleFonts:
                                                          !FlutterFlowTheme.of(
                                                                  context)
                                                              .labelSmallIsCustom,
                                                    ),
                                              ),
                                            ),
                                          ].divide(SizedBox(height: 20.0)),
                                        ),
                                      ],
                                    ),
                                    Wrap(
                                      spacing: 0.0,
                                      runSpacing: 0.0,
                                      alignment: WrapAlignment.start,
                                      crossAxisAlignment:
                                          WrapCrossAlignment.center,
                                      direction: Axis.horizontal,
                                      runAlignment: WrapAlignment.start,
                                      verticalDirection: VerticalDirection.down,
                                      clipBehavior: Clip.none,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 30.0, 0.0),
                                          child: Icon(
                                            Icons.check,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            size: 70.0,
                                          ),
                                        ),
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.52,
                                              constraints: BoxConstraints(
                                                minWidth: 300.0,
                                                maxWidth: 1040.0,
                                                maxHeight: 130.0,
                                              ),
                                              decoration: BoxDecoration(),
                                              child: AutoSizeText(
                                                'ACCURATE MATCHING',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineLarge
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .headlineLargeFamily,
                                                          letterSpacing: MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .width <
                                                                  kBreakpointSmall
                                                              ? FFAppConstants
                                                                  .LetterSpacingM
                                                              : FFAppConstants
                                                                  .LetterSpacingTD,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          lineHeight: 1.0,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .headlineLargeIsCustom,
                                                        ),
                                              ),
                                            ),
                                            Container(
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.52,
                                              height: MediaQuery.sizeOf(context)
                                                      .height *
                                                  0.06,
                                              constraints: BoxConstraints(
                                                minWidth: 300.0,
                                                maxWidth: 1040.0,
                                                maxHeight: 65.0,
                                              ),
                                              decoration: BoxDecoration(),
                                              child: AutoSizeText(
                                                'Get the right parts based on your AC model and specific issue without confusion or guesswork.',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .labelSmall
                                                    .override(
                                                      fontFamily:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelSmallFamily,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      letterSpacing: 0.0,
                                                      useGoogleFonts:
                                                          !FlutterFlowTheme.of(
                                                                  context)
                                                              .labelSmallIsCustom,
                                                    ),
                                              ),
                                            ),
                                          ].divide(SizedBox(height: 20.0)),
                                        ),
                                      ],
                                    ),
                                    Wrap(
                                      spacing: 0.0,
                                      runSpacing: 0.0,
                                      alignment: WrapAlignment.start,
                                      crossAxisAlignment:
                                          WrapCrossAlignment.center,
                                      direction: Axis.horizontal,
                                      runAlignment: WrapAlignment.start,
                                      verticalDirection: VerticalDirection.down,
                                      clipBehavior: Clip.none,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 30.0, 0.0),
                                          child: Icon(
                                            Icons.check,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            size: 70.0,
                                          ),
                                        ),
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.52,
                                              constraints: BoxConstraints(
                                                minWidth: 300.0,
                                                maxWidth: 1040.0,
                                                maxHeight: 130.0,
                                              ),
                                              decoration: BoxDecoration(),
                                              child: AutoSizeText(
                                                'SMART\nSYSTEM',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineLarge
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .headlineLargeFamily,
                                                          letterSpacing: MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .width <
                                                                  kBreakpointSmall
                                                              ? FFAppConstants
                                                                  .LetterSpacingM
                                                              : FFAppConstants
                                                                  .LetterSpacingTD,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          lineHeight: 1.0,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .headlineLargeIsCustom,
                                                        ),
                                              ),
                                            ),
                                            Container(
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.52,
                                              height: MediaQuery.sizeOf(context)
                                                      .height *
                                                  0.06,
                                              constraints: BoxConstraints(
                                                minWidth: 300.0,
                                                maxWidth: 1040.0,
                                                maxHeight: 65.0,
                                              ),
                                              decoration: BoxDecoration(),
                                              child: AutoSizeText(
                                                'Use a guided system designed to simplify troubleshooting and help you solve AC problems faster.',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .labelSmall
                                                    .override(
                                                      fontFamily:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelSmallFamily,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      letterSpacing: 0.0,
                                                      useGoogleFonts:
                                                          !FlutterFlowTheme.of(
                                                                  context)
                                                              .labelSmallIsCustom,
                                                    ),
                                              ),
                                            ),
                                          ].divide(SizedBox(height: 20.0)),
                                        ),
                                      ],
                                    ),
                                    Wrap(
                                      spacing: 0.0,
                                      runSpacing: 0.0,
                                      alignment: WrapAlignment.start,
                                      crossAxisAlignment:
                                          WrapCrossAlignment.center,
                                      direction: Axis.horizontal,
                                      runAlignment: WrapAlignment.start,
                                      verticalDirection: VerticalDirection.down,
                                      clipBehavior: Clip.none,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 30.0, 0.0),
                                          child: Icon(
                                            Icons.check,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            size: 70.0,
                                          ),
                                        ),
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.52,
                                              constraints: BoxConstraints(
                                                minWidth: 300.0,
                                                maxWidth: 1040.0,
                                                maxHeight: 130.0,
                                              ),
                                              decoration: BoxDecoration(),
                                              child: AutoSizeText(
                                                'USER-FRIENDLY DESIGN',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineLarge
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .headlineLargeFamily,
                                                          letterSpacing: MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .width <
                                                                  kBreakpointSmall
                                                              ? FFAppConstants
                                                                  .LetterSpacingM
                                                              : FFAppConstants
                                                                  .LetterSpacingTD,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          lineHeight: 1.0,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .headlineLargeIsCustom,
                                                        ),
                                              ),
                                            ),
                                            Container(
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.52,
                                              height: MediaQuery.sizeOf(context)
                                                      .height *
                                                  0.06,
                                              constraints: BoxConstraints(
                                                minWidth: 300.0,
                                                maxWidth: 1040.0,
                                                maxHeight: 65.0,
                                              ),
                                              decoration: BoxDecoration(),
                                              child: AutoSizeText(
                                                'Designed with simplicity in mind, making it easy for anyone to complete repairs without difficulty.',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .labelSmall
                                                    .override(
                                                      fontFamily:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelSmallFamily,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      letterSpacing: 0.0,
                                                      useGoogleFonts:
                                                          !FlutterFlowTheme.of(
                                                                  context)
                                                              .labelSmallIsCustom,
                                                    ),
                                              ),
                                            ),
                                          ].divide(SizedBox(height: 20.0)),
                                        ),
                                      ],
                                    ),
                                    Wrap(
                                      spacing: 0.0,
                                      runSpacing: 0.0,
                                      alignment: WrapAlignment.start,
                                      crossAxisAlignment:
                                          WrapCrossAlignment.center,
                                      direction: Axis.horizontal,
                                      runAlignment: WrapAlignment.start,
                                      verticalDirection: VerticalDirection.down,
                                      clipBehavior: Clip.none,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 30.0, 0.0),
                                          child: Icon(
                                            Icons.check,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            size: 70.0,
                                          ),
                                        ),
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.52,
                                              constraints: BoxConstraints(
                                                minWidth: 300.0,
                                                maxWidth: 1040.0,
                                                maxHeight: 130.0,
                                              ),
                                              decoration: BoxDecoration(),
                                              child: AutoSizeText(
                                                'PROVEN \nRESULTS',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineLarge
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .headlineLargeFamily,
                                                          letterSpacing: MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .width <
                                                                  kBreakpointSmall
                                                              ? FFAppConstants
                                                                  .LetterSpacingM
                                                              : FFAppConstants
                                                                  .LetterSpacingTD,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          lineHeight: 1.0,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .headlineLargeIsCustom,
                                                        ),
                                              ),
                                            ),
                                            Container(
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.52,
                                              height: MediaQuery.sizeOf(context)
                                                      .height *
                                                  0.06,
                                              constraints: BoxConstraints(
                                                minWidth: 300.0,
                                                maxWidth: 1040.0,
                                                maxHeight: 65.0,
                                              ),
                                              decoration: BoxDecoration(),
                                              child: AutoSizeText(
                                                'Trusted by many users who have successfully repaired their AC using our platform and guidance.',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .labelSmall
                                                    .override(
                                                      fontFamily:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelSmallFamily,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      letterSpacing: 0.0,
                                                      useGoogleFonts:
                                                          !FlutterFlowTheme.of(
                                                                  context)
                                                              .labelSmallIsCustom,
                                                    ),
                                              ),
                                            ),
                                          ].divide(SizedBox(height: 20.0)),
                                        ),
                                      ],
                                    ),
                                    Wrap(
                                      spacing: 0.0,
                                      runSpacing: 0.0,
                                      alignment: WrapAlignment.start,
                                      crossAxisAlignment:
                                          WrapCrossAlignment.center,
                                      direction: Axis.horizontal,
                                      runAlignment: WrapAlignment.start,
                                      verticalDirection: VerticalDirection.down,
                                      clipBehavior: Clip.none,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 30.0, 0.0),
                                          child: Icon(
                                            Icons.check,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            size: 70.0,
                                          ),
                                        ),
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.52,
                                              constraints: BoxConstraints(
                                                minWidth: 300.0,
                                                maxWidth: 1040.0,
                                                maxHeight: 130.0,
                                              ),
                                              decoration: BoxDecoration(),
                                              child: AutoSizeText(
                                                'COMPLETE SUPPORT',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineLarge
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .headlineLargeFamily,
                                                          letterSpacing: MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .width <
                                                                  kBreakpointSmall
                                                              ? FFAppConstants
                                                                  .LetterSpacingM
                                                              : FFAppConstants
                                                                  .LetterSpacingTD,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          lineHeight: 1.0,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .headlineLargeIsCustom,
                                                        ),
                                              ),
                                            ),
                                            Container(
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.52,
                                              height: MediaQuery.sizeOf(context)
                                                      .height *
                                                  0.06,
                                              constraints: BoxConstraints(
                                                minWidth: 300.0,
                                                maxWidth: 1040.0,
                                                maxHeight: 65.0,
                                              ),
                                              decoration: BoxDecoration(),
                                              child: AutoSizeText(
                                                'Receive ongoing support and helpful guidance throughout your repair process for smooth and successful results.',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .labelSmall
                                                    .override(
                                                      fontFamily:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelSmallFamily,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      letterSpacing: 0.0,
                                                      useGoogleFonts:
                                                          !FlutterFlowTheme.of(
                                                                  context)
                                                              .labelSmallIsCustom,
                                                    ),
                                              ),
                                            ),
                                          ].divide(SizedBox(height: 20.0)),
                                        ),
                                      ],
                                    ),
                                  ].divide(SizedBox(height: 50.0)),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ]
                          .divide(SizedBox(height: 50.0))
                          .around(SizedBox(height: 50.0)),
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
