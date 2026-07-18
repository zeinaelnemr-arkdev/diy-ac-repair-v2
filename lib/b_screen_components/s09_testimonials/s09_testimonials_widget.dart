import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 's09_testimonials_model.dart';
export 's09_testimonials_model.dart';

class S09TestimonialsWidget extends StatefulWidget {
  const S09TestimonialsWidget({super.key});

  @override
  State<S09TestimonialsWidget> createState() => _S09TestimonialsWidgetState();
}

class _S09TestimonialsWidgetState extends State<S09TestimonialsWidget>
    with TickerProviderStateMixin {
  late S09TestimonialsModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => S09TestimonialsModel());

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
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Wrap(
              spacing: 30.0,
              runSpacing: 25.0,
              alignment: WrapAlignment.start,
              crossAxisAlignment: WrapCrossAlignment.center,
              direction: Axis.horizontal,
              runAlignment: WrapAlignment.start,
              verticalDirection: VerticalDirection.down,
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: () {
                    if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                      return 100.0;
                    } else if (MediaQuery.sizeOf(context).width <
                        kBreakpointMedium) {
                      return 120.0;
                    } else {
                      return 185.0;
                    }
                  }(),
                  height: () {
                    if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                      return 100.0;
                    } else if (MediaQuery.sizeOf(context).width <
                        kBreakpointMedium) {
                      return 125.0;
                    } else {
                      return 185.0;
                    }
                  }(),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: FlutterFlowTheme.of(context).primary,
                      width: 1.0,
                    ),
                  ),
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Icon(
                    Icons.people_outline,
                    color: FlutterFlowTheme.of(context).primaryText,
                    size: MediaQuery.sizeOf(context).width < kBreakpointSmall
                        ? 47.0
                        : 88.0,
                  ),
                ),
                Container(
                  height: () {
                    if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                      return 100.0;
                    } else if (MediaQuery.sizeOf(context).width <
                        kBreakpointMedium) {
                      return 125.0;
                    } else {
                      return 185.0;
                    }
                  }(),
                  decoration: BoxDecoration(),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                        child: Container(
                          height: MediaQuery.sizeOf(context).height * 0.1,
                          decoration: BoxDecoration(),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 4.0, 0.0, 0.0),
                            child: AutoSizeText(
                              'HEAR FROM OUR \nSATISFIED CLIENTS',
                              textAlign: TextAlign.start,
                              style: FlutterFlowTheme.of(context)
                                  .headlineLarge
                                  .override(
                                    font: GoogleFonts.archivoBlack(
                                      fontWeight: FontWeight.normal,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .headlineLarge
                                          .fontStyle,
                                    ),
                                    letterSpacing:
                                        MediaQuery.sizeOf(context).width <
                                                kBreakpointSmall
                                            ? FFAppConstants.LetterSpacingM
                                            : FFAppConstants.LetterSpacingTD,
                                    fontWeight: FontWeight.normal,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .headlineLarge
                                        .fontStyle,
                                    lineHeight: 0.8,
                                  ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: MediaQuery.sizeOf(context).height * 0.06,
                        constraints: BoxConstraints(
                          maxWidth: 670.0,
                        ),
                        decoration: BoxDecoration(),
                        child: Align(
                          alignment: AlignmentDirectional(0.0, 1.0),
                          child: AutoSizeText(
                            'Hear from users who have experienced firsthand how easy it is to diagnose, repair, and fix their AC with our platform.',
                            style: FlutterFlowTheme.of(context)
                                .labelSmall
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .labelSmallFamily,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .labelSmallIsCustom,
                                ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              decoration: BoxDecoration(),
              child: MasonryGridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: () {
                    if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                      return 1;
                    } else if (MediaQuery.sizeOf(context).width <
                        kBreakpointLarge) {
                      return 2;
                    } else {
                      return 4;
                    }
                  }(),
                ),
                crossAxisSpacing: () {
                  if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                    return 16.0;
                  } else if (MediaQuery.sizeOf(context).width <
                      kBreakpointLarge) {
                    return 18.0;
                  } else {
                    return 30.0;
                  }
                }(),
                mainAxisSpacing: () {
                  if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                    return 16.0;
                  } else if (MediaQuery.sizeOf(context).width <
                      kBreakpointLarge) {
                    return 18.0;
                  } else {
                    return 0.0;
                  }
                }(),
                itemCount: 4,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return [
                    () => Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).secondary,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: double.infinity,
                                height:
                                    MediaQuery.sizeOf(context).height * 0.37,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: FlutterFlowTheme.of(context).primary,
                                    width: 1.0,
                                  ),
                                ),
                                child: Image.asset(
                                  'assets/images/Testimonial_1.jpg',
                                  width: double.infinity,
                                  height: double.infinity,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: FlutterFlowTheme.of(context).primary,
                                    width: 1.0,
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10.0, 15.0, 10.0, 15.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height:
                                            MediaQuery.sizeOf(context).height *
                                                0.024,
                                        decoration: BoxDecoration(),
                                        child: AutoSizeText(
                                          'ANDREW GARRY',
                                          style: FlutterFlowTheme.of(context)
                                              .titleSmall
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmallFamily,
                                                fontSize: 24.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.normal,
                                                useGoogleFonts:
                                                    !FlutterFlowTheme.of(
                                                            context)
                                                        .titleSmallIsCustom,
                                              ),
                                        ),
                                      ),
                                      Container(
                                        height:
                                            MediaQuery.sizeOf(context).height *
                                                0.02,
                                        decoration: BoxDecoration(),
                                        child: AutoSizeText(
                                          'Homeowner',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily,
                                                fontSize: 16.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.bold,
                                                useGoogleFonts:
                                                    !FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMediumIsCustom,
                                              ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 20.0, 0.0, 0.0),
                                        child: Container(
                                          height: MediaQuery.sizeOf(context)
                                                  .height *
                                              0.055,
                                          constraints: BoxConstraints(
                                            maxHeight: 60.0,
                                          ),
                                          decoration: BoxDecoration(),
                                          child: AutoSizeText(
                                            '\"I had no idea what was wrong with my AC, but the step-by-step guidance made it easy to diagnose and fix it myself.\"',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily,
                                                  letterSpacing: 0.0,
                                                  useGoogleFonts:
                                                      !FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumIsCustom,
                                                ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                    () => ClipRRect(
                          child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).secondary,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  width: double.infinity,
                                  height:
                                      MediaQuery.sizeOf(context).height * 0.37,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      width: 1.0,
                                    ),
                                  ),
                                  child: Image.asset(
                                    'assets/images/Testimonial_2.jpg',
                                    width: double.infinity,
                                    height: double.infinity,
                                    fit: BoxFit.cover,
                                    alignment: Alignment(0.0, -1.0),
                                  ),
                                ),
                                Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      width: 1.0,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10.0, 15.0, 10.0, 15.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          height: MediaQuery.sizeOf(context)
                                                  .height *
                                              0.025,
                                          decoration: BoxDecoration(),
                                          child: AutoSizeText(
                                            'JANE SMITH',
                                            style: FlutterFlowTheme.of(context)
                                                .titleSmall
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmallFamily,
                                                  fontSize: 24.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.normal,
                                                  useGoogleFonts:
                                                      !FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmallIsCustom,
                                                ),
                                          ),
                                        ),
                                        Container(
                                          height: MediaQuery.sizeOf(context)
                                                  .height *
                                              0.02,
                                          decoration: BoxDecoration(),
                                          child: AutoSizeText(
                                            'Apartment Owner',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily,
                                                  fontSize: 16.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.bold,
                                                  useGoogleFonts:
                                                      !FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumIsCustom,
                                                ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 20.0, 0.0, 0.0),
                                          child: Container(
                                            height: MediaQuery.sizeOf(context)
                                                    .height *
                                                0.055,
                                            constraints: BoxConstraints(
                                              maxHeight: 60.0,
                                            ),
                                            decoration: BoxDecoration(),
                                            child: AutoSizeText(
                                              '\"Finding the right part used to be confusing, but the app matched everything perfectly based on my AC model.\"',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts:
                                                            !FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMediumIsCustom,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                    () => Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).secondary,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: double.infinity,
                                height:
                                    MediaQuery.sizeOf(context).height * 0.37,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: FlutterFlowTheme.of(context).primary,
                                    width: 1.0,
                                  ),
                                ),
                                child: Image.asset(
                                  'assets/images/Testimonial_3.jpg',
                                  width: double.infinity,
                                  height: double.infinity,
                                  fit: BoxFit.cover,
                                  alignment: Alignment(0.0, -1.0),
                                ),
                              ),
                              Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: FlutterFlowTheme.of(context).primary,
                                    width: 1.0,
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10.0, 15.0, 10.0, 15.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height:
                                            MediaQuery.sizeOf(context).height *
                                                0.025,
                                        decoration: BoxDecoration(),
                                        child: AutoSizeText(
                                          'HELENA DAVIS',
                                          style: FlutterFlowTheme.of(context)
                                              .titleSmall
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmallFamily,
                                                fontSize: 24.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.normal,
                                                useGoogleFonts:
                                                    !FlutterFlowTheme.of(
                                                            context)
                                                        .titleSmallIsCustom,
                                              ),
                                        ),
                                      ),
                                      Container(
                                        height:
                                            MediaQuery.sizeOf(context).height *
                                                0.02,
                                        decoration: BoxDecoration(),
                                        child: AutoSizeText(
                                          'DIY Enthusiast',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily,
                                                fontSize: 16.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.bold,
                                                useGoogleFonts:
                                                    !FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMediumIsCustom,
                                              ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 20.0, 0.0, 0.0),
                                        child: Container(
                                          height: MediaQuery.sizeOf(context)
                                                  .height *
                                              0.055,
                                          constraints: BoxConstraints(
                                            maxHeight: 60.0,
                                          ),
                                          decoration: BoxDecoration(),
                                          child: AutoSizeText(
                                            '\"The repair videos were clear and simple. I fixed my AC in less than an hour without calling a technician.\"',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily,
                                                  letterSpacing: 0.0,
                                                  useGoogleFonts:
                                                      !FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumIsCustom,
                                                ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                    () => Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).secondary,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: double.infinity,
                                height:
                                    MediaQuery.sizeOf(context).height * 0.37,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: FlutterFlowTheme.of(context).primary,
                                    width: 1.0,
                                  ),
                                ),
                                child: Image.asset(
                                  'assets/images/Testimonial_4.jpg',
                                  width: double.infinity,
                                  height: double.infinity,
                                  fit: BoxFit.cover,
                                  alignment: Alignment(0.0, -1.0),
                                ),
                              ),
                              Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: FlutterFlowTheme.of(context).primary,
                                    width: 1.0,
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10.0, 15.0, 10.0, 15.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height:
                                            MediaQuery.sizeOf(context).height *
                                                0.024,
                                        decoration: BoxDecoration(),
                                        child: AutoSizeText(
                                          'JOHN DOE',
                                          style: FlutterFlowTheme.of(context)
                                              .titleSmall
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmallFamily,
                                                fontSize: 24.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.normal,
                                                useGoogleFonts:
                                                    !FlutterFlowTheme.of(
                                                            context)
                                                        .titleSmallIsCustom,
                                              ),
                                        ),
                                      ),
                                      Container(
                                        height:
                                            MediaQuery.sizeOf(context).height *
                                                0.02,
                                        decoration: BoxDecoration(),
                                        child: AutoSizeText(
                                          'Homeowner',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily,
                                                fontSize: 16.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.bold,
                                                useGoogleFonts:
                                                    !FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMediumIsCustom,
                                              ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 20.0, 0.0, 0.0),
                                        child: Container(
                                          height: MediaQuery.sizeOf(context)
                                                  .height *
                                              0.055,
                                          constraints: BoxConstraints(
                                            maxHeight: 60.0,
                                          ),
                                          decoration: BoxDecoration(),
                                          child: AutoSizeText(
                                            '\"When I needed help, I found a trusted technician quickly. Everything was smooth from diagnosis to repair.\"',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily,
                                                  letterSpacing: 0.0,
                                                  useGoogleFonts:
                                                      !FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumIsCustom,
                                                ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                  ][index]();
                },
              ),
            ),
            Container(
              width: double.infinity,
              height: MediaQuery.sizeOf(context).width < kBreakpointSmall
                  ? 80.0
                  : 100.0,
              decoration: BoxDecoration(
                border: Border.all(
                  color: FlutterFlowTheme.of(context).primary,
                  width: 1.0,
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  if (responsiveVisibility(
                    context: context,
                    phone: false,
                  ))
                    Container(
                      width: 100.0,
                      height: double.infinity,
                      decoration: BoxDecoration(),
                      child: Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Icon(
                          Icons.language,
                          color: FlutterFlowTheme.of(context).primary,
                          size: 50.0,
                        ),
                      ),
                    ),
                  if (responsiveVisibility(
                    context: context,
                    phone: false,
                  ))
                    VerticalDivider(
                      width: 1.0,
                      thickness: 1.0,
                      color: FlutterFlowTheme.of(context).primary,
                    ),
                  Expanded(
                    child: Align(
                      alignment: AlignmentDirectional(1.0, 0.0),
                      child: Container(
                        height: double.infinity,
                        constraints: BoxConstraints(
                          maxWidth: 800.0,
                        ),
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primary,
                        ),
                        child: MouseRegion(
                          opaque: false,
                          cursor: SystemMouseCursors.click ?? MouseCursor.defer,
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 0.0, 10.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  'VIEW ALL REVIEWS',
                                  style: FlutterFlowTheme.of(context)
                                      .titleLarge
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .titleLargeFamily,
                                        color: FlutterFlowTheme.of(context)
                                            .secondary,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.normal,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .titleLargeIsCustom,
                                      ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10.0, 0.0, 0.0, 0.0),
                                  child: Icon(
                                    Icons.arrow_forward,
                                    color:
                                        FlutterFlowTheme.of(context).secondary,
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
                  ),
                ],
              ),
            ),
          ].divide(SizedBox(
              height: valueOrDefault<double>(
            MediaQuery.sizeOf(context).width < kBreakpointSmall ? 25.0 : 50.0,
            50.0,
          ))),
        ),
      ),
    );
  }
}
