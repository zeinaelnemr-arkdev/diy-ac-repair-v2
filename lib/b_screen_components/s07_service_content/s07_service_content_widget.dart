import '/b_screen_components/asterisk/asterisk_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 's07_service_content_model.dart';
export 's07_service_content_model.dart';

class S07ServiceContentWidget extends StatefulWidget {
  const S07ServiceContentWidget({super.key});

  @override
  State<S07ServiceContentWidget> createState() =>
      _S07ServiceContentWidgetState();
}

class _S07ServiceContentWidgetState extends State<S07ServiceContentWidget>
    with TickerProviderStateMixin {
  late S07ServiceContentModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => S07ServiceContentModel());

    animationsMap.addAll({
      'iconOnPageLoadAnimation1': AnimationInfo(
        loop: true,
        trigger: AnimationTrigger.onPageLoad,
        applyInitialState: true,
        effectsBuilder: () => [
          RotateEffect(
            curve: Curves.linear,
            delay: 0.0.ms,
            duration: 12500.0.ms,
            begin: 1.0,
            end: 0.0,
          ),
        ],
      ),
      'iconOnActionTriggerAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.elasticOut,
            delay: 0.0.ms,
            duration: 500.0.ms,
            begin: Offset(1.0, 1.0),
            end: Offset(1.05, 1.05),
          ),
        ],
      ),
      'iconOnPageLoadAnimation2': AnimationInfo(
        loop: true,
        trigger: AnimationTrigger.onPageLoad,
        applyInitialState: true,
        effectsBuilder: () => [
          RotateEffect(
            curve: Curves.linear,
            delay: 0.0.ms,
            duration: 12500.0.ms,
            begin: 1.0,
            end: 0.0,
          ),
        ],
      ),
      'iconOnActionTriggerAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.elasticOut,
            delay: 0.0.ms,
            duration: 500.0.ms,
            begin: Offset(1.0, 1.0),
            end: Offset(1.05, 1.05),
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

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
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).primary,
        ),
        child: SingleChildScrollView(
          primary: false,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: double.infinity,
                child: Stack(
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0,
                            valueOrDefault<double>(
                              MediaQuery.sizeOf(context).width <
                                      kBreakpointSmall
                                  ? 25.0
                                  : 50.0,
                              50.0,
                            ),
                            0.0,
                            valueOrDefault<double>(
                              MediaQuery.sizeOf(context).width <
                                      kBreakpointSmall
                                  ? 25.0
                                  : 50.0,
                              50.0,
                            )),
                        child: Container(
                          width: () {
                            if (MediaQuery.sizeOf(context).width <
                                kBreakpointSmall) {
                              return MediaQuery.sizeOf(context).width;
                            } else if (MediaQuery.sizeOf(context).width <
                                kBreakpointLarge) {
                              return MediaQuery.sizeOf(context).width;
                            } else {
                              return (MediaQuery.sizeOf(context).width * 0.594);
                            }
                          }(),
                          constraints: BoxConstraints(
                            maxWidth: 1188.0,
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: FlutterFlowTheme.of(context).tertiary,
                              width: 1.0,
                            ),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Align(
                                alignment: AlignmentDirectional(1.0, 0.0),
                                child: Wrap(
                                  spacing: 0.0,
                                  runSpacing: 0.0,
                                  alignment: WrapAlignment.end,
                                  crossAxisAlignment: WrapCrossAlignment.center,
                                  direction: Axis.horizontal,
                                  runAlignment: WrapAlignment.start,
                                  verticalDirection: VerticalDirection.down,
                                  clipBehavior: Clip.none,
                                  children: [
                                    Container(
                                      constraints: BoxConstraints(
                                        maxWidth: valueOrDefault<double>(
                                          MediaQuery.sizeOf(context).width <
                                                  kBreakpointLarge
                                              ? double.infinity
                                              : 480.0,
                                          480.0,
                                        ),
                                        maxHeight: 400.0,
                                      ),
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        shape: BoxShape.rectangle,
                                      ),
                                      child: Container(
                                        width: () {
                                          if (MediaQuery.sizeOf(context).width <
                                              kBreakpointSmall) {
                                            return double.infinity;
                                          } else if (MediaQuery.sizeOf(context)
                                                  .width <
                                              kBreakpointMedium) {
                                            return (MediaQuery.sizeOf(context)
                                                    .width *
                                                0.45);
                                          } else if (MediaQuery.sizeOf(context)
                                                  .width <
                                              kBreakpointLarge) {
                                            return (MediaQuery.sizeOf(context)
                                                    .width *
                                                0.46);
                                          } else {
                                            return (MediaQuery.sizeOf(context)
                                                    .width *
                                                0.24);
                                          }
                                        }(),
                                        height: () {
                                          if (MediaQuery.sizeOf(context).width <
                                              kBreakpointSmall) {
                                            return double.infinity;
                                          } else if (MediaQuery.sizeOf(context)
                                                  .width <
                                              kBreakpointMedium) {
                                            return (MediaQuery.sizeOf(context)
                                                    .width *
                                                0.45);
                                          } else if (MediaQuery.sizeOf(context)
                                                  .width <
                                              kBreakpointLarge) {
                                            return (MediaQuery.sizeOf(context)
                                                    .width *
                                                0.46);
                                          } else {
                                            return (MediaQuery.sizeOf(context)
                                                    .width *
                                                0.24);
                                          }
                                        }(),
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                        ),
                                        child: Align(
                                          alignment:
                                              AlignmentDirectional(0.0, 0.0),
                                          child: Text(
                                            '01',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  font: GoogleFonts.prompt(
                                                    fontWeight: FontWeight.bold,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontStyle,
                                                  ),
                                                  fontSize: 100.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.bold,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
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
                                        } else if (MediaQuery.sizeOf(context)
                                                .width <
                                            kBreakpointMedium) {
                                          return (MediaQuery.sizeOf(context)
                                                  .width *
                                              0.47713);
                                        } else if (MediaQuery.sizeOf(context)
                                                .width <
                                            kBreakpointLarge) {
                                          return (MediaQuery.sizeOf(context)
                                                  .width *
                                              0.478);
                                        } else {
                                          return (MediaQuery.sizeOf(context)
                                                  .width *
                                              0.296);
                                        }
                                      }(),
                                      height: () {
                                        if (MediaQuery.sizeOf(context).width <
                                            kBreakpointSmall) {
                                          return 170.0;
                                        } else if (MediaQuery.sizeOf(context)
                                                .width <
                                            kBreakpointMedium) {
                                          return (MediaQuery.sizeOf(context)
                                                  .width *
                                              0.45);
                                        } else if (MediaQuery.sizeOf(context)
                                                .width <
                                            kBreakpointLarge) {
                                          return (MediaQuery.sizeOf(context)
                                                  .width *
                                              0.46);
                                        } else {
                                          return (MediaQuery.sizeOf(context)
                                                  .width *
                                              0.24);
                                        }
                                      }(),
                                      constraints: BoxConstraints(
                                        maxWidth: valueOrDefault<double>(
                                          MediaQuery.sizeOf(context).width <
                                                  kBreakpointLarge
                                              ? double.infinity
                                              : 592.0,
                                          592.0,
                                        ),
                                        maxHeight: 400.0,
                                      ),
                                      decoration: BoxDecoration(
                                        shape: BoxShape.rectangle,
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                        ),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Divider(
                                            height: 0.0,
                                            thickness: 1.0,
                                            color: FlutterFlowTheme.of(context)
                                                .tertiary,
                                          ),
                                          Container(
                                            width: double.infinity,
                                            height: MediaQuery.sizeOf(context)
                                                    .height *
                                                0.15,
                                            constraints: BoxConstraints(
                                              maxHeight: 185.0,
                                            ),
                                            decoration: BoxDecoration(),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      valueOrDefault<double>(
                                                        () {
                                                          if (MediaQuery.sizeOf(
                                                                      context)
                                                                  .width <
                                                              kBreakpointSmall) {
                                                            return 10.0;
                                                          } else if (MediaQuery
                                                                      .sizeOf(
                                                                          context)
                                                                  .width <
                                                              kBreakpointMedium) {
                                                            return 60.0;
                                                          } else if (MediaQuery
                                                                      .sizeOf(
                                                                          context)
                                                                  .width <
                                                              kBreakpointLarge) {
                                                            return 60.0;
                                                          } else {
                                                            return 90.0;
                                                          }
                                                        }(),
                                                        0.0,
                                                      ),
                                                      0.0,
                                                      valueOrDefault<double>(
                                                        MediaQuery.sizeOf(
                                                                        context)
                                                                    .width <
                                                                kBreakpointSmall
                                                            ? 10.0
                                                            : 20.0,
                                                        20.0,
                                                      ),
                                                      0.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Flexible(
                                                    child: Container(
                                                      height: MediaQuery.sizeOf(
                                                                  context)
                                                              .height *
                                                          0.12,
                                                      decoration:
                                                          BoxDecoration(),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    2.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: AutoSizeText(
                                                          'DIAGNOSE \nISSUES',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .headlineLarge
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .headlineLargeFamily,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondary,
                                                                fontSize: 64.0,
                                                                letterSpacing: MediaQuery.sizeOf(context)
                                                                            .width <
                                                                        kBreakpointSmall
                                                                    ? FFAppConstants
                                                                        .LetterSpacingM
                                                                    : FFAppConstants
                                                                        .LetterSpacingTD,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                                lineHeight: 0.8,
                                                                useGoogleFonts:
                                                                    !FlutterFlowTheme.of(
                                                                            context)
                                                                        .headlineLargeIsCustom,
                                                              ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Flexible(
                                                    child: Container(
                                                      height: MediaQuery.sizeOf(
                                                                  context)
                                                              .height *
                                                          0.05,
                                                      decoration:
                                                          BoxDecoration(),
                                                      child: Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                0.0, 1.0),
                                                        child: AutoSizeText(
                                                          'Guided steps and simple checks to identify your AC issue quickly and accurately.',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .labelSmall
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelSmallFamily,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondary,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts:
                                                                    !FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelSmallIsCustom,
                                                              ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Divider(
                                            height: 0.0,
                                            thickness: 1.0,
                                            color: FlutterFlowTheme.of(context)
                                                .tertiary,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              if (responsiveVisibility(
                                context: context,
                                phone: false,
                              ))
                                Divider(
                                  height: 0.0,
                                  thickness: 1.0,
                                  color: FlutterFlowTheme.of(context).tertiary,
                                ),
                              Wrap(
                                spacing: 0.0,
                                runSpacing: 0.0,
                                alignment: WrapAlignment.end,
                                crossAxisAlignment: WrapCrossAlignment.center,
                                direction: Axis.horizontal,
                                runAlignment: WrapAlignment.start,
                                verticalDirection: VerticalDirection.up,
                                clipBehavior: Clip.none,
                                children: [
                                  Container(
                                    width: () {
                                      if (MediaQuery.sizeOf(context).width <
                                          kBreakpointSmall) {
                                        return double.infinity;
                                      } else if (MediaQuery.sizeOf(context)
                                              .width <
                                          kBreakpointMedium) {
                                        return (MediaQuery.sizeOf(context)
                                                .width *
                                            0.47713);
                                      } else if (MediaQuery.sizeOf(context)
                                              .width <
                                          kBreakpointLarge) {
                                        return (MediaQuery.sizeOf(context)
                                                .width *
                                            0.478);
                                      } else {
                                        return (MediaQuery.sizeOf(context)
                                                .width *
                                            0.296);
                                      }
                                    }(),
                                    height: () {
                                      if (MediaQuery.sizeOf(context).width <
                                          kBreakpointSmall) {
                                        return 170.0;
                                      } else if (MediaQuery.sizeOf(context)
                                              .width <
                                          kBreakpointMedium) {
                                        return (MediaQuery.sizeOf(context)
                                                .width *
                                            0.45);
                                      } else if (MediaQuery.sizeOf(context)
                                              .width <
                                          kBreakpointLarge) {
                                        return (MediaQuery.sizeOf(context)
                                                .width *
                                            0.46);
                                      } else {
                                        return (MediaQuery.sizeOf(context)
                                                .width *
                                            0.24);
                                      }
                                    }(),
                                    constraints: BoxConstraints(
                                      maxWidth: valueOrDefault<double>(
                                        MediaQuery.sizeOf(context).width <
                                                kBreakpointLarge
                                            ? double.infinity
                                            : 592.0,
                                        592.0,
                                      ),
                                      maxHeight: 400.0,
                                    ),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Divider(
                                          height: 0.0,
                                          thickness: 1.0,
                                          color: FlutterFlowTheme.of(context)
                                              .tertiary,
                                        ),
                                        Container(
                                          width: double.infinity,
                                          height: MediaQuery.sizeOf(context)
                                                  .height *
                                              0.15,
                                          constraints: BoxConstraints(
                                            maxHeight: 185.0,
                                          ),
                                          decoration: BoxDecoration(),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    valueOrDefault<double>(
                                                      MediaQuery.sizeOf(context)
                                                                  .width <
                                                              kBreakpointSmall
                                                          ? 10.0
                                                          : 20.0,
                                                      20.0,
                                                    ),
                                                    0.0,
                                                    valueOrDefault<double>(
                                                      () {
                                                        if (MediaQuery.sizeOf(
                                                                    context)
                                                                .width <
                                                            kBreakpointSmall) {
                                                          return 10.0;
                                                        } else if (MediaQuery
                                                                    .sizeOf(
                                                                        context)
                                                                .width <
                                                            kBreakpointLarge) {
                                                          return 50.0;
                                                        } else {
                                                          return 90.0;
                                                        }
                                                      }(),
                                                      0.0,
                                                    ),
                                                    0.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Flexible(
                                                  child: Container(
                                                    height: MediaQuery.sizeOf(
                                                                context)
                                                            .height *
                                                        0.12,
                                                    decoration: BoxDecoration(),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  2.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: AutoSizeText(
                                                        'PART\nMATCHING',
                                                        minFontSize: 32.0,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .headlineLarge
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .headlineLargeFamily,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondary,
                                                                  fontSize:
                                                                      64.0,
                                                                  letterSpacing: MediaQuery.sizeOf(context)
                                                                              .width <
                                                                          kBreakpointSmall
                                                                      ? FFAppConstants
                                                                          .LetterSpacingM
                                                                      : FFAppConstants
                                                                          .LetterSpacingTD,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                  lineHeight:
                                                                      0.8,
                                                                  useGoogleFonts:
                                                                      !FlutterFlowTheme.of(
                                                                              context)
                                                                          .headlineLargeIsCustom,
                                                                ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Flexible(
                                                  child: Container(
                                                    height: MediaQuery.sizeOf(
                                                                context)
                                                            .height *
                                                        0.05,
                                                    decoration: BoxDecoration(),
                                                    child: AutoSizeText(
                                                      'Find the exact parts your AC needs based on your model and specific problem.',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelSmall
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelSmallFamily,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondary,
                                                                fontSize: 24.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts:
                                                                    !FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelSmallIsCustom,
                                                              ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Divider(
                                          height: 0.0,
                                          thickness: 1.0,
                                          color: FlutterFlowTheme.of(context)
                                              .tertiary,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    constraints: BoxConstraints(
                                      maxWidth: valueOrDefault<double>(
                                        MediaQuery.sizeOf(context).width <
                                                kBreakpointLarge
                                            ? double.infinity
                                            : 480.0,
                                        480.0,
                                      ),
                                      maxHeight: 400.0,
                                    ),
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      shape: BoxShape.rectangle,
                                    ),
                                    child: Container(
                                      width: () {
                                        if (MediaQuery.sizeOf(context).width <
                                            kBreakpointSmall) {
                                          return double.infinity;
                                        } else if (MediaQuery.sizeOf(context)
                                                .width <
                                            kBreakpointMedium) {
                                          return (MediaQuery.sizeOf(context)
                                                  .width *
                                              0.45);
                                        } else if (MediaQuery.sizeOf(context)
                                                .width <
                                            kBreakpointLarge) {
                                          return (MediaQuery.sizeOf(context)
                                                  .width *
                                              0.46);
                                        } else {
                                          return (MediaQuery.sizeOf(context)
                                                  .width *
                                              0.24);
                                        }
                                      }(),
                                      height: () {
                                        if (MediaQuery.sizeOf(context).width <
                                            kBreakpointSmall) {
                                          return double.infinity;
                                        } else if (MediaQuery.sizeOf(context)
                                                .width <
                                            kBreakpointMedium) {
                                          return (MediaQuery.sizeOf(context)
                                                  .width *
                                              0.45);
                                        } else if (MediaQuery.sizeOf(context)
                                                .width <
                                            kBreakpointLarge) {
                                          return (MediaQuery.sizeOf(context)
                                                  .width *
                                              0.46);
                                        } else {
                                          return (MediaQuery.sizeOf(context)
                                                  .width *
                                              0.24);
                                        }
                                      }(),
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                      ),
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Text(
                                          '02',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.prompt(
                                                  fontWeight: FontWeight.bold,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                                fontSize: 100.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.bold,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              if (responsiveVisibility(
                                context: context,
                                phone: false,
                              ))
                                Divider(
                                  height: 0.0,
                                  thickness: 1.0,
                                  color: FlutterFlowTheme.of(context).tertiary,
                                ),
                              Align(
                                alignment: AlignmentDirectional(1.0, 0.0),
                                child: Wrap(
                                  spacing: 0.0,
                                  runSpacing: 0.0,
                                  alignment: WrapAlignment.end,
                                  crossAxisAlignment: WrapCrossAlignment.center,
                                  direction: Axis.horizontal,
                                  runAlignment: WrapAlignment.start,
                                  verticalDirection: VerticalDirection.down,
                                  clipBehavior: Clip.none,
                                  children: [
                                    Container(
                                      constraints: BoxConstraints(
                                        maxWidth: valueOrDefault<double>(
                                          MediaQuery.sizeOf(context).width <
                                                  kBreakpointLarge
                                              ? double.infinity
                                              : 480.0,
                                          480.0,
                                        ),
                                        maxHeight: 400.0,
                                      ),
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        shape: BoxShape.rectangle,
                                      ),
                                      child: Container(
                                        width: () {
                                          if (MediaQuery.sizeOf(context).width <
                                              kBreakpointSmall) {
                                            return double.infinity;
                                          } else if (MediaQuery.sizeOf(context)
                                                  .width <
                                              kBreakpointMedium) {
                                            return (MediaQuery.sizeOf(context)
                                                    .width *
                                                0.45);
                                          } else if (MediaQuery.sizeOf(context)
                                                  .width <
                                              kBreakpointLarge) {
                                            return (MediaQuery.sizeOf(context)
                                                    .width *
                                                0.46);
                                          } else {
                                            return (MediaQuery.sizeOf(context)
                                                    .width *
                                                0.24);
                                          }
                                        }(),
                                        height: () {
                                          if (MediaQuery.sizeOf(context).width <
                                              kBreakpointSmall) {
                                            return double.infinity;
                                          } else if (MediaQuery.sizeOf(context)
                                                  .width <
                                              kBreakpointMedium) {
                                            return (MediaQuery.sizeOf(context)
                                                    .width *
                                                0.45);
                                          } else if (MediaQuery.sizeOf(context)
                                                  .width <
                                              kBreakpointLarge) {
                                            return (MediaQuery.sizeOf(context)
                                                    .width *
                                                0.46);
                                          } else {
                                            return (MediaQuery.sizeOf(context)
                                                    .width *
                                                0.24);
                                          }
                                        }(),
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                        ),
                                        child: Align(
                                          alignment:
                                              AlignmentDirectional(0.0, 0.0),
                                          child: Text(
                                            '03',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  font: GoogleFonts.prompt(
                                                    fontWeight: FontWeight.bold,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontStyle,
                                                  ),
                                                  fontSize: 100.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.bold,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
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
                                        } else if (MediaQuery.sizeOf(context)
                                                .width <
                                            kBreakpointMedium) {
                                          return (MediaQuery.sizeOf(context)
                                                  .width *
                                              0.47713);
                                        } else if (MediaQuery.sizeOf(context)
                                                .width <
                                            kBreakpointLarge) {
                                          return (MediaQuery.sizeOf(context)
                                                  .width *
                                              0.478);
                                        } else {
                                          return (MediaQuery.sizeOf(context)
                                                  .width *
                                              0.296);
                                        }
                                      }(),
                                      height: () {
                                        if (MediaQuery.sizeOf(context).width <
                                            kBreakpointSmall) {
                                          return 170.0;
                                        } else if (MediaQuery.sizeOf(context)
                                                .width <
                                            kBreakpointMedium) {
                                          return (MediaQuery.sizeOf(context)
                                                  .width *
                                              0.45);
                                        } else if (MediaQuery.sizeOf(context)
                                                .width <
                                            kBreakpointLarge) {
                                          return (MediaQuery.sizeOf(context)
                                                  .width *
                                              0.46);
                                        } else {
                                          return (MediaQuery.sizeOf(context)
                                                  .width *
                                              0.24);
                                        }
                                      }(),
                                      constraints: BoxConstraints(
                                        maxWidth: valueOrDefault<double>(
                                          MediaQuery.sizeOf(context).width <
                                                  kBreakpointLarge
                                              ? double.infinity
                                              : 592.0,
                                          592.0,
                                        ),
                                        maxHeight: 400.0,
                                      ),
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                        ),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Divider(
                                            height: 0.0,
                                            thickness: 1.0,
                                            color: FlutterFlowTheme.of(context)
                                                .tertiary,
                                          ),
                                          Container(
                                            width: double.infinity,
                                            height: MediaQuery.sizeOf(context)
                                                    .height *
                                                0.15,
                                            constraints: BoxConstraints(
                                              maxHeight: 185.0,
                                            ),
                                            decoration: BoxDecoration(),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      valueOrDefault<double>(
                                                        () {
                                                          if (MediaQuery.sizeOf(
                                                                      context)
                                                                  .width <
                                                              kBreakpointSmall) {
                                                            return 10.0;
                                                          } else if (MediaQuery
                                                                      .sizeOf(
                                                                          context)
                                                                  .width <
                                                              kBreakpointLarge) {
                                                            return 50.0;
                                                          } else {
                                                            return 90.0;
                                                          }
                                                        }(),
                                                        0.0,
                                                      ),
                                                      0.0,
                                                      valueOrDefault<double>(
                                                        MediaQuery.sizeOf(
                                                                        context)
                                                                    .width <
                                                                kBreakpointSmall
                                                            ? 10.0
                                                            : 20.0,
                                                        20.0,
                                                      ),
                                                      0.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Flexible(
                                                    child: Container(
                                                      height: MediaQuery.sizeOf(
                                                                  context)
                                                              .height *
                                                          0.12,
                                                      decoration:
                                                          BoxDecoration(),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    2.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: AutoSizeText(
                                                          'REPAIR\nGUIDES',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .headlineLarge
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .headlineLargeFamily,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondary,
                                                                fontSize: 64.0,
                                                                letterSpacing: MediaQuery.sizeOf(context)
                                                                            .width <
                                                                        kBreakpointSmall
                                                                    ? FFAppConstants
                                                                        .LetterSpacingM
                                                                    : FFAppConstants
                                                                        .LetterSpacingTD,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                                lineHeight: 0.8,
                                                                useGoogleFonts:
                                                                    !FlutterFlowTheme.of(
                                                                            context)
                                                                        .headlineLargeIsCustom,
                                                              ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Flexible(
                                                    child: Container(
                                                      height: MediaQuery.sizeOf(
                                                                  context)
                                                              .height *
                                                          0.05,
                                                      decoration:
                                                          BoxDecoration(),
                                                      child: AutoSizeText(
                                                        'Step-by-step instructions and videos to help you fix common AC issues with confidence.',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelSmall
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelSmallFamily,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondary,
                                                                  fontSize:
                                                                      24.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts:
                                                                      !FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelSmallIsCustom,
                                                                ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Divider(
                                            height: 0.0,
                                            thickness: 1.0,
                                            color: FlutterFlowTheme.of(context)
                                                .tertiary,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              if (responsiveVisibility(
                                context: context,
                                phone: false,
                              ))
                                Divider(
                                  height: 0.0,
                                  thickness: 1.0,
                                  color: FlutterFlowTheme.of(context).tertiary,
                                ),
                              Wrap(
                                spacing: 0.0,
                                runSpacing: 0.0,
                                alignment: WrapAlignment.end,
                                crossAxisAlignment: WrapCrossAlignment.center,
                                direction: Axis.horizontal,
                                runAlignment: WrapAlignment.start,
                                verticalDirection: VerticalDirection.up,
                                clipBehavior: Clip.none,
                                children: [
                                  Container(
                                    width: () {
                                      if (MediaQuery.sizeOf(context).width <
                                          kBreakpointSmall) {
                                        return double.infinity;
                                      } else if (MediaQuery.sizeOf(context)
                                              .width <
                                          kBreakpointMedium) {
                                        return (MediaQuery.sizeOf(context)
                                                .width *
                                            0.47713);
                                      } else if (MediaQuery.sizeOf(context)
                                              .width <
                                          kBreakpointLarge) {
                                        return (MediaQuery.sizeOf(context)
                                                .width *
                                            0.478);
                                      } else {
                                        return (MediaQuery.sizeOf(context)
                                                .width *
                                            0.296);
                                      }
                                    }(),
                                    height: () {
                                      if (MediaQuery.sizeOf(context).width <
                                          kBreakpointSmall) {
                                        return 170.0;
                                      } else if (MediaQuery.sizeOf(context)
                                              .width <
                                          kBreakpointMedium) {
                                        return (MediaQuery.sizeOf(context)
                                                .width *
                                            0.45);
                                      } else if (MediaQuery.sizeOf(context)
                                              .width <
                                          kBreakpointLarge) {
                                        return (MediaQuery.sizeOf(context)
                                                .width *
                                            0.46);
                                      } else {
                                        return (MediaQuery.sizeOf(context)
                                                .width *
                                            0.24);
                                      }
                                    }(),
                                    constraints: BoxConstraints(
                                      maxWidth: valueOrDefault<double>(
                                        MediaQuery.sizeOf(context).width <
                                                kBreakpointLarge
                                            ? double.infinity
                                            : 592.0,
                                        592.0,
                                      ),
                                      maxHeight: 400.0,
                                    ),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Divider(
                                          height: 0.0,
                                          thickness: 1.0,
                                          color: FlutterFlowTheme.of(context)
                                              .tertiary,
                                        ),
                                        Container(
                                          width: double.infinity,
                                          height: MediaQuery.sizeOf(context)
                                                  .height *
                                              0.15,
                                          constraints: BoxConstraints(
                                            maxHeight: 185.0,
                                          ),
                                          decoration: BoxDecoration(),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    valueOrDefault<double>(
                                                      MediaQuery.sizeOf(context)
                                                                  .width <
                                                              kBreakpointSmall
                                                          ? 10.0
                                                          : 20.0,
                                                      20.0,
                                                    ),
                                                    0.0,
                                                    valueOrDefault<double>(
                                                      () {
                                                        if (MediaQuery.sizeOf(
                                                                    context)
                                                                .width <
                                                            kBreakpointSmall) {
                                                          return 10.0;
                                                        } else if (MediaQuery
                                                                    .sizeOf(
                                                                        context)
                                                                .width <
                                                            kBreakpointLarge) {
                                                          return 50.0;
                                                        } else {
                                                          return 90.0;
                                                        }
                                                      }(),
                                                      0.0,
                                                    ),
                                                    0.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Flexible(
                                                  child: Container(
                                                    height: MediaQuery.sizeOf(
                                                                context)
                                                            .height *
                                                        0.12,
                                                    decoration: BoxDecoration(),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  2.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: AutoSizeText(
                                                        'PARTS \nORDERING',
                                                        minFontSize: 24.0,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .headlineLarge
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .headlineLargeFamily,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondary,
                                                                  fontSize:
                                                                      64.0,
                                                                  letterSpacing: MediaQuery.sizeOf(context)
                                                                              .width <
                                                                          kBreakpointSmall
                                                                      ? FFAppConstants
                                                                          .LetterSpacingM
                                                                      : FFAppConstants
                                                                          .LetterSpacingTD,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                  lineHeight:
                                                                      0.8,
                                                                  useGoogleFonts:
                                                                      !FlutterFlowTheme.of(
                                                                              context)
                                                                          .headlineLargeIsCustom,
                                                                ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Flexible(
                                                  child: Container(
                                                    height: MediaQuery.sizeOf(
                                                                context)
                                                            .height *
                                                        0.05,
                                                    decoration: BoxDecoration(),
                                                    child: AutoSizeText(
                                                      'Order the right parts easily with fast delivery and clear, upfront pricing.',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelSmall
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelSmallFamily,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondary,
                                                                fontSize: 24.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts:
                                                                    !FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelSmallIsCustom,
                                                              ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Divider(
                                          height: 0.0,
                                          thickness: 1.0,
                                          color: FlutterFlowTheme.of(context)
                                              .tertiary,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    constraints: BoxConstraints(
                                      maxWidth: valueOrDefault<double>(
                                        MediaQuery.sizeOf(context).width <
                                                kBreakpointLarge
                                            ? double.infinity
                                            : 480.0,
                                        480.0,
                                      ),
                                      maxHeight: 400.0,
                                    ),
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      shape: BoxShape.rectangle,
                                    ),
                                    child: Container(
                                      width: () {
                                        if (MediaQuery.sizeOf(context).width <
                                            kBreakpointSmall) {
                                          return double.infinity;
                                        } else if (MediaQuery.sizeOf(context)
                                                .width <
                                            kBreakpointMedium) {
                                          return (MediaQuery.sizeOf(context)
                                                  .width *
                                              0.45);
                                        } else if (MediaQuery.sizeOf(context)
                                                .width <
                                            kBreakpointLarge) {
                                          return (MediaQuery.sizeOf(context)
                                                  .width *
                                              0.46);
                                        } else {
                                          return (MediaQuery.sizeOf(context)
                                                  .width *
                                              0.24);
                                        }
                                      }(),
                                      height: () {
                                        if (MediaQuery.sizeOf(context).width <
                                            kBreakpointSmall) {
                                          return double.infinity;
                                        } else if (MediaQuery.sizeOf(context)
                                                .width <
                                            kBreakpointMedium) {
                                          return (MediaQuery.sizeOf(context)
                                                  .width *
                                              0.45);
                                        } else if (MediaQuery.sizeOf(context)
                                                .width <
                                            kBreakpointLarge) {
                                          return (MediaQuery.sizeOf(context)
                                                  .width *
                                              0.46);
                                        } else {
                                          return (MediaQuery.sizeOf(context)
                                                  .width *
                                              0.24);
                                        }
                                      }(),
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                      ),
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Text(
                                          '04',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.prompt(
                                                  fontWeight: FontWeight.bold,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                                fontSize: 100.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.bold,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              if (responsiveVisibility(
                                context: context,
                                phone: false,
                              ))
                                Divider(
                                  height: 0.0,
                                  thickness: 1.0,
                                  color: FlutterFlowTheme.of(context).tertiary,
                                ),
                              Align(
                                alignment: AlignmentDirectional(1.0, 0.0),
                                child: Wrap(
                                  spacing: 0.0,
                                  runSpacing: 0.0,
                                  alignment: WrapAlignment.end,
                                  crossAxisAlignment: WrapCrossAlignment.center,
                                  direction: Axis.horizontal,
                                  runAlignment: WrapAlignment.start,
                                  verticalDirection: VerticalDirection.down,
                                  clipBehavior: Clip.none,
                                  children: [
                                    Container(
                                      constraints: BoxConstraints(
                                        maxWidth: valueOrDefault<double>(
                                          MediaQuery.sizeOf(context).width <
                                                  kBreakpointLarge
                                              ? double.infinity
                                              : 480.0,
                                          480.0,
                                        ),
                                        maxHeight: 400.0,
                                      ),
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        shape: BoxShape.rectangle,
                                      ),
                                      child: Container(
                                        width: () {
                                          if (MediaQuery.sizeOf(context).width <
                                              kBreakpointSmall) {
                                            return double.infinity;
                                          } else if (MediaQuery.sizeOf(context)
                                                  .width <
                                              kBreakpointMedium) {
                                            return (MediaQuery.sizeOf(context)
                                                    .width *
                                                0.45);
                                          } else if (MediaQuery.sizeOf(context)
                                                  .width <
                                              kBreakpointLarge) {
                                            return (MediaQuery.sizeOf(context)
                                                    .width *
                                                0.46);
                                          } else {
                                            return (MediaQuery.sizeOf(context)
                                                    .width *
                                                0.24);
                                          }
                                        }(),
                                        height: () {
                                          if (MediaQuery.sizeOf(context).width <
                                              kBreakpointSmall) {
                                            return double.infinity;
                                          } else if (MediaQuery.sizeOf(context)
                                                  .width <
                                              kBreakpointMedium) {
                                            return (MediaQuery.sizeOf(context)
                                                    .width *
                                                0.45);
                                          } else if (MediaQuery.sizeOf(context)
                                                  .width <
                                              kBreakpointLarge) {
                                            return (MediaQuery.sizeOf(context)
                                                    .width *
                                                0.46);
                                          } else {
                                            return (MediaQuery.sizeOf(context)
                                                    .width *
                                                0.24);
                                          }
                                        }(),
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                        ),
                                        child: Align(
                                          alignment:
                                              AlignmentDirectional(0.0, 0.0),
                                          child: Text(
                                            '05',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  font: GoogleFonts.prompt(
                                                    fontWeight: FontWeight.bold,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontStyle,
                                                  ),
                                                  fontSize: 100.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.bold,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
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
                                        } else if (MediaQuery.sizeOf(context)
                                                .width <
                                            kBreakpointMedium) {
                                          return (MediaQuery.sizeOf(context)
                                                  .width *
                                              0.47713);
                                        } else if (MediaQuery.sizeOf(context)
                                                .width <
                                            kBreakpointLarge) {
                                          return (MediaQuery.sizeOf(context)
                                                  .width *
                                              0.478);
                                        } else {
                                          return (MediaQuery.sizeOf(context)
                                                  .width *
                                              0.296);
                                        }
                                      }(),
                                      height: () {
                                        if (MediaQuery.sizeOf(context).width <
                                            kBreakpointSmall) {
                                          return 170.0;
                                        } else if (MediaQuery.sizeOf(context)
                                                .width <
                                            kBreakpointMedium) {
                                          return (MediaQuery.sizeOf(context)
                                                  .width *
                                              0.45);
                                        } else if (MediaQuery.sizeOf(context)
                                                .width <
                                            kBreakpointLarge) {
                                          return (MediaQuery.sizeOf(context)
                                                  .width *
                                              0.46);
                                        } else {
                                          return (MediaQuery.sizeOf(context)
                                                  .width *
                                              0.24);
                                        }
                                      }(),
                                      constraints: BoxConstraints(
                                        maxWidth: valueOrDefault<double>(
                                          MediaQuery.sizeOf(context).width <
                                                  kBreakpointLarge
                                              ? double.infinity
                                              : 592.0,
                                          592.0,
                                        ),
                                        maxHeight: 400.0,
                                      ),
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                        ),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Divider(
                                            height: 0.0,
                                            thickness: 1.0,
                                            color: FlutterFlowTheme.of(context)
                                                .tertiary,
                                          ),
                                          Container(
                                            width: double.infinity,
                                            height: MediaQuery.sizeOf(context)
                                                    .height *
                                                0.15,
                                            constraints: BoxConstraints(
                                              maxHeight: 185.0,
                                            ),
                                            decoration: BoxDecoration(),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      valueOrDefault<double>(
                                                        () {
                                                          if (MediaQuery.sizeOf(
                                                                      context)
                                                                  .width <
                                                              kBreakpointSmall) {
                                                            return 10.0;
                                                          } else if (MediaQuery
                                                                      .sizeOf(
                                                                          context)
                                                                  .width <
                                                              kBreakpointLarge) {
                                                            return 50.0;
                                                          } else {
                                                            return 90.0;
                                                          }
                                                        }(),
                                                        0.0,
                                                      ),
                                                      0.0,
                                                      valueOrDefault<double>(
                                                        MediaQuery.sizeOf(
                                                                        context)
                                                                    .width <
                                                                kBreakpointSmall
                                                            ? 10.0
                                                            : 20.0,
                                                        20.0,
                                                      ),
                                                      0.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Flexible(
                                                    child: Container(
                                                      height: MediaQuery.sizeOf(
                                                                  context)
                                                              .height *
                                                          0.12,
                                                      decoration:
                                                          BoxDecoration(),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    2.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: AutoSizeText(
                                                          'TECHNICAL\nSUPPORT',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .headlineLarge
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .headlineLargeFamily,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondary,
                                                                fontSize: 64.0,
                                                                letterSpacing: MediaQuery.sizeOf(context)
                                                                            .width <
                                                                        kBreakpointSmall
                                                                    ? FFAppConstants
                                                                        .LetterSpacingM
                                                                    : FFAppConstants
                                                                        .LetterSpacingTD,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                                lineHeight: 0.8,
                                                                useGoogleFonts:
                                                                    !FlutterFlowTheme.of(
                                                                            context)
                                                                        .headlineLargeIsCustom,
                                                              ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Flexible(
                                                    child: Container(
                                                      height: MediaQuery.sizeOf(
                                                                  context)
                                                              .height *
                                                          0.05,
                                                      decoration:
                                                          BoxDecoration(),
                                                      child: AutoSizeText(
                                                        'Reliable support and access to technicians to help you when needed.',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelSmall
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelSmallFamily,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondary,
                                                                  fontSize:
                                                                      24.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts:
                                                                      !FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelSmallIsCustom,
                                                                ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Divider(
                                            height: 0.0,
                                            thickness: 1.0,
                                            color: FlutterFlowTheme.of(context)
                                                .tertiary,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Divider(
                                height: 0.0,
                                thickness: 1.0,
                                color: FlutterFlowTheme.of(context).tertiary,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    if (responsiveVisibility(
                      context: context,
                      phone: false,
                      tablet: false,
                      tabletLandscape: false,
                    ))
                      Align(
                        alignment: AlignmentDirectional(0.0, -1.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              valueOrDefault<double>(
                                MediaQuery.sizeOf(context).width < 2000.0
                                    ? (MediaQuery.sizeOf(context).width * 0.61)
                                    : 1170.0,
                                1170.0,
                              ),
                              valueOrDefault<double>(
                                MediaQuery.sizeOf(context).width < 2000.0
                                    ? (MediaQuery.sizeOf(context).height * 0.72)
                                    : 780.0,
                                780.0,
                              ),
                              0.0,
                              0.0),
                          child: MouseRegion(
                            opaque: false,
                            cursor: MouseCursor.defer ?? MouseCursor.defer,
                            child: Icon(
                              Icons.emergency_sharp,
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              size: 110.0,
                            )
                                .animateOnPageLoad(
                                    animationsMap['iconOnPageLoadAnimation1']!)
                                .animateOnActionTrigger(
                                  animationsMap[
                                      'iconOnActionTriggerAnimation1']!,
                                ),
                            onEnter: ((event) async {
                              safeSetState(
                                  () => _model.mouseRegionHovered1 = true);
                              // Start MiniStar Animation
                              if (animationsMap[
                                      'iconOnActionTriggerAnimation1'] !=
                                  null) {
                                await animationsMap[
                                        'iconOnActionTriggerAnimation1']!
                                    .controller
                                  ..reset()
                                  ..repeat(reverse: true);
                              }
                            }),
                            onExit: ((event) async {
                              safeSetState(
                                  () => _model.mouseRegionHovered1 = false);
                              // Reset MiniStar Animation
                              if (animationsMap[
                                      'iconOnActionTriggerAnimation1'] !=
                                  null) {
                                animationsMap['iconOnActionTriggerAnimation1']!
                                    .controller
                                    .reset();
                              }
                            }),
                          ),
                        ),
                      ),
                    if (responsiveVisibility(
                      context: context,
                      phone: false,
                      tablet: false,
                      tabletLandscape: false,
                    ))
                      Align(
                        alignment: AlignmentDirectional(0.0, -1.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0,
                              0.0,
                              valueOrDefault<double>(
                                MediaQuery.sizeOf(context).width < 2000.0
                                    ? (MediaQuery.sizeOf(context).width * 0.64)
                                    : 1280.0,
                                1280.0,
                              ),
                              0.0),
                          child: MouseRegion(
                            opaque: false,
                            cursor: MouseCursor.defer ?? MouseCursor.defer,
                            child: Icon(
                              Icons.emergency_sharp,
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              size: 200.0,
                            )
                                .animateOnPageLoad(
                                    animationsMap['iconOnPageLoadAnimation2']!)
                                .animateOnActionTrigger(
                                  animationsMap[
                                      'iconOnActionTriggerAnimation2']!,
                                ),
                            onEnter: ((event) async {
                              safeSetState(
                                  () => _model.mouseRegionHovered2 = true);
                              // Start MiniStar Animation
                              if (animationsMap[
                                      'iconOnActionTriggerAnimation2'] !=
                                  null) {
                                await animationsMap[
                                        'iconOnActionTriggerAnimation2']!
                                    .controller
                                  ..reset()
                                  ..repeat(reverse: true);
                              }
                            }),
                            onExit: ((event) async {
                              safeSetState(
                                  () => _model.mouseRegionHovered2 = false);
                              // Reset MiniStar Animation
                              if (animationsMap[
                                      'iconOnActionTriggerAnimation2'] !=
                                  null) {
                                animationsMap['iconOnActionTriggerAnimation2']!
                                    .controller
                                    .reset();
                              }
                            }),
                          ),
                        ),
                      ),
                    if (responsiveVisibility(
                      context: context,
                      phone: false,
                      tablet: false,
                      tabletLandscape: false,
                    ))
                      Align(
                        alignment: AlignmentDirectional(0.0, -1.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              valueOrDefault<double>(
                                MediaQuery.sizeOf(context).width < 2000.0
                                    ? (MediaQuery.sizeOf(context).width * 0.94)
                                    : 1800.0,
                                1800.0,
                              ),
                              valueOrDefault<double>(
                                MediaQuery.sizeOf(context).width < 2000.0
                                    ? (MediaQuery.sizeOf(context).height * 1.34)
                                    : 1460.0,
                                1460.0,
                              ),
                              0.0,
                              0.0),
                          child: Container(
                            width: MediaQuery.sizeOf(context).width < 2000.0
                                ? (MediaQuery.sizeOf(context).width * 0.2)
                                : 380.0,
                            height: MediaQuery.sizeOf(context).width < 2000.0
                                ? (MediaQuery.sizeOf(context).width * 0.2)
                                : 380.0,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: wrapWithModel(
                              model: _model.asteriskModel1,
                              updateCallback: () => safeSetState(() {}),
                              child: AsteriskWidget(
                                asteriskColor: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                              ),
                            ),
                          ),
                        ),
                      ),
                    if (responsiveVisibility(
                      context: context,
                      phone: false,
                      tablet: false,
                      tabletLandscape: false,
                    ))
                      Align(
                        alignment: AlignmentDirectional(0.0, -1.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0,
                              valueOrDefault<double>(
                                MediaQuery.sizeOf(context).width < 2000.0
                                    ? (MediaQuery.sizeOf(context).height * 1.8)
                                    : 2000.0,
                                2000.0,
                              ),
                              valueOrDefault<double>(
                                MediaQuery.sizeOf(context).width < 2000.0
                                    ? (MediaQuery.sizeOf(context).width * 0.83)
                                    : 1500.0,
                                1500.0,
                              ),
                              0.0),
                          child: Container(
                            width: 220.0,
                            height: 220.0,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: wrapWithModel(
                              model: _model.asteriskModel2,
                              updateCallback: () => safeSetState(() {}),
                              child: AsteriskWidget(
                                asteriskColor:
                                    FlutterFlowTheme.of(context).secondary,
                              ),
                            ),
                          ),
                        ),
                      ),
                    if (responsiveVisibility(
                      context: context,
                      phone: false,
                      tablet: false,
                      tabletLandscape: false,
                    ))
                      Align(
                        alignment: AlignmentDirectional(0.0, -1.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              valueOrDefault<double>(
                                MediaQuery.sizeOf(context).width < 2000.0
                                    ? (MediaQuery.sizeOf(context).width * 0.74)
                                    : 1420.0,
                                1480.0,
                              ),
                              valueOrDefault<double>(
                                () {
                                  if (MediaQuery.sizeOf(context).width <
                                      1300.0) {
                                    return (MediaQuery.sizeOf(context).height *
                                        0.52);
                                  } else if (MediaQuery.sizeOf(context).width <
                                      2000.0) {
                                    return (MediaQuery.sizeOf(context).height *
                                        0.57);
                                  } else {
                                    return 620.0;
                                  }
                                }(),
                                620.0,
                              ),
                              0.0,
                              0.0),
                          child: Container(
                            width: 180.0,
                            height: 180.0,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: wrapWithModel(
                              model: _model.asteriskModel3,
                              updateCallback: () => safeSetState(() {}),
                              child: AsteriskWidget(
                                asteriskColor:
                                    FlutterFlowTheme.of(context).secondary,
                                maxWidth: 30.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
