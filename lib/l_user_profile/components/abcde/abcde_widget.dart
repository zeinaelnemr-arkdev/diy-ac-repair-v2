import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/components/button13_widget.dart';
import '/components/nav_tile_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'abcde_model.dart';
export 'abcde_model.dart';

class AbcdeWidget extends StatefulWidget {
  const AbcdeWidget({super.key});

  @override
  State<AbcdeWidget> createState() => _AbcdeWidgetState();
}

class _AbcdeWidgetState extends State<AbcdeWidget> {
  late AbcdeModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AbcdeModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.activeOrders = await queryOrdersRecordOnce(
        queryBuilder: (ordersRecord) => ordersRecord
            .whereNotIn(
                'status',
                OrderStatus.values
                    .where((e) =>
                        (e != OrderStatus.closed) &&
                        (e != OrderStatus.canceled))
                    .toList()
                    .map((e) => e.serialize())
                    .toList())
            .where(
              'uid',
              isEqualTo: currentUserReference,
            )
            .orderBy('createdAt', descending: true),
        singleRecord: true,
      ).then((s) => s.firstOrNull);
      _model.activeOrder = _model.activeOrder;
      safeSetState(() {});
    });

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
      height: 841.6,
      decoration: BoxDecoration(),
      child: SingleChildScrollView(
        primary: false,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(60.0, 40.0, 60.0, 40.0),
              child: Container(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 60.0),
                      child: Container(
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 180.0,
                              height: 180.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4.0),
                                shape: BoxShape.rectangle,
                                border: Border.all(
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  width: 2.0,
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Container(
                                  child: Image.asset(
                                    'assets/images/01.png',
                                    fit: BoxFit.cover,
                                    alignment: Alignment(0.0, 0.0),
                                  ),
                                ),
                              ),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                AuthUserStreamWidget(
                                  builder: (context) => Text(
                                    currentUserDisplayName,
                                    style: FlutterFlowTheme.of(context)
                                        .headlineLarge
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .headlineLargeFamily,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w800,
                                          lineHeight: 1.1,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .headlineLargeIsCustom,
                                        ),
                                  ),
                                ),
                                Text(
                                  currentUserEmail,
                                  style: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .titleMediumFamily,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        letterSpacing: 0.0,
                                        lineHeight: 1.2,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .titleMediumIsCustom,
                                      ),
                                ),
                                Container(
                                  height: 16.0,
                                ),
                                if (false)
                                  wrapWithModel(
                                    model: _model.buttonModel1,
                                    updateCallback: () => safeSetState(() {}),
                                    child: Button13Widget(
                                      content: 'EDIT PROFILE',
                                      icon_present: false,
                                      icon_end_present: false,
                                      variant: 'outline',
                                      size: 'small',
                                      full_width: false,
                                      loading: false,
                                      disabled: false,
                                    ),
                                  ),
                              ].divide(SizedBox(height: 8.0)),
                            ),
                          ].divide(SizedBox(width: 40.0)),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (_model.activeOrder != null)
                          Expanded(
                            flex: 6,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'ACTIVE ORDER',
                                  style: FlutterFlowTheme.of(context)
                                      .labelLarge
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .labelLargeFamily,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w800,
                                        lineHeight: 1.2,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .labelLargeIsCustom,
                                      ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    shape: BoxShape.rectangle,
                                    border: Border.all(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      width: 2.0,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all(40.0),
                                    child: Container(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.stretch,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Order # ${_model.activeOrder?.orderNumber}',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .headlineSmall
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .headlineSmallFamily,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .headlineSmallIsCustom,
                                                        ),
                                                  ),
                                                  Text(
                                                    'Created: ${valueOrDefault<String>(
                                                      dateTimeFormat(
                                                          "yMMMd",
                                                          _model.activeOrder
                                                              ?.createdAt),
                                                      'Jun 2, 2026',
                                                    )}',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          letterSpacing: 0.0,
                                                          lineHeight: 1.5,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMediumIsCustom,
                                                        ),
                                                  ),
                                                ].divide(SizedBox(height: 4.0)),
                                              ),
                                              Container(
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .accent1,
                                                  shape: BoxShape.rectangle,
                                                  border: Border.all(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    width: 1.0,
                                                  ),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(24.0, 16.0,
                                                          24.0, 16.0),
                                                  child: Container(
                                                    child: Text(
                                                      valueOrDefault<String>(
                                                        _model.activeOrder
                                                            ?.status?.name,
                                                        'Draft',
                                                      ),
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .labelLarge
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelLargeFamily,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryText,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            lineHeight: 1.2,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelLargeIsCustom,
                                                          ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          if (false)
                                            wrapWithModel(
                                              model: _model.buttonModel2,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: Button13Widget(
                                                content: 'TRACK SHIPMENT',
                                                icon_present: false,
                                                icon_end_present: false,
                                                variant: 'primary',
                                                size: 'large',
                                                full_width: true,
                                                loading: false,
                                                disabled: false,
                                              ),
                                            ),
                                        ].divide(SizedBox(height: 24.0)),
                                      ),
                                    ),
                                  ),
                                ),
                              ].divide(SizedBox(height: 24.0)),
                            ),
                          ),
                        Expanded(
                          flex: 4,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              if (false)
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.pushNamed(
                                        LPreviousOrdersWidget.routeName);
                                  },
                                  child: wrapWithModel(
                                    model: _model.navTileModel1,
                                    updateCallback: () => safeSetState(() {}),
                                    child: NavTileWidget(
                                      title: 'Previous Orders',
                                    ),
                                  ),
                                ),
                              if (false)
                                wrapWithModel(
                                  model: _model.navTileModel2,
                                  updateCallback: () => safeSetState(() {}),
                                  child: NavTileWidget(
                                    title: 'Shipping Addresses',
                                  ),
                                ),
                              if (false)
                                wrapWithModel(
                                  model: _model.navTileModel3,
                                  updateCallback: () => safeSetState(() {}),
                                  child: NavTileWidget(
                                    title: 'Account Settings',
                                  ),
                                ),
                              if (false)
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    GoRouter.of(context).prepareAuthEvent();
                                    await authManager.signOut();
                                    GoRouter.of(context)
                                        .clearRedirectLocation();

                                    context.goNamedAuth(
                                        AHomePageWidget.routeName,
                                        context.mounted);
                                  },
                                  child: wrapWithModel(
                                    model: _model.navTileModel4,
                                    updateCallback: () => safeSetState(() {}),
                                    child: NavTileWidget(
                                      title: 'Log Out',
                                    ),
                                  ),
                                ),
                              Container(
                                height: 80.0,
                              ),
                            ],
                          ),
                        ),
                      ].divide(SizedBox(width: 60.0)),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
