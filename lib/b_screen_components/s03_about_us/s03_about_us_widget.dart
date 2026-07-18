import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 's03_about_us_model.dart';
export 's03_about_us_model.dart';

class S03AboutUsWidget extends StatefulWidget {
  const S03AboutUsWidget({super.key});

  @override
  State<S03AboutUsWidget> createState() => _S03AboutUsWidgetState();
}

class _S03AboutUsWidgetState extends State<S03AboutUsWidget>
    with TickerProviderStateMixin {
  late S03AboutUsModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => S03AboutUsModel());

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
        width: double.infinity,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).primaryBackground,
        ),
        child: Wrap(
          spacing: 0.0,
          runSpacing: valueOrDefault<double>(
            MediaQuery.sizeOf(context).width < kBreakpointSmall ? 25.0 : 50.0,
            50.0,
          ),
          alignment: WrapAlignment.spaceBetween,
          crossAxisAlignment: WrapCrossAlignment.start,
          direction: Axis.horizontal,
          runAlignment: WrapAlignment.start,
          verticalDirection: VerticalDirection.down,
          clipBehavior: Clip.none,
          children: [
            Container(
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
                  color: FlutterFlowTheme.of(context).primary,
                  width: 1.0,
                ),
              ),
              child: Stack(
                alignment: AlignmentDirectional(0.0, 0.0),
                children: [
                  Container(
                    width: MediaQuery.sizeOf(context).width * 0.429,
                    height: MediaQuery.sizeOf(context).width * 0.429,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(valueOrDefault<double>(
                      MediaQuery.sizeOf(context).width < kBreakpointSmall
                          ? 25.0
                          : 50.0,
                      50.0,
                    )),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
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
                            Icon(
                              Icons.animation,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 100.0,
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 10.0, 0.0, 0.0),
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 0.33,
                                constraints: BoxConstraints(
                                  minWidth: valueOrDefault<double>(
                                    MediaQuery.sizeOf(context).width <
                                            kBreakpointLarge
                                        ? 500.0
                                        : 430.0,
                                    430.0,
                                  ),
                                  maxHeight: 90.0,
                                ),
                                decoration: BoxDecoration(),
                                child: AutoSizeText(
                                  'WHO WE ARE',
                                  style: FlutterFlowTheme.of(context)
                                      .displayMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .displayMediumFamily,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        letterSpacing:
                                            MediaQuery.sizeOf(context).width <
                                                    kBreakpointSmall
                                                ? FFAppConstants.LetterSpacingM
                                                : FFAppConstants
                                                    .LetterSpacingTD,
                                        fontWeight: FontWeight.normal,
                                        lineHeight: 0.9,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .displayMediumIsCustom,
                                      ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              10.0, 25.0, 0.0, 0.0),
                          child: Container(
                            height: MediaQuery.sizeOf(context).height * 0.19,
                            constraints: BoxConstraints(
                              maxWidth: 900.0,
                              maxHeight: 205.0,
                            ),
                            decoration: BoxDecoration(),
                            child: AutoSizeText(
                              'We’re redefining how AC repairs are done.\nOur platform guides you through diagnosing issues, selecting the right parts, and getting your system back up and running without the confusion.\nFrom DIY fixes to professional support, everything you need is in one place.',
                              textAlign: TextAlign.start,
                              style: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .labelMediumFamily,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    fontSize: 32.0,
                                    letterSpacing: 0.0,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .labelMediumIsCustom,
                                  ),
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
                          ),
                          child: MouseRegion(
                            opaque: false,
                            cursor:
                                SystemMouseCursors.click ?? MouseCursor.defer,
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 30.0, 10.0, 30.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.pushNamed(IAboutWidget.routeName);
                                },
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'LEARN MORE',
                                      style: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .titleMediumFamily,
                                            color: FlutterFlowTheme.of(context)
                                                .secondary,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.normal,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .titleMediumIsCustom,
                                          ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          50.0, 0.0, 0.0, 0.0),
                                      child: Icon(
                                        Icons.arrow_forward,
                                        color: FlutterFlowTheme.of(context)
                                            .secondary,
                                        size: valueOrDefault<double>(
                                          MediaQuery.sizeOf(context).width <
                                                  kBreakpointSmall
                                              ? 24.0
                                              : 48.0,
                                          48.0,
                                        ),
                                      ).animateOnActionTrigger(
                                        animationsMap[
                                            'iconOnActionTriggerAnimation']!,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            onEnter: ((event) async {
                              safeSetState(
                                  () => _model.mouseRegionHovered = true);
                              // Start Arrow Animation
                              if (animationsMap[
                                      'iconOnActionTriggerAnimation'] !=
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
                              if (animationsMap[
                                      'iconOnActionTriggerAnimation'] !=
                                  null) {
                                animationsMap['iconOnActionTriggerAnimation']!
                                    .controller
                                    .reset();
                              }
                            }),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              constraints: BoxConstraints(
                maxWidth: valueOrDefault<double>(
                  MediaQuery.sizeOf(context).width < kBreakpointLarge
                      ? double.infinity
                      : 860.0,
                  860.0,
                ),
                maxHeight: 800.0,
              ),
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).primary,
              ),
              child: Container(
                width: MediaQuery.sizeOf(context).width < kBreakpointLarge
                    ? (MediaQuery.sizeOf(context).width * 0.96)
                    : (MediaQuery.sizeOf(context).width * 0.43),
                height: MediaQuery.sizeOf(context).width < kBreakpointLarge
                    ? (MediaQuery.sizeOf(context).width * 0.96)
                    : (MediaQuery.sizeOf(context).width * 0.43),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: Image.asset(
                        'assets/images/Stars_Lines.png',
                      ).image,
                    ),
                  ),
                  child: Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Icon(
                      Icons.auto_awesome,
                      color: FlutterFlowTheme.of(context).secondary,
                      size: () {
                        if (MediaQuery.sizeOf(context).width <
                            kBreakpointLarge) {
                          return (MediaQuery.sizeOf(context).width * 0.26);
                        } else if (MediaQuery.sizeOf(context).width < 2000.0) {
                          return (MediaQuery.sizeOf(context).width * 0.12);
                        } else {
                          return 240.0;
                        }
                      }(),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
