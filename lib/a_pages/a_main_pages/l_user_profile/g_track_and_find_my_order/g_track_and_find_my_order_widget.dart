import '/b_screen_components/s01_navigatio_bar/s01_navigatio_bar_widget.dart';
import '/b_screen_components/s12_footer/s12_footer_widget.dart';
import '/e_review_your_order/desktop/components/track_and_find_my_order/track_and_find_my_order_widget.dart';
import '/e_review_your_order/mobile/track_and_find_my_order_mobile/track_and_find_my_order_mobile_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'g_track_and_find_my_order_model.dart';
export 'g_track_and_find_my_order_model.dart';

class GTrackAndFindMyOrderWidget extends StatefulWidget {
  const GTrackAndFindMyOrderWidget({super.key});

  static String routeName = 'G_Track_and_find_my_order';
  static String routePath = '/gTrackAndFindMyOrder';

  @override
  State<GTrackAndFindMyOrderWidget> createState() =>
      _GTrackAndFindMyOrderWidgetState();
}

class _GTrackAndFindMyOrderWidgetState
    extends State<GTrackAndFindMyOrderWidget> {
  late GTrackAndFindMyOrderModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GTrackAndFindMyOrderModel());

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
              mainAxisSize: MainAxisSize.min,
              children: [
                Align(
                  alignment: AlignmentDirectional(0.0, -1.0),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(),
                    child: Align(
                      alignment: AlignmentDirectional(0.0, -1.0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 0.96,
                          decoration: BoxDecoration(),
                          child: Container(
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
                                  color: FlutterFlowTheme.of(context).primary,
                                ),
                                if (responsiveVisibility(
                                  context: context,
                                  phone: false,
                                  tablet: false,
                                  tabletLandscape: false,
                                ))
                                  Expanded(
                                    child: wrapWithModel(
                                      model: _model.trackAndFindMyOrderModel,
                                      updateCallback: () => safeSetState(() {}),
                                      child: TrackAndFindMyOrderWidget(),
                                    ),
                                  ),
                                if (responsiveVisibility(
                                  context: context,
                                  tabletLandscape: false,
                                  desktop: false,
                                ))
                                  wrapWithModel(
                                    model:
                                        _model.trackAndFindMyOrderMobileModel,
                                    updateCallback: () => safeSetState(() {}),
                                    child: TrackAndFindMyOrderMobileWidget(),
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
                                    color:
                                        FlutterFlowTheme.of(context).secondary,
                                  ),
                                  child: Visibility(
                                    visible: responsiveVisibility(
                                      context: context,
                                      phone: false,
                                    ),
                                    child: wrapWithModel(
                                      model: _model.s12FooterModel,
                                      updateCallback: () => safeSetState(() {}),
                                      child: S12FooterWidget(),
                                    ),
                                  ),
                                ),
                              ],
                            ),
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
