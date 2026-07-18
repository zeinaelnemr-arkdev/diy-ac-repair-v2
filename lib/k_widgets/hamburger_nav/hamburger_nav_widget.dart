import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'hamburger_nav_model.dart';
export 'hamburger_nav_model.dart';

class HamburgerNavWidget extends StatefulWidget {
  const HamburgerNavWidget({super.key});

  static String routeName = 'Hamburger_nav';
  static String routePath = '/hamburgerNav';

  @override
  State<HamburgerNavWidget> createState() => _HamburgerNavWidgetState();
}

class _HamburgerNavWidgetState extends State<HamburgerNavWidget> {
  late HamburgerNavModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HamburgerNavModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: AlignmentDirectional(1.0, -1.0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 24.0, 0.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.safePop();
                  },
                  child: Icon(
                    Icons.close,
                    color: FlutterFlowTheme.of(context).primaryText,
                    size: 28.0,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(24.0, 120.0, 0.0, 0.0),
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  context.goNamed(AHomePageWidget.routeName);
                },
                child: Container(
                  width: double.infinity,
                  child: Text(
                    'HOME',
                    style: FlutterFlowTheme.of(context).headlineMedium.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).headlineMediumFamily,
                          letterSpacing: 0.0,
                          lineHeight: 1.1,
                          useGoogleFonts: !FlutterFlowTheme.of(context)
                              .headlineMediumIsCustom,
                        ),
                  ),
                ),
              ),
            ),
            Container(
              width: 392.0,
              height: 1.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).alternate,
                shape: BoxShape.rectangle,
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(24.0, 64.0, 0.0, 0.0),
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  context.goNamed(IAboutWidget.routeName);
                },
                child: Container(
                  width: double.infinity,
                  child: Text(
                    'ABOUT',
                    style: FlutterFlowTheme.of(context).headlineMedium.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).headlineMediumFamily,
                          letterSpacing: 0.0,
                          lineHeight: 1.1,
                          useGoogleFonts: !FlutterFlowTheme.of(context)
                              .headlineMediumIsCustom,
                        ),
                  ),
                ),
              ),
            ),
            Container(
              width: 392.0,
              height: 1.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).alternate,
                shape: BoxShape.rectangle,
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(24.0, 64.0, 0.0, 0.0),
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  context.goNamed(DSelectProductRepairWidget.routeName);
                },
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(),
                  child: Text(
                    'ORDER PARTS',
                    style: FlutterFlowTheme.of(context).headlineMedium.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).headlineMediumFamily,
                          letterSpacing: 0.0,
                          lineHeight: 1.1,
                          useGoogleFonts: !FlutterFlowTheme.of(context)
                              .headlineMediumIsCustom,
                        ),
                  ),
                ),
              ),
            ),
            Container(
              width: 392.0,
              height: 1.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).alternate,
                shape: BoxShape.rectangle,
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(24.0, 64.0, 0.0, 0.0),
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  context.goNamed(GTrackAndFindMyOrderWidget.routeName);
                },
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(),
                  child: Text(
                    'TRACK ORDERS',
                    style: FlutterFlowTheme.of(context).headlineMedium.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).headlineMediumFamily,
                          letterSpacing: 0.0,
                          lineHeight: 1.1,
                          useGoogleFonts: !FlutterFlowTheme.of(context)
                              .headlineMediumIsCustom,
                        ),
                  ),
                ),
              ),
            ),
            Container(
              width: 392.0,
              height: 1.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).alternate,
                shape: BoxShape.rectangle,
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(24.0, 64.0, 0.0, 0.0),
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  context.goNamed(KContactWidget.routeName);
                },
                child: Container(
                  width: double.infinity,
                  child: Text(
                    'CONTACT',
                    style: FlutterFlowTheme.of(context).headlineMedium.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).headlineMediumFamily,
                          letterSpacing: 0.0,
                          lineHeight: 1.1,
                          useGoogleFonts: !FlutterFlowTheme.of(context)
                              .headlineMediumIsCustom,
                        ),
                  ),
                ),
              ),
            ),
            Container(
              width: 392.0,
              height: 1.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).alternate,
                shape: BoxShape.rectangle,
              ),
            ),
            if (false)
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(24.0, 64.0, 0.0, 0.0),
                child: Container(
                  width: double.infinity,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        'LOG IN',
                        style: FlutterFlowTheme.of(context)
                            .headlineMedium
                            .override(
                              fontFamily: FlutterFlowTheme.of(context)
                                  .headlineMediumFamily,
                              letterSpacing: 0.0,
                              lineHeight: 1.1,
                              useGoogleFonts: !FlutterFlowTheme.of(context)
                                  .headlineMediumIsCustom,
                            ),
                      ),
                      Text(
                        'LOG OUT',
                        style: FlutterFlowTheme.of(context)
                            .headlineMedium
                            .override(
                              fontFamily: FlutterFlowTheme.of(context)
                                  .headlineMediumFamily,
                              letterSpacing: 0.0,
                              lineHeight: 1.1,
                              useGoogleFonts: !FlutterFlowTheme.of(context)
                                  .headlineMediumIsCustom,
                            ),
                      ),
                    ],
                  ),
                ),
              ),
            if (false)
              Container(
                width: 392.0,
                height: 1.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).alternate,
                  shape: BoxShape.rectangle,
                ),
              ),
            Align(
              alignment: AlignmentDirectional(-1.0, 1.0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(24.0, 40.0, 0.0, 40.0),
                child: Container(
                  child: Text(
                    'DIY Diagnosis / 2026',
                    style: FlutterFlowTheme.of(context).labelSmall.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).labelSmallFamily,
                          letterSpacing: 0.0,
                          lineHeight: 1.2,
                          useGoogleFonts:
                              !FlutterFlowTheme.of(context).labelSmallIsCustom,
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
