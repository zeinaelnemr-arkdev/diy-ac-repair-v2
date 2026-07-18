import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'filter_all_parts_copy_model.dart';
export 'filter_all_parts_copy_model.dart';

class FilterAllPartsCopyWidget extends StatefulWidget {
  const FilterAllPartsCopyWidget({super.key});

  @override
  State<FilterAllPartsCopyWidget> createState() =>
      _FilterAllPartsCopyWidgetState();
}

class _FilterAllPartsCopyWidgetState extends State<FilterAllPartsCopyWidget> {
  late FilterAllPartsCopyModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FilterAllPartsCopyModel());

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
          : (MediaQuery.sizeOf(context).width * 0.43),
      constraints: BoxConstraints(
        maxWidth: valueOrDefault<double>(
          MediaQuery.sizeOf(context).width < kBreakpointLarge
              ? double.infinity
              : 400.0,
          600.0,
        ),
      ),
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            decoration: BoxDecoration(),
          ),
          Container(
            decoration: BoxDecoration(),
          ),
          Divider(
            height: 1.0,
            thickness: 1.0,
            color: FlutterFlowTheme.of(context).tertiary,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
              child: Container(
                width: MediaQuery.sizeOf(context).width < kBreakpointLarge
                    ? (MediaQuery.sizeOf(context).width * 0.86)
                    : (MediaQuery.sizeOf(context).width * 0.37),
                constraints: BoxConstraints(
                  maxWidth: valueOrDefault<double>(
                    MediaQuery.sizeOf(context).width < kBreakpointLarge
                        ? double.infinity
                        : 400.0,
                    600.0,
                  ),
                ),
                decoration: BoxDecoration(),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            width: 400.0,
                            constraints: BoxConstraints(
                              maxHeight: double.infinity,
                            ),
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).grey10,
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).primary,
                                width: 3.0,
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 48.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(-1.0, -1.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          24.0, 28.0, 0.0, 18.0),
                                      child: AutoSizeText(
                                        'FILTER',
                                        style: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              font: GoogleFonts.archivoBlack(
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .fontStyle,
                                              ),
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              fontSize: 18.0,
                                              letterSpacing: 0.0,
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .fontStyle,
                                              lineHeight: 1.0,
                                            ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        18.0, 0.0, 18.0, 0.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.0, 0.0),
                                          child: FFButtonWidget(
                                            onPressed: () {
                                              print('Brand pressed ...');
                                            },
                                            text:
                                                'BRAND                                  ',
                                            icon: Icon(
                                              Icons.local_police,
                                              size: 24.0,
                                            ),
                                            options: FFButtonOptions(
                                              width: 320.0,
                                              height: 45.0,
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 10.0, 16.0, 10.0),
                                              iconPadding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 12.0, 0.0),
                                              iconColor:
                                                  FlutterFlowTheme.of(context)
                                                      .accent3,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .grey10,
                                              textStyle: FlutterFlowTheme.of(
                                                      context)
                                                  .titleSmall
                                                  .override(
                                                    fontFamily:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleSmallFamily,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    fontSize: 16.0,
                                                    letterSpacing: 0.0,
                                                    useGoogleFonts:
                                                        !FlutterFlowTheme.of(
                                                                context)
                                                            .titleSmallIsCustom,
                                                  ),
                                              elevation: 0.0,
                                              borderRadius:
                                                  BorderRadius.circular(0.0),
                                              hoverColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              hoverBorderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                              ),
                                              hoverTextColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondary,
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.0, 0.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 14.0, 0.0, 0.0),
                                            child: FFButtonWidget(
                                              onPressed: () async {},
                                              text:
                                                  'MOTOR                                 ',
                                              icon: Icon(
                                                Icons.settings_sharp,
                                                size: 24.0,
                                              ),
                                              options: FFButtonOptions(
                                                width: 320.0,
                                                height: 45.0,
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 10.0, 16.0, 10.0),
                                                iconPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(0.0, 0.0,
                                                            12.0, 0.0),
                                                iconColor:
                                                    FlutterFlowTheme.of(context)
                                                        .accent3,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .grey10,
                                                textStyle: FlutterFlowTheme.of(
                                                        context)
                                                    .titleSmall
                                                    .override(
                                                      fontFamily:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmallFamily,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      fontSize: 16.0,
                                                      letterSpacing: 0.0,
                                                      useGoogleFonts:
                                                          !FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmallIsCustom,
                                                    ),
                                                elevation: 0.0,
                                                borderRadius:
                                                    BorderRadius.circular(0.0),
                                                hoverColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                hoverBorderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                ),
                                                hoverTextColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondary,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.0, 0.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 14.0, 0.0, 0.0),
                                            child: FFButtonWidget(
                                              onPressed: () async {},
                                              text:
                                                  'CONTACTOR                        ',
                                              icon: Icon(
                                                Icons.handyman_rounded,
                                                size: 24.0,
                                              ),
                                              options: FFButtonOptions(
                                                width: 320.0,
                                                height: 45.0,
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 10.0, 16.0, 10.0),
                                                iconPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(0.0, 0.0,
                                                            12.0, 0.0),
                                                iconColor:
                                                    FlutterFlowTheme.of(context)
                                                        .accent3,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .grey10,
                                                textStyle: FlutterFlowTheme.of(
                                                        context)
                                                    .titleSmall
                                                    .override(
                                                      fontFamily:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmallFamily,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      fontSize: 16.0,
                                                      letterSpacing: 0.0,
                                                      useGoogleFonts:
                                                          !FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmallIsCustom,
                                                    ),
                                                elevation: 0.0,
                                                borderRadius:
                                                    BorderRadius.circular(0.0),
                                                hoverColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                hoverBorderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                ),
                                                hoverTextColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondary,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.0, 0.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 14.0, 0.0, 0.0),
                                            child: FFButtonWidget(
                                              onPressed: () async {},
                                              text:
                                                  'CAPACITOR                          ',
                                              icon: Icon(
                                                Icons
                                                    .battery_charging_full_outlined,
                                                size: 24.0,
                                              ),
                                              options: FFButtonOptions(
                                                width: 320.0,
                                                height: 45.0,
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 10.0, 16.0, 10.0),
                                                iconPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(0.0, 0.0,
                                                            12.0, 0.0),
                                                iconColor:
                                                    FlutterFlowTheme.of(context)
                                                        .accent3,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .grey10,
                                                textStyle: FlutterFlowTheme.of(
                                                        context)
                                                    .titleSmall
                                                    .override(
                                                      fontFamily:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmallFamily,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      fontSize: 16.0,
                                                      letterSpacing: 0.0,
                                                      useGoogleFonts:
                                                          !FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmallIsCustom,
                                                    ),
                                                elevation: 0.0,
                                                borderRadius:
                                                    BorderRadius.circular(0.0),
                                                hoverColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                hoverBorderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                ),
                                                hoverTextColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondary,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Divider(
                                    thickness: 3.0,
                                    indent: 24.0,
                                    endIndent: 24.0,
                                    color: FlutterFlowTheme.of(context).primary,
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          24.0, 24.0, 24.0, 10.0),
                                      child: Container(
                                        height:
                                            MediaQuery.sizeOf(context).height *
                                                0.025,
                                        constraints: BoxConstraints(
                                          minHeight: 50.0,
                                          maxHeight: 100.0,
                                        ),
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          border: Border.all(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            width: 4.0,
                                          ),
                                        ),
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: AutoSizeText(
                                                'RESET FILTER',
                                                textAlign: TextAlign.center,
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .titleSmall
                                                    .override(
                                                      fontFamily:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmallFamily,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondary,
                                                      fontSize: 16.0,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      useGoogleFonts:
                                                          !FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmallIsCustom,
                                                    ),
                                              ),
                                            ),
                                          ],
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
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
