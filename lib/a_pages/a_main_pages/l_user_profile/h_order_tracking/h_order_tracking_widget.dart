import '/b_screen_components/s01_navigatio_bar/s01_navigatio_bar_widget.dart';
import '/b_screen_components/s12_footer/s12_footer_widget.dart';
import '/backend/backend.dart';
import '/e_review_your_order/desktop/components/h_order_tracking_desktop/h_order_tracking_desktop_widget.dart';
import '/e_review_your_order/mobile/h_track_order_mobile/h_track_order_mobile_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'h_order_tracking_model.dart';
export 'h_order_tracking_model.dart';

class HOrderTrackingWidget extends StatefulWidget {
  const HOrderTrackingWidget({
    super.key,
    required this.orderId,
  });

  final DocumentReference? orderId;

  static String routeName = 'H_Order_Tracking';
  static String routePath = '/track-order';

  @override
  State<HOrderTrackingWidget> createState() => _HOrderTrackingWidgetState();
}

class _HOrderTrackingWidgetState extends State<HOrderTrackingWidget> {
  late HOrderTrackingModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HOrderTrackingModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.orderAct1 = await OrdersRecord.getDocumentOnce(widget.orderId!);
      _model.order = _model.orderAct1;
      safeSetState(() {});
    });

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
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Align(
                  alignment: AlignmentDirectional(0.0, -1.0),
                  child: Container(
                    width: double.infinity,
                    constraints: BoxConstraints(
                      maxWidth: 2000.0,
                    ),
                    decoration: BoxDecoration(),
                    child: Align(
                      alignment: AlignmentDirectional(0.0, -1.0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 0.96,
                          decoration: BoxDecoration(),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: FlutterFlowTheme.of(context).primary,
                                    width: 1.0,
                                  ),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    wrapWithModel(
                                      model: _model.s01NavigatioBarModel,
                                      updateCallback: () => safeSetState(() {}),
                                      child: S01NavigatioBarWidget(),
                                    ),
                                    Divider(
                                      height: 1.0,
                                      thickness: 1.0,
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                    ),
                                    if (responsiveVisibility(
                                      context: context,
                                      phone: false,
                                      tablet: false,
                                    ))
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 10.0),
                                        child: wrapWithModel(
                                          model:
                                              _model.hOrderTrackingDesktopModel,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: HOrderTrackingDesktopWidget(
                                            orderPram: _model.order!,
                                          ),
                                        ),
                                      ),
                                    if (responsiveVisibility(
                                      context: context,
                                      tabletLandscape: false,
                                      desktop: false,
                                    ))
                                      Expanded(
                                        child: wrapWithModel(
                                          model: _model.hTrackOrderMobileModel,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: HTrackOrderMobileWidget(
                                            orderPram: _model.order!,
                                          ),
                                        ),
                                      ),
                                    Container(
                                      width: double.infinity,
                                      height: valueOrDefault<double>(
                                        MediaQuery.sizeOf(context).width <
                                                kBreakpointSmall
                                            ? 25.0
                                            : 100.0,
                                        100.0,
                                      ),
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondary,
                                      ),
                                      child: Visibility(
                                        visible: responsiveVisibility(
                                          context: context,
                                          phone: false,
                                        ),
                                        child: wrapWithModel(
                                          model: _model.s12FooterModel,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: S12FooterWidget(),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ].divide(SizedBox(
                                height: valueOrDefault<double>(
                              MediaQuery.sizeOf(context).width <
                                      kBreakpointSmall
                                  ? 25.0
                                  : 50.0,
                              50.0,
                            ))),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ]
                  .addToStart(SizedBox(
                      height: valueOrDefault<double>(
                    MediaQuery.sizeOf(context).width < kBreakpointSmall
                        ? 32.0
                        : 64.0,
                    64.0,
                  )))
                  .addToEnd(SizedBox(
                      height: valueOrDefault<double>(
                    MediaQuery.sizeOf(context).width < kBreakpointSmall
                        ? 32.0
                        : 64.0,
                    64.0,
                  ))),
            ),
          ),
        ),
      ),
    );
  }
}
