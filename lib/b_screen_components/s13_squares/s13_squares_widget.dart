import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 's13_squares_model.dart';
export 's13_squares_model.dart';

class S13SquaresWidget extends StatefulWidget {
  const S13SquaresWidget({super.key});

  @override
  State<S13SquaresWidget> createState() => _S13SquaresWidgetState();
}

class _S13SquaresWidgetState extends State<S13SquaresWidget> {
  late S13SquaresModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => S13SquaresModel());

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
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(18.0, 18.0, 18.0, 18.0),
        child: MasonryGridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: () {
              if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                return 1;
              } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
                return 2;
              } else {
                return 4;
              }
            }(),
          ),
          crossAxisSpacing: () {
            if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
              return 16.0;
            } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
              return 18.0;
            } else {
              return 30.0;
            }
          }(),
          mainAxisSpacing: () {
            if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
              return 16.0;
            } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
              return 18.0;
            } else {
              return 0.0;
            }
          }(),
          itemCount: 4,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return [
              () => Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 18.0),
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
                            height: MediaQuery.sizeOf(context).height * 0.37,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black,
                                  offset: Offset(
                                    8.0,
                                    8.0,
                                  ),
                                )
                              ],
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).primary,
                                width: 3.0,
                              ),
                            ),
                            child: Container(
                              width: MediaQuery.sizeOf(context).width <
                                      kBreakpointLarge
                                  ? double.infinity
                                  : (MediaQuery.sizeOf(context).width * 0.502),
                              constraints: BoxConstraints(
                                maxWidth: valueOrDefault<double>(
                                  MediaQuery.sizeOf(context).width <
                                          kBreakpointLarge
                                      ? double.infinity
                                      : 1055.0,
                                  1055.0,
                                ),
                                maxHeight: 800.0,
                              ),
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                borderRadius: BorderRadius.only(),
                                border: Border.all(
                                  color: FlutterFlowTheme.of(context).primary,
                                  width: 1.0,
                                ),
                              ),
                              child: Stack(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.all(valueOrDefault<double>(
                                      MediaQuery.sizeOf(context).width <
                                              kBreakpointSmall
                                          ? 25.0
                                          : 14.0,
                                      50.0,
                                    )),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Icon(
                                          Icons.search,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          size: 50.0,
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10.0, 10.0, 0.0, 0.0),
                                          child: Container(
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.33,
                                            constraints: BoxConstraints(
                                              minWidth: valueOrDefault<double>(
                                                MediaQuery.sizeOf(context)
                                                            .width <
                                                        kBreakpointLarge
                                                    ? 500.0
                                                    : 430.0,
                                                430.0,
                                              ),
                                              maxHeight: 90.0,
                                            ),
                                            decoration: BoxDecoration(),
                                            child: AutoSizeText(
                                              'IDENTIFY MODEL & SERIAL  ',
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
                                                        lineHeight: 0.9,
                                                        useGoogleFonts:
                                                            !FlutterFlowTheme
                                                                    .of(context)
                                                                .headlineLargeIsCustom,
                                                      ),
                                            ),
                                          ),
                                        ),
                                        AutoSizeText(
                                          'Can\'t find your labels? Use our visuallocator guide to post identification plates on ant unit.',
                                          textAlign: TextAlign.start,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyLarge
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLargeFamily,
                                                fontSize: 19.0,
                                                letterSpacing: 0.0,
                                                useGoogleFonts:
                                                    !FlutterFlowTheme.of(
                                                            context)
                                                        .bodyLargeIsCustom,
                                              ),
                                        ),
                                        Container(
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondary,
                                          ),
                                          child: MouseRegion(
                                            opaque: false,
                                            cursor: SystemMouseCursors.click ??
                                                MouseCursor.defer,
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                context.pushNamed(
                                                    CLibraryVideoFlowWidget
                                                        .routeName);
                                              },
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            -1.0, 0.0),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  10.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Text(
                                                        'LAUNCH DIAGNOSIS',
                                                        textAlign:
                                                            TextAlign.start,
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .titleSmall
                                                            .override(
                                                              fontFamily:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmallFamily,
                                                              fontSize: 18.0,
                                                              letterSpacing:
                                                                  0.0,
                                                              useGoogleFonts:
                                                                  !FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmallIsCustom,
                                                            ),
                                                      ),
                                                    ),
                                                  ),
                                                  Divider(
                                                    thickness: 4.0,
                                                    indent: 10.0,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                  ),
                                                ],
                                              ),
                                            ),
                                            onEnter: ((event) async {
                                              safeSetState(() => _model
                                                  .mouseRegionHovered1 = true);
                                            }),
                                            onExit: ((event) async {
                                              safeSetState(() => _model
                                                  .mouseRegionHovered1 = false);
                                            }),
                                          ),
                                        ),
                                      ],
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
                          height: MediaQuery.sizeOf(context).height * 0.37,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black,
                                offset: Offset(
                                  8.0,
                                  8.0,
                                ),
                              )
                            ],
                            border: Border.all(
                              color: FlutterFlowTheme.of(context).primary,
                              width: 3.0,
                            ),
                          ),
                          child: Container(
                            width: MediaQuery.sizeOf(context).width <
                                    kBreakpointLarge
                                ? double.infinity
                                : (MediaQuery.sizeOf(context).width * 0.502),
                            constraints: BoxConstraints(
                              maxWidth: valueOrDefault<double>(
                                MediaQuery.sizeOf(context).width <
                                        kBreakpointLarge
                                    ? double.infinity
                                    : 1055.0,
                                1055.0,
                              ),
                              maxHeight: 800.0,
                            ),
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              borderRadius: BorderRadius.only(),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).primary,
                                width: 1.0,
                              ),
                            ),
                            child: Stack(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(-1.77, -9.92),
                                  child: Padding(
                                    padding:
                                        EdgeInsets.all(valueOrDefault<double>(
                                      MediaQuery.sizeOf(context).width <
                                              kBreakpointSmall
                                          ? 25.0
                                          : 14.0,
                                      50.0,
                                    )),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Wrap(
                                          spacing: 0.0,
                                          runSpacing: 0.0,
                                          alignment: WrapAlignment.start,
                                          crossAxisAlignment:
                                              WrapCrossAlignment.center,
                                          direction: Axis.horizontal,
                                          runAlignment: WrapAlignment.start,
                                          verticalDirection:
                                              VerticalDirection.down,
                                          clipBehavior: Clip.none,
                                          children: [
                                            Icon(
                                              Icons.video_chat,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              size: 50.0,
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      10.0, 10.0, 0.0, 0.0),
                                              child: Container(
                                                width:
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        0.33,
                                                constraints: BoxConstraints(
                                                  minWidth:
                                                      valueOrDefault<double>(
                                                    MediaQuery.sizeOf(context)
                                                                .width <
                                                            kBreakpointLarge
                                                        ? 500.0
                                                        : 430.0,
                                                    430.0,
                                                  ),
                                                  maxHeight: 90.0,
                                                ),
                                                decoration: BoxDecoration(),
                                                child: AutoSizeText(
                                                  'DIAGNOSIS VIDEOS',
                                                  style:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .headlineSmall
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .headlineSmallFamily,
                                                            letterSpacing: MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    kBreakpointSmall
                                                                ? FFAppConstants
                                                                    .LetterSpacingM
                                                                : FFAppConstants
                                                                    .LetterSpacingTD,
                                                            lineHeight: 0.9,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .headlineSmallIsCustom,
                                                          ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        AutoSizeText(
                                          'Step-by-step technical teardowns and visual error code guides for every brand.',
                                          textAlign: TextAlign.start,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyLarge
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLargeFamily,
                                                fontSize: 19.0,
                                                letterSpacing: 0.0,
                                                useGoogleFonts:
                                                    !FlutterFlowTheme.of(
                                                            context)
                                                        .bodyLargeIsCustom,
                                              ),
                                        ),
                                        Container(
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondary,
                                          ),
                                          child: MouseRegion(
                                            opaque: false,
                                            cursor: SystemMouseCursors.click ??
                                                MouseCursor.defer,
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                context.pushNamed(
                                                    CLibraryVideoFlowWidget
                                                        .routeName);
                                              },
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            -1.0, 0.0),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  10.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Text(
                                                        'WATCH NOW',
                                                        textAlign:
                                                            TextAlign.start,
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .titleSmall
                                                            .override(
                                                              fontFamily:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmallFamily,
                                                              fontSize: 18.0,
                                                              letterSpacing:
                                                                  0.0,
                                                              useGoogleFonts:
                                                                  !FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmallIsCustom,
                                                            ),
                                                      ),
                                                    ),
                                                  ),
                                                  Divider(
                                                    thickness: 4.0,
                                                    indent: 10.0,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                  ),
                                                ],
                                              ),
                                            ),
                                            onEnter: ((event) async {
                                              safeSetState(() => _model
                                                  .mouseRegionHovered2 = true);
                                            }),
                                            onExit: ((event) async {
                                              safeSetState(() => _model
                                                  .mouseRegionHovered2 = false);
                                            }),
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
                          height: MediaQuery.sizeOf(context).height * 0.37,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black,
                                offset: Offset(
                                  8.0,
                                  8.0,
                                ),
                              )
                            ],
                            border: Border.all(
                              color: FlutterFlowTheme.of(context).primary,
                              width: 3.0,
                            ),
                          ),
                          child: Container(
                            width: MediaQuery.sizeOf(context).width <
                                    kBreakpointLarge
                                ? double.infinity
                                : (MediaQuery.sizeOf(context).width * 0.502),
                            constraints: BoxConstraints(
                              maxWidth: valueOrDefault<double>(
                                MediaQuery.sizeOf(context).width <
                                        kBreakpointLarge
                                    ? double.infinity
                                    : 1055.0,
                                1055.0,
                              ),
                              maxHeight: 800.0,
                            ),
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
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
                                  width:
                                      MediaQuery.sizeOf(context).width * 0.429,
                                  height:
                                      MediaQuery.sizeOf(context).width * 0.429,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.all(valueOrDefault<double>(
                                    MediaQuery.sizeOf(context).width <
                                            kBreakpointSmall
                                        ? 25.0
                                        : 14.0,
                                    50.0,
                                  )),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Wrap(
                                        spacing: 0.0,
                                        runSpacing: 0.0,
                                        alignment: WrapAlignment.start,
                                        crossAxisAlignment:
                                            WrapCrossAlignment.center,
                                        direction: Axis.horizontal,
                                        runAlignment: WrapAlignment.start,
                                        verticalDirection:
                                            VerticalDirection.down,
                                        clipBehavior: Clip.none,
                                        children: [
                                          Icon(
                                            Icons.shopping_cart,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            size: 50.0,
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 10.0, 0.0, 0.0),
                                            child: Container(
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.33,
                                              constraints: BoxConstraints(
                                                minWidth:
                                                    valueOrDefault<double>(
                                                  MediaQuery.sizeOf(context)
                                                              .width <
                                                          kBreakpointLarge
                                                      ? 500.0
                                                      : 430.0,
                                                  430.0,
                                                ),
                                                maxHeight: 90.0,
                                              ),
                                              decoration: BoxDecoration(),
                                              child: AutoSizeText(
                                                'ORDER PARTS',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineSmall
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .headlineSmallFamily,
                                                          letterSpacing: MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .width <
                                                                  kBreakpointSmall
                                                              ? FFAppConstants
                                                                  .LetterSpacingM
                                                              : FFAppConstants
                                                                  .LetterSpacingTD,
                                                          lineHeight: 0.9,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .headlineSmallIsCustom,
                                                        ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      AutoSizeText(
                                        'Direct access to OEM Capacitors, fan motors, and control boards with overnight shipping.',
                                        textAlign: TextAlign.start,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyLarge
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyLargeFamily,
                                              letterSpacing: 0.0,
                                              useGoogleFonts:
                                                  !FlutterFlowTheme.of(context)
                                                      .bodyLargeIsCustom,
                                            ),
                                      ),
                                      Container(
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondary,
                                        ),
                                        child: MouseRegion(
                                          opaque: false,
                                          cursor: SystemMouseCursors.click ??
                                              MouseCursor.defer,
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              context.pushNamed(
                                                  DSelectProductRepairWidget
                                                      .routeName);
                                            },
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          -1.0, 0.0),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(10.0, 0.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      'BROWSE INVENTORY',
                                                      textAlign:
                                                          TextAlign.start,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .titleSmall
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmallFamily,
                                                            fontSize: 18.0,
                                                            letterSpacing: 0.0,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmallIsCustom,
                                                          ),
                                                    ),
                                                  ),
                                                ),
                                                Divider(
                                                  thickness: 4.0,
                                                  indent: 10.0,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                ),
                                              ],
                                            ),
                                          ),
                                          onEnter: ((event) async {
                                            safeSetState(() => _model
                                                .mouseRegionHovered3 = true);
                                          }),
                                          onExit: ((event) async {
                                            safeSetState(() => _model
                                                .mouseRegionHovered3 = false);
                                          }),
                                        ),
                                      ),
                                    ],
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
                          height: MediaQuery.sizeOf(context).height * 0.37,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black,
                                offset: Offset(
                                  8.0,
                                  8.0,
                                ),
                              )
                            ],
                            border: Border.all(
                              color: FlutterFlowTheme.of(context).primary,
                              width: 3.0,
                            ),
                          ),
                          child: Container(
                            width: MediaQuery.sizeOf(context).width <
                                    kBreakpointLarge
                                ? double.infinity
                                : (MediaQuery.sizeOf(context).width * 0.502),
                            constraints: BoxConstraints(
                              maxWidth: valueOrDefault<double>(
                                MediaQuery.sizeOf(context).width <
                                        kBreakpointLarge
                                    ? double.infinity
                                    : 1055.0,
                                1055.0,
                              ),
                              maxHeight: 800.0,
                            ),
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
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
                                  width:
                                      MediaQuery.sizeOf(context).width * 0.429,
                                  height:
                                      MediaQuery.sizeOf(context).width * 0.429,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.all(valueOrDefault<double>(
                                    MediaQuery.sizeOf(context).width <
                                            kBreakpointSmall
                                        ? 25.0
                                        : 14.0,
                                    50.0,
                                  )),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Wrap(
                                        spacing: 0.0,
                                        runSpacing: 0.0,
                                        alignment: WrapAlignment.start,
                                        crossAxisAlignment:
                                            WrapCrossAlignment.center,
                                        direction: Axis.horizontal,
                                        runAlignment: WrapAlignment.start,
                                        verticalDirection:
                                            VerticalDirection.down,
                                        clipBehavior: Clip.none,
                                        children: [
                                          Icon(
                                            Icons.chat_rounded,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            size: 50.0,
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 10.0, 0.0, 0.0),
                                            child: Container(
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.33,
                                              constraints: BoxConstraints(
                                                minWidth:
                                                    valueOrDefault<double>(
                                                  MediaQuery.sizeOf(context)
                                                              .width <
                                                          kBreakpointLarge
                                                      ? 500.0
                                                      : 430.0,
                                                  430.0,
                                                ),
                                                maxHeight: 90.0,
                                              ),
                                              decoration: BoxDecoration(),
                                              child: AutoSizeText(
                                                'FIND HELP',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineSmall
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .headlineSmallFamily,
                                                          letterSpacing: MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .width <
                                                                  kBreakpointSmall
                                                              ? FFAppConstants
                                                                  .LetterSpacingM
                                                              : FFAppConstants
                                                                  .LetterSpacingTD,
                                                          lineHeight: 0.9,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .headlineSmallIsCustom,
                                                        ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      AutoSizeText(
                                        'Connect with certified technicians for a remote consult or find a local expert nearby.',
                                        textAlign: TextAlign.start,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyLarge
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyLargeFamily,
                                              letterSpacing: 0.0,
                                              useGoogleFonts:
                                                  !FlutterFlowTheme.of(context)
                                                      .bodyLargeIsCustom,
                                            ),
                                      ),
                                      Container(
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondary,
                                        ),
                                        child: MouseRegion(
                                          opaque: false,
                                          cursor: SystemMouseCursors.click ??
                                              MouseCursor.defer,
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              context.pushNamed(
                                                  LRequestTechnicalWidget
                                                      .routeName);
                                            },
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          -1.0, 0.0),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(10.0, 0.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      'GET SUPPORT',
                                                      textAlign:
                                                          TextAlign.start,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .titleSmall
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmallFamily,
                                                            fontSize: 18.0,
                                                            letterSpacing: 0.0,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmallIsCustom,
                                                          ),
                                                    ),
                                                  ),
                                                ),
                                                Divider(
                                                  thickness: 4.0,
                                                  indent: 10.0,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                ),
                                              ],
                                            ),
                                          ),
                                          onEnter: ((event) async {
                                            safeSetState(() => _model
                                                .mouseRegionHovered4 = true);
                                          }),
                                          onExit: ((event) async {
                                            safeSetState(() => _model
                                                .mouseRegionHovered4 = false);
                                          }),
                                        ),
                                      ),
                                    ],
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
    );
  }
}
