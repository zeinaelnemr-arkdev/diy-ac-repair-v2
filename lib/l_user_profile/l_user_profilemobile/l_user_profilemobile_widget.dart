import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/l_user_profile/components/nav_item/nav_item_widget.dart';
import '/index.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'l_user_profilemobile_model.dart';
export 'l_user_profilemobile_model.dart';

class LUserProfilemobileWidget extends StatefulWidget {
  const LUserProfilemobileWidget({super.key});

  @override
  State<LUserProfilemobileWidget> createState() =>
      _LUserProfilemobileWidgetState();
}

class _LUserProfilemobileWidgetState extends State<LUserProfilemobileWidget> {
  late LUserProfilemobileModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LUserProfilemobileModel());

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
      _model.activeOrder = _model.activeOrders;
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
    return SingleChildScrollView(
      primary: false,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primaryBackground,
              shape: BoxShape.rectangle,
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(24.0, 32.0, 24.0, 32.0),
              child: Container(
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(0.0),
                      child: Container(
                        width: 100.0,
                        height: 100.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(0.0),
                          shape: BoxShape.rectangle,
                          border: Border.all(
                            color: FlutterFlowTheme.of(context).primaryText,
                            width: 3.0,
                          ),
                        ),
                        child: Image.asset(
                          'assets/images/01.png',
                          fit: BoxFit.cover,
                          alignment: Alignment(0.0, 0.0),
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
                                .headlineSmall
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .headlineSmallFamily,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w900,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .headlineSmallIsCustom,
                                ),
                          ),
                        ),
                        Text(
                          currentUserEmail,
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyMediumFamily,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w500,
                                lineHeight: 1.4,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .bodyMediumIsCustom,
                              ),
                        ),
                      ].divide(SizedBox(height: 4.0)),
                    ),
                  ].divide(SizedBox(width: 24.0)),
                ),
              ),
            ),
          ),
          if (_model.activeOrder != null)
            Padding(
              padding: EdgeInsets.all(24.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'ACTIVE ORDER',
                    style: FlutterFlowTheme.of(context).labelLarge.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).labelLargeFamily,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w800,
                          lineHeight: 1.0,
                          useGoogleFonts:
                              !FlutterFlowTheme.of(context).labelLargeIsCustom,
                        ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryBackground,
                      shape: BoxShape.rectangle,
                      border: Border.all(
                        color: FlutterFlowTheme.of(context).primaryText,
                        width: 2.0,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(24.0),
                      child: Container(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Order  # ${_model.activeOrder?.orderNumber}',
                                      style: FlutterFlowTheme.of(context)
                                          .titleLarge
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .titleLargeFamily,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w900,
                                            lineHeight: 1.2,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .titleLargeIsCustom,
                                          ),
                                    ),
                                    Text(
                                      'Created : ${valueOrDefault<String>(
                                        dateTimeFormat("yMMMd",
                                            _model.activeOrder?.createdAt),
                                        'Jun 2,2026',
                                      )}',
                                      style: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodySmallFamily,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            letterSpacing: 0.0,
                                            lineHeight: 1.4,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .bodySmallIsCustom,
                                          ),
                                    ),
                                  ].divide(SizedBox(height: 4.0)),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context).accent1,
                                    shape: BoxShape.rectangle,
                                    border: Border.all(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      width: 2.0,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 8.0, 16.0, 8.0),
                                    child: Container(
                                      child: Text(
                                        valueOrDefault<String>(
                                          _model.activeOrder?.status?.name,
                                          'Draft',
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .labelLarge
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .labelLargeFamily,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w800,
                                              lineHeight: 1.0,
                                              useGoogleFonts:
                                                  !FlutterFlowTheme.of(context)
                                                      .labelLargeIsCustom,
                                            ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            if (false)
                              Container(
                                decoration: BoxDecoration(
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  shape: BoxShape.rectangle,
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(16.0),
                                  child: Container(
                                    child: Container(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Text(
                                        'TRACK SHIPMENT',
                                        style: FlutterFlowTheme.of(context)
                                            .labelLarge
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .labelLargeFamily,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w900,
                                              lineHeight: 1.0,
                                              useGoogleFonts:
                                                  !FlutterFlowTheme.of(context)
                                                      .labelLargeIsCustom,
                                            ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                          ].divide(SizedBox(height: 24.0)),
                        ),
                      ),
                    ),
                  ),
                ].divide(SizedBox(height: 16.0)),
              ),
            ),
          Column(
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
                    context.pushNamed(LPreviousOrdersWidget.routeName);
                  },
                  child: wrapWithModel(
                    model: _model.navItemModel1,
                    updateCallback: () => safeSetState(() {}),
                    child: NavItemWidget(
                      label: 'Previous Orders',
                    ),
                  ),
                ),
              if (false)
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.pushNamed(LShippingAddressEditWidget.routeName);
                  },
                  child: wrapWithModel(
                    model: _model.navItemModel2,
                    updateCallback: () => safeSetState(() {}),
                    child: NavItemWidget(
                      label: 'Shipping Addresses',
                    ),
                  ),
                ),
              if (false)
                wrapWithModel(
                  model: _model.navItemModel3,
                  updateCallback: () => safeSetState(() {}),
                  child: NavItemWidget(
                    label: 'Account Settings',
                  ),
                ),
              InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  GoRouter.of(context).prepareAuthEvent();
                  await authManager.signOut();
                  GoRouter.of(context).clearRedirectLocation();

                  context.goNamedAuth(
                      AHomePageWidget.routeName, context.mounted);
                },
                child: wrapWithModel(
                  model: _model.navItemModel4,
                  updateCallback: () => safeSetState(() {}),
                  child: NavItemWidget(
                    label: 'Log Out',
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(32.0, 0.0, 32.0, 0.0),
            child: Container(),
          ),
        ],
      ),
    );
  }
}
