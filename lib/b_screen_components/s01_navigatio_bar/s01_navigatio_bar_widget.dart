import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 's01_navigatio_bar_model.dart';
export 's01_navigatio_bar_model.dart';

class S01NavigatioBarWidget extends StatefulWidget {
  const S01NavigatioBarWidget({super.key});

  @override
  State<S01NavigatioBarWidget> createState() => _S01NavigatioBarWidgetState();
}

class _S01NavigatioBarWidgetState extends State<S01NavigatioBarWidget> {
  late S01NavigatioBarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => S01NavigatioBarModel());

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
      height: valueOrDefault<double>(
        MediaQuery.sizeOf(context).width < kBreakpointSmall ? 40.0 : 80.0,
        80.0,
      ),
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: double.infinity,
            decoration: BoxDecoration(),
            child: InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                context.pushNamed(AHomePageWidget.routeName);
              },
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 0.0, 0.0),
                    child: Icon(
                      Icons.settings_input_component_rounded,
                      color: FlutterFlowTheme.of(context).primaryText,
                      size: 24.0,
                    ),
                  ),
                  Text(
                    'DIY AC REPAIR',
                    style: FlutterFlowTheme.of(context).titleMedium.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).titleMediumFamily,
                          color: FlutterFlowTheme.of(context).primaryText,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w900,
                          lineHeight: 1.4,
                          useGoogleFonts:
                              !FlutterFlowTheme.of(context).titleMediumIsCustom,
                        ),
                  ),
                ].divide(SizedBox(width: 8.0)),
              ),
            ),
          ),
          if (responsiveVisibility(
            context: context,
            phone: false,
            tablet: false,
            tabletLandscape: false,
          ))
            VerticalDivider(
              width: 1.0,
              thickness: 1.0,
              color: FlutterFlowTheme.of(context).primaryBackground,
            ),
          Expanded(
            child: Container(
              width: 100.0,
              height: double.infinity,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).primaryBackground,
                border: Border.all(
                  color: FlutterFlowTheme.of(context).primaryBackground,
                ),
              ),
              child: Visibility(
                visible: responsiveVisibility(
                  context: context,
                  desktop: false,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed(EReviewYourOrderWidget.routeName);
                      },
                      child: Icon(
                        Icons.shopping_cart_rounded,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 24.0,
                      ),
                    ),
                    if (false)
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.pushNamed(LUserProfileWidget.routeName);
                        },
                        child: Icon(
                          Icons.person,
                          color: FlutterFlowTheme.of(context).primaryText,
                          size: 24.0,
                        ),
                      ),
                  ].divide(SizedBox(width: 12.0)),
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
            VerticalDivider(
              width: 1.0,
              thickness: 1.0,
              color: FlutterFlowTheme.of(context).primaryBackground,
            ),
          if (responsiveVisibility(
            context: context,
            phone: false,
            tablet: false,
            tabletLandscape: false,
          ))
            Container(
              height: double.infinity,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).primaryBackground,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  FFButtonWidget(
                    onPressed: () async {
                      context.goNamed(AHomePageWidget.routeName);
                    },
                    text: 'HOME',
                    options: FFButtonOptions(
                      height: double.infinity,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: Colors.transparent,
                      textStyle: FlutterFlowTheme.of(context)
                          .titleSmall
                          .override(
                            fontFamily:
                                FlutterFlowTheme.of(context).titleSmallFamily,
                            letterSpacing: 0.0,
                            useGoogleFonts: !FlutterFlowTheme.of(context)
                                .titleSmallIsCustom,
                          ),
                      elevation: 0.0,
                      borderRadius: BorderRadius.circular(0.0),
                      hoverTextColor: FlutterFlowTheme.of(context).tertiary,
                    ),
                    showLoadingIndicator: false,
                  ),
                  FFButtonWidget(
                    onPressed: () async {
                      context.pushNamed(IAboutWidget.routeName);
                    },
                    text: 'ABOUT',
                    options: FFButtonOptions(
                      height: double.infinity,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: Colors.transparent,
                      textStyle: FlutterFlowTheme.of(context)
                          .titleSmall
                          .override(
                            fontFamily:
                                FlutterFlowTheme.of(context).titleSmallFamily,
                            letterSpacing: 0.0,
                            useGoogleFonts: !FlutterFlowTheme.of(context)
                                .titleSmallIsCustom,
                          ),
                      elevation: 0.0,
                      borderRadius: BorderRadius.circular(0.0),
                      hoverTextColor: FlutterFlowTheme.of(context).tertiary,
                    ),
                    showLoadingIndicator: false,
                  ),
                  FFButtonWidget(
                    onPressed: () async {
                      context.pushNamed(DSelectProductRepairWidget.routeName);
                    },
                    text: 'ORDER PARTS',
                    options: FFButtonOptions(
                      height: double.infinity,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: Colors.transparent,
                      textStyle: FlutterFlowTheme.of(context)
                          .titleSmall
                          .override(
                            fontFamily:
                                FlutterFlowTheme.of(context).titleSmallFamily,
                            letterSpacing: 0.0,
                            useGoogleFonts: !FlutterFlowTheme.of(context)
                                .titleSmallIsCustom,
                          ),
                      elevation: 0.0,
                      borderRadius: BorderRadius.circular(0.0),
                      hoverTextColor: FlutterFlowTheme.of(context).tertiary,
                    ),
                    showLoadingIndicator: false,
                  ),
                  FFButtonWidget(
                    onPressed: () async {
                      context.pushNamed(GTrackAndFindMyOrderWidget.routeName);
                    },
                    text: 'TRACK ORDERS',
                    options: FFButtonOptions(
                      height: double.infinity,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: Colors.transparent,
                      textStyle: FlutterFlowTheme.of(context)
                          .titleSmall
                          .override(
                            fontFamily:
                                FlutterFlowTheme.of(context).titleSmallFamily,
                            letterSpacing: 0.0,
                            useGoogleFonts: !FlutterFlowTheme.of(context)
                                .titleSmallIsCustom,
                          ),
                      elevation: 0.0,
                      borderRadius: BorderRadius.circular(0.0),
                      hoverTextColor: FlutterFlowTheme.of(context).tertiary,
                    ),
                    showLoadingIndicator: false,
                  ),
                  FFButtonWidget(
                    onPressed: () async {
                      context.pushNamed(KContactWidget.routeName);
                    },
                    text: 'CONTACT',
                    options: FFButtonOptions(
                      height: 80.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: Colors.transparent,
                      textStyle: FlutterFlowTheme.of(context)
                          .titleSmall
                          .override(
                            fontFamily:
                                FlutterFlowTheme.of(context).titleSmallFamily,
                            letterSpacing: 0.0,
                            useGoogleFonts: !FlutterFlowTheme.of(context)
                                .titleSmallIsCustom,
                          ),
                      elevation: 0.0,
                      borderRadius: BorderRadius.circular(0.0),
                      hoverTextColor: FlutterFlowTheme.of(context).tertiary,
                    ),
                    showLoadingIndicator: false,
                  ),
                ]
                    .divide(SizedBox(width: 30.0))
                    .addToStart(SizedBox(width: 20.0))
                    .addToEnd(SizedBox(width: 20.0)),
              ),
            ),
          if (responsiveVisibility(
            context: context,
            desktop: false,
          ))
            FlutterFlowIconButton(
              borderRadius: 0.0,
              borderWidth: 0.0,
              buttonSize: valueOrDefault<double>(
                MediaQuery.sizeOf(context).width < kBreakpointSmall
                    ? 40.0
                    : 80.0,
                80.0,
              ),
              fillColor: FlutterFlowTheme.of(context).primaryBackground,
              hoverColor: FlutterFlowTheme.of(context).primaryBackground,
              hoverIconColor: FlutterFlowTheme.of(context).tertiary,
              icon: Icon(
                Icons.menu,
                color: FlutterFlowTheme.of(context).primary,
                size: valueOrDefault<double>(
                  MediaQuery.sizeOf(context).width < kBreakpointSmall
                      ? 20.0
                      : 40.0,
                  40.0,
                ),
              ),
              onPressed: () async {
                context.pushNamed(HamburgerNavWidget.routeName);
              },
            ),
          if (responsiveVisibility(
            context: context,
            phone: false,
            tablet: false,
            tabletLandscape: false,
          ))
            FlutterFlowIconButton(
              buttonSize: 80.0,
              fillColor: FlutterFlowTheme.of(context).primary,
              icon: Icon(
                Icons.shopping_cart_rounded,
                color: FlutterFlowTheme.of(context).primaryBackground,
                size: 28.0,
              ),
              onPressed: () async {
                context.pushNamed(EReviewYourOrderWidget.routeName);
              },
            ),
          if (false &&
              responsiveVisibility(
                context: context,
                phone: false,
                tablet: false,
                tabletLandscape: false,
              ))
            FlutterFlowIconButton(
              buttonSize: 80.0,
              fillColor: FlutterFlowTheme.of(context).primary,
              icon: Icon(
                Icons.person,
                color: FlutterFlowTheme.of(context).primaryBackground,
                size: 28.0,
              ),
              onPressed: () async {
                context.pushNamed(LUserProfileWidget.routeName);
              },
            ),
          if (false &&
              responsiveVisibility(
                context: context,
                phone: false,
                tablet: false,
                tabletLandscape: false,
              ))
            FFButtonWidget(
              onPressed: () {
                print('Button-GetStartedBtn pressed ...');
              },
              text: 'LOGIN',
              options: FFButtonOptions(
                height: double.infinity,
                padding: EdgeInsetsDirectional.fromSTEB(40.0, 0.0, 40.0, 0.0),
                iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                color: FlutterFlowTheme.of(context).primary,
                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                      fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                      color: FlutterFlowTheme.of(context).primaryBackground,
                      letterSpacing: 0.0,
                      useGoogleFonts:
                          !FlutterFlowTheme.of(context).titleSmallIsCustom,
                    ),
                elevation: 0.0,
                borderRadius: BorderRadius.circular(0.0),
              ),
              showLoadingIndicator: false,
            ),
        ],
      ),
    );
  }
}
