import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 's12_footer_model.dart';
export 's12_footer_model.dart';

class S12FooterWidget extends StatefulWidget {
  const S12FooterWidget({super.key});

  @override
  State<S12FooterWidget> createState() => _S12FooterWidgetState();
}

class _S12FooterWidgetState extends State<S12FooterWidget> {
  late S12FooterModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => S12FooterModel());

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
      child: MasonryGridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: valueOrDefault<int>(
            MediaQuery.sizeOf(context).width < kBreakpointSmall ? 1 : 2,
            2,
          ),
        ),
        itemCount: 2,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return [
            () => Container(
                  width: double.infinity,
                  height: 80.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryBackground,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      InkWell(
                        onTap: () async {
                          context.goNamed(AHomePageWidget.routeName);
                        },
                        child: Container(
                          width: 100.0,
                          height: double.infinity,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: FlutterFlowTheme.of(context).primary,
                              width: 1.0,
                            ),
                          ),
                          child: Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Icon(
                              Icons.toll,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 30.0,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: double.infinity,
                          decoration: BoxDecoration(),
                          child: MasonryGridView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            gridDelegate:
                                SliverSimpleGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: valueOrDefault<int>(
                                MediaQuery.sizeOf(context).width <
                                        kBreakpointLarge
                                    ? 2
                                    : 4,
                                4,
                              ),
                            ),
                            itemCount: 5,
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              return [
                                () => FFButtonWidget(
                                      onPressed: () async {
                                        context
                                            .goNamed(AHomePageWidget.routeName);
                                      },
                                      text: 'HOME',
                                      options: FFButtonOptions(
                                        height: valueOrDefault<double>(
                                          MediaQuery.sizeOf(context).width <
                                                  kBreakpointLarge
                                              ? 40.0
                                              : 80.0,
                                          80.0,
                                        ),
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 0.0),
                                        iconPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: Colors.transparent,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .labelLarge
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .labelLargeFamily,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.bold,
                                              useGoogleFonts:
                                                  !FlutterFlowTheme.of(context)
                                                      .labelLargeIsCustom,
                                            ),
                                        elevation: 0.0,
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(0.0),
                                        hoverTextColor:
                                            FlutterFlowTheme.of(context)
                                                .tertiary,
                                      ),
                                      showLoadingIndicator: false,
                                    ),
                                () => FFButtonWidget(
                                      onPressed: () async {
                                        context
                                            .pushNamed(IAboutWidget.routeName);
                                      },
                                      text: 'ABOUT',
                                      options: FFButtonOptions(
                                        height: valueOrDefault<double>(
                                          MediaQuery.sizeOf(context).width <
                                                  kBreakpointLarge
                                              ? 40.0
                                              : 80.0,
                                          80.0,
                                        ),
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            24.0, 0.0, 24.0, 0.0),
                                        iconPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: Colors.transparent,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .labelLarge
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .labelLargeFamily,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.bold,
                                              useGoogleFonts:
                                                  !FlutterFlowTheme.of(context)
                                                      .labelLargeIsCustom,
                                            ),
                                        elevation: 0.0,
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(0.0),
                                        hoverTextColor:
                                            FlutterFlowTheme.of(context)
                                                .tertiary,
                                      ),
                                      showLoadingIndicator: false,
                                    ),
                                () => FFButtonWidget(
                                      onPressed: () async {
                                        context.pushNamed(
                                            DSelectProductRepairWidget
                                                .routeName);
                                      },
                                      text: 'ORDER PARTS',
                                      options: FFButtonOptions(
                                        height: valueOrDefault<double>(
                                          MediaQuery.sizeOf(context).width <
                                                  kBreakpointLarge
                                              ? 40.0
                                              : 80.0,
                                          80.0,
                                        ),
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 0.0),
                                        iconPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: Colors.transparent,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .labelLarge
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .labelLargeFamily,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.bold,
                                              useGoogleFonts:
                                                  !FlutterFlowTheme.of(context)
                                                      .labelLargeIsCustom,
                                            ),
                                        elevation: 0.0,
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(0.0),
                                        hoverTextColor:
                                            FlutterFlowTheme.of(context)
                                                .tertiary,
                                      ),
                                      showLoadingIndicator: false,
                                    ),
                                () => FFButtonWidget(
                                      onPressed: () async {
                                        context.pushNamed(
                                            KContactWidget.routeName);
                                      },
                                      text: 'CONTACT',
                                      options: FFButtonOptions(
                                        height: valueOrDefault<double>(
                                          MediaQuery.sizeOf(context).width <
                                                  kBreakpointLarge
                                              ? 40.0
                                              : 80.0,
                                          80.0,
                                        ),
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 0.0),
                                        iconPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: Colors.transparent,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .labelLarge
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .labelLargeFamily,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.bold,
                                              useGoogleFonts:
                                                  !FlutterFlowTheme.of(context)
                                                      .labelLargeIsCustom,
                                            ),
                                        elevation: 0.0,
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(0.0),
                                        hoverTextColor:
                                            FlutterFlowTheme.of(context)
                                                .tertiary,
                                      ),
                                      showLoadingIndicator: false,
                                    ),
                                () => FFButtonWidget(
                                      onPressed: () async {
                                        context.pushNamed(
                                            GTrackAndFindMyOrderWidget
                                                .routeName);
                                      },
                                      text: 'TRACK ORDERS',
                                      options: FFButtonOptions(
                                        height: valueOrDefault<double>(
                                          MediaQuery.sizeOf(context).width <
                                                  kBreakpointLarge
                                              ? 40.0
                                              : 80.0,
                                          80.0,
                                        ),
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 0.0),
                                        iconPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: Colors.transparent,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .labelLarge
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .labelLargeFamily,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.bold,
                                              useGoogleFonts:
                                                  !FlutterFlowTheme.of(context)
                                                      .labelLargeIsCustom,
                                            ),
                                        elevation: 0.0,
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                            .primary,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(0.0),
                                        hoverTextColor:
                                            FlutterFlowTheme.of(context)
                                                .tertiary,
                                      ),
                                      showLoadingIndicator: false,
                                    ),
                              ][index]();
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
            () => Container(
                  width: double.infinity,
                  height: 80.0,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: FlutterFlowTheme.of(context).primary,
                      width: 1.0,
                    ),
                  ),
                  child: Visibility(
                    visible: false,
                    child: Align(
                      alignment: AlignmentDirectional(1.0, 0.0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            25.0, 20.0, 25.0, 20.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Image.asset(
                              'assets/images/Logo_2.png',
                              height: 20.0,
                              fit: BoxFit.contain,
                            ),
                            Flexible(
                              child: AutoSizeText(
                                '© 2026 THE COMPANY. ALL RIGHTS RESERVED.',
                                textAlign: TextAlign.end,
                                style: FlutterFlowTheme.of(context)
                                    .labelLarge
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .labelLargeFamily,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                      useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                              .labelLargeIsCustom,
                                    ),
                              ),
                            ),
                          ].divide(SizedBox(height: 5.0)),
                        ),
                      ),
                    ),
                  ),
                ),
          ][index]();
        },
      ),
    );
  }
}
