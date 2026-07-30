import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 's02_headlines_model.dart';
export 's02_headlines_model.dart';

class S02HeadlinesWidget extends StatefulWidget {
  const S02HeadlinesWidget({super.key});

  @override
  State<S02HeadlinesWidget> createState() => _S02HeadlinesWidgetState();
}

class _S02HeadlinesWidgetState extends State<S02HeadlinesWidget>
    with TickerProviderStateMixin {
  late S02HeadlinesModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => S02HeadlinesModel());

    animationsMap.addAll({
      'iconOnActionTriggerAnimation': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 1000.0.ms,
            begin: Offset(-10.0, 0.0),
            end: Offset(10.0, 0.0),
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
        width: MediaQuery.sizeOf(context).width * 0.8,
        constraints: BoxConstraints(
          maxWidth: 1600.0,
        ),
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).primaryBackground,
          border: Border.all(
            color: valueOrDefault<Color>(
              MediaQuery.sizeOf(context).width < kBreakpointSmall
                  ? Colors.transparent
                  : FlutterFlowTheme.of(context).tertiary,
              FlutterFlowTheme.of(context).tertiary,
            ),
            width: 1.0,
          ),
        ),
        child: Wrap(
          spacing: 0.0,
          runSpacing: valueOrDefault<double>(
            MediaQuery.sizeOf(context).width < kBreakpointSmall ? 25.0 : 50.0,
            50.0,
          ),
          alignment: WrapAlignment.spaceBetween,
          crossAxisAlignment: WrapCrossAlignment.center,
          direction: Axis.horizontal,
          runAlignment: WrapAlignment.start,
          verticalDirection: VerticalDirection.down,
          clipBehavior: Clip.none,
          children: [
            Container(
              width: MediaQuery.sizeOf(context).width < kBreakpointLarge
                  ? double.infinity
                  : (MediaQuery.sizeOf(context).width * 0.5),
              constraints: BoxConstraints(
                minWidth: 500.0,
                maxWidth: 935.0,
              ),
              decoration: BoxDecoration(),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 14.0, 0.0, 0.0),
                      child: Text(
                        'WE PROVIDE THE PARTS, TOOLS, AND KNOWLEDGE SO IT HELP YOU FIX YOUR A/C.',
                        style: FlutterFlowTheme.of(context)
                            .headlineMedium
                            .override(
                              fontFamily: FlutterFlowTheme.of(context)
                                  .headlineMediumFamily,
                              color: Color(0xDD000000),
                              fontSize: 40.0,
                              letterSpacing: MediaQuery.sizeOf(context).width <
                                      kBreakpointSmall
                                  ? FFAppConstants.LetterSpacingM
                                  : FFAppConstants.LetterSpacingTD,
                              lineHeight: 0.9,
                              useGoogleFonts: !FlutterFlowTheme.of(context)
                                  .headlineMediumIsCustom,
                            ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 20.0),
                      child: Builder(
                        builder: (context) {
                          // Single source of truth for this hero box's height
                          // so the outer border and the inner CarouselSlider
                          // can never disagree (previously the inner slider
                          // was hard-coded to 180.0 regardless of screen
                          // size, which overflowed the outer box and caused
                          // the rotating word to visibly overlap the text
                          // below it mid-transition).
                          final heroCarouselHeight = valueOrDefault<double>(
                            () {
                              if (MediaQuery.sizeOf(context).width <
                                  kBreakpointSmall) {
                                return 110.0;
                              } else if (MediaQuery.sizeOf(context).width <
                                  kBreakpointLarge) {
                                return 144.0;
                              } else {
                                return 179.0;
                              }
                            }(),
                            179.0,
                          );
                          return Container(
                            width: double.infinity,
                            height: heroCarouselHeight,
                            clipBehavior: Clip.hardEdge,
                            decoration: BoxDecoration(
                              color:
                                  FlutterFlowTheme.of(context).primaryBackground,
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).primary,
                                width: 1.0,
                              ),
                            ),
                            child: Container(
                              width: double.infinity,
                              height: heroCarouselHeight,
                              child: CarouselSlider(
                            items: [
                              Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10.0, 20.0, 10.0, 20.0),
                                  child: AutoSizeText(
                                    'DIAGNOSE',
                                    style: FlutterFlowTheme.of(context)
                                        .displayLarge
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .displayLargeFamily,
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          fontSize: 128.0,
                                          letterSpacing: 0.0,
                                          useGoogleFonts:
                                             !FlutterFlowTheme.of(context)
                                                .displayLargeIsCustom,
                                        ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10.0, 20.0, 10.0, 20.0),
                                  child: AutoSizeText(
                                    'QUICK DELIVERY',
                                    style: FlutterFlowTheme.of(context)
                                        .displayLarge
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .displayLargeFamily,
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.normal,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .displayLargeIsCustom,
                                        ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10.0, 20.0, 10.0, 20.0),
                                  child: AutoSizeText(
                                    'PARTS 2 SPECS',
                                    style: FlutterFlowTheme.of(context)
                                        .displayLarge
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .displayLargeFamily,
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.normal,
                                          useGoogleFonts:
                                             !FlutterFlowTheme.of(context)
                                                  .displayLargeIsCustom,
                                        ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10.0, 20.0, 10.0, 20.0),
                                  child: AutoSizeText(
                                    'LOANER TOOLS',
                                    style: FlutterFlowTheme.of(context)
                                        .displayLarge
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .displayLargeFamily,
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.normal,
                                          useGoogleFonts:
                                             !FlutterFlowTheme.of(context)
                                                  .displayLargeIsCustom,
                                        ),
                                  ),
                                ),
                              ),
                            ],
                            carouselController: _model.carouselController ??=
                                CarouselSliderController(),
                            options: CarouselOptions(
                              initialPage: 0,
                              viewportFraction: 1.0,
                              disableCenter: true,
                              enlargeCenterPage: false,
                              enlargeFactor: 0.0,
                              enableInfiniteScroll: true,
                              scrollDirection: Axis.vertical,
                              autoPlay: true,
                              autoPlayAnimationDuration:
                                  Duration(milliseconds: 400),
                              autoPlayInterval:
                                  Duration(milliseconds: (400 + 4000)),
                              autoPlayCurve: Curves.linear,
                              pauseAutoPlayInFiniteScroll: true,
                              onPageChanged: (index, _) =>
                                  _model.carouselCurrentIndex = index,
                            ),
                          ),
                        ),
                      );
                        },
                      ),
                    ),
                    RichText(
                      textScaler: MediaQuery.of(context).textScaler,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'We guide you step-by-step to',
                            style: TextStyle(),
                          ),
                          TextSpan(
                            text: ' fix your AC',
                            style: GoogleFonts.archivoBlack(
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          TextSpan(
                            text:
                                ', choose the right parts, and get it done — faster and cheaper',
                            style: TextStyle(),
                          )
                        ],
                        style: FlutterFlowTheme.of(context)
                            .labelMedium
                            .override(
                              fontFamily: FlutterFlowTheme.of(context)
                                  .labelMediumFamily,
                              color: FlutterFlowTheme.of(context).primaryText,
                              fontSize: 24.0,
                              letterSpacing: 0.0,
                              useGoogleFonts: !FlutterFlowTheme.of(context)
                                  .labelMediumIsCustom,
                            ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: valueOrDefault<double>(
                        () {
                          if (MediaQuery.sizeOf(context).width <
                              kBreakpointSmall) {
                            return 25.0;
                          } else if (MediaQuery.sizeOf(context).width <
                              kBreakpointLarge) {
                            return 50.0;
                          } else {
                            return 100.0;
                          }
                        }(),
                        100.0,
                      ),
                      decoration: BoxDecoration(),
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed(BDiagnosisWidget.routeName);
                      },
                      child: Container(
                        constraints: BoxConstraints(
                          maxWidth: 617.0,
                        ),
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primary,
                        ),
                        child: MouseRegion(
                          opaque: false,
                          cursor: SystemMouseCursors.click ?? MouseCursor.defer,
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 30.0, 10.0, 30.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                AutoSizeText(
                                  'LET’S GET STARTED!',
                                  minFontSize: 12.0,
                                  style: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .titleMediumFamily,
                                        color: FlutterFlowTheme.of(context)
                                            .secondary,
                                        letterSpacing: 0.0,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .titleMediumIsCustom,
                                      ),
                                ),
                                if (responsiveVisibility(
                                  context: context,
                                  phone: false,
                                ))
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10.0, 0.0, 0.0, 0.0),
                                    child: Icon(
                                      Icons.arrow_forward,
                                      color: FlutterFlowTheme.of(context)
                                          .secondary,
                                      size: valueOrDefault<double>(
                                        MediaQuery.sizeOf(context).width <
                                               kBreakpointSmall
                                            ? 20.0
                                            : 44.0,
                                        44.0,
                                      ),
                                    ).animateOnActionTrigger(
                                      animationsMap[
                                          'iconOnActionTriggerAnimation']!,
                                    ),
                                  ),
                              ],
                            ),
                          ),
                          onEnter: ((event) async {
                            safeSetState(
                                () => _model.mouseRegionHovered = true);
                            // Start Arrow Animation
                            if (animationsMap['iconOnActionTriggerAnimation'] !=
                                null) {
                              await animationsMap[
                                      'iconOnActionTriggerAnimation']!
                                  .controller
                                ..reset()
                                ..repeat(reverse: true);
                            }
                          }),
                          onExit: ((event) async {
                            safeSetState(
                                () => _model.mouseRegionHovered = false);
                            // Reset Arrow Animation
                            if (animationsMap['iconOnActionTriggerAnimation'] !=
                                null) {
                              animationsMap['iconOnActionTriggerAnimation']!
                                  .controller
                                  .reset();
                            }
                          }),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: () {
                if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                  return 179.0;
                } else if (MediaQuery.sizeOf(context).width <
                    kBreakpointLarge) {
                  return (MediaQuery.sizeOf(context).width * 0.3);
                } else if (MediaQuery.sizeOf(context).width < 2000.0) {
                  return (MediaQuery.sizeOf(context).width * 0.23);
                } else {
                  return 500.0;
                }
              }(),
              height: () {
                if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                  return 179.0;
                } else if (MediaQuery.sizeOf(context).width <
                    kBreakpointLarge) {
                  return (MediaQuery.sizeOf(context).width * 0.3);
                } else if (MediaQuery.sizeOf(context).width < 2000.0) {
                  return (MediaQuery.sizeOf(context).width * 0.23);
                } else {
                  return 500.0;
                }
              }(),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
