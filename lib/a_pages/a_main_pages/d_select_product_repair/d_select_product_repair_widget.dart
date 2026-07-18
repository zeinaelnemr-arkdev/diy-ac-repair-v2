import '/b_screen_components/s01_navigatio_bar/s01_navigatio_bar_widget.dart';
import '/b_screen_components/s12_footer/s12_footer_widget.dart';
import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/schema/structs/index.dart';
import '/d_select_product_repair/desktop/components/b_select_product_main/b_select_product_main_widget.dart';
import '/d_select_product_repair/desktop/components/components/a_header_section/a_header_section_widget.dart';
import '/d_select_product_repair/desktop/components/components/s18_filter_repair_parts_desktop/s18_filter_repair_parts_desktop_widget.dart';
import '/d_select_product_repair/desktop/user_input_a_c_details/user_input_a_c_details_widget.dart';
import '/d_select_product_repair/mobile/components/serlect_product_mobile/serlect_product_mobile_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'd_select_product_repair_model.dart';
export 'd_select_product_repair_model.dart';

class DSelectProductRepairWidget extends StatefulWidget {
  const DSelectProductRepairWidget({
    super.key,
    this.part,
  });

  final Parts? part;

  static String routeName = 'D-Select_Product_Repair';
  static String routePath = '/products';

  @override
  State<DSelectProductRepairWidget> createState() =>
      _DSelectProductRepairWidgetState();
}

class _DSelectProductRepairWidgetState
    extends State<DSelectProductRepairWidget> {
  late DSelectProductRepairModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DSelectProductRepairModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (widget.part != null) {
        _model.selectedPart = widget.part;
        _model.partList = [];
        safeSetState(() {});
      } else {
        _model.selectedPart = Parts.MOTOR;
        _model.partList = [];
        safeSetState(() {});
      }

      if (_model.selectedPart == Parts.MOTOR) {
        _model.motorItemsOnPageLoad = await actions.filterMotorItems(
          FFAppState().userAC.acModel,
          null,
          null,
          null,
          null,
        );
        _model.partList =
            _model.motorItemsOnPageLoad!.toList().cast<PartCardDTOStruct>();
        safeSetState(() {});
      } else if (_model.selectedPart == Parts.CONTACTOR) {
        _model.contOnPageLoad = await actions.filterContactorItems(
          FFAppState().userAC.acModel,
          null,
          null,
          null,
          null,
        );
        _model.partList = _model.contOnPageLoad!
            .sortedList(keyOf: (e) => e.title, desc: false)
            .toList()
            .cast<PartCardDTOStruct>();
        safeSetState(() {});
      } else if (_model.selectedPart == Parts.CAPACITOR) {
        _model.capacOnPageLoad = await actions.filterCapacitorItems(
          FFAppState().userAC.acModel,
          null,
          null,
          null,
          null,
          null,
        );
        _model.partList = _model.capacOnPageLoad!
            .sortedList(keyOf: (e) => e.title, desc: false)
            .toList()
            .cast<PartCardDTOStruct>();
        safeSetState(() {});
      }
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
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        resizeToAvoidBottomInset: false,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SingleChildScrollView(
          primary: false,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Align(
                alignment: AlignmentDirectional(0.0, -1.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                  child: ClipRRect(
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * 0.96,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: FlutterFlowTheme.of(context).primary,
                          width: 1.0,
                        ),
                      ),
                      child: SingleChildScrollView(
                        primary: false,
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            wrapWithModel(
                              model: _model.s01NavigatioBarModel,
                              updateCallback: () => safeSetState(() {}),
                              child: S01NavigatioBarWidget(),
                            ),
                            if (responsiveVisibility(
                              context: context,
                              desktop: false,
                            ))
                              wrapWithModel(
                                model: _model.serlectProductMobileModel,
                                updateCallback: () => safeSetState(() {}),
                                child: SerlectProductMobileWidget(
                                  selectedPartPram: _model.selectedPart,
                                ),
                              ),
                            if (responsiveVisibility(
                              context: context,
                              phone: false,
                              tablet: false,
                              tabletLandscape: false,
                            ))
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
                              ClipRRect(
                                child: Container(
                                  height: valueOrDefault<double>(
                                    MediaQuery.sizeOf(context).width <
                                            kBreakpointSmall
                                        ? 25.0
                                        : 60.0,
                                    25.0,
                                  ),
                                  decoration: BoxDecoration(),
                                ),
                              ),
                            if (responsiveVisibility(
                              context: context,
                              phone: false,
                              tablet: false,
                              tabletLandscape: false,
                            ))
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    12.0, 0.0, 0.0, 12.0),
                                child: wrapWithModel(
                                  model: _model.aHeaderSectionModel,
                                  updateCallback: () => safeSetState(() {}),
                                  child: AHeaderSectionWidget(
                                    partParam: _model.selectedPart?.name,
                                  ),
                                ),
                              ),
                            if (responsiveVisibility(
                              context: context,
                              phone: false,
                              tablet: false,
                              tabletLandscape: false,
                            ))
                              Divider(
                                height: 1.0,
                                thickness: 1.0,
                                color: FlutterFlowTheme.of(context).tertiary,
                              ),
                            if (responsiveVisibility(
                              context: context,
                              phone: false,
                              tablet: false,
                              tabletLandscape: false,
                            ))
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 0.0, 24.0),
                                              child: wrapWithModel(
                                                model: _model
                                                    .s18FilterRepairPartsDesktopModel,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                updateOnChange: true,
                                                child:
                                                    S18FilterRepairPartsDesktopWidget(
                                                  selectedPartPram:
                                                      _model.selectedPart,
                                                  onMotorSelected:
                                                      (selectedPart, volt, hp,
                                                          rpm, rotation) async {
                                                    _model.selectedPart =
                                                        Parts.MOTOR;
                                                    _model.partList = [];
                                                    safeSetState(() {});
                                                    if (selectedPart ==
                                                        Parts.MOTOR.name) {
                                                      _model.motorItemsOnCallback =
                                                          await actions
                                                              .filterMotorItems(
                                                        FFAppState()
                                                            .userAC
                                                            .acModel,
                                                        volt,
                                                        hp,
                                                        rpm,
                                                        rotation,
                                                      );
                                                      _model.partList = _model
                                                          .motorItemsOnCallback!
                                                          .toList()
                                                          .cast<
                                                              PartCardDTOStruct>();
                                                      safeSetState(() {});
                                                    }

                                                    safeSetState(() {});
                                                  },
                                                  onContSelected: (rvolt,
                                                      amp,
                                                      cvoltage,
                                                      nop,
                                                      selectedPart) async {
                                                    _model.partList = [];
                                                    _model.selectedPart =
                                                        Parts.CONTACTOR;
                                                    safeSetState(() {});
                                                    if (selectedPart ==
                                                        Parts.CONTACTOR.name) {
                                                      _model.contOnCallback =
                                                          await actions
                                                              .filterContactorItems(
                                                        FFAppState()
                                                            .userAC
                                                            .acModel,
                                                        rvolt,
                                                        amp,
                                                        cvoltage,
                                                        nop,
                                                      );
                                                      _model.partList = _model
                                                          .contOnCallback!
                                                          .sortedList(
                                                              keyOf: (e) =>
                                                                  e.title,
                                                              desc: false)
                                                          .toList()
                                                          .cast<
                                                              PartCardDTOStruct>();
                                                      safeSetState(() {});
                                                    }

                                                    safeSetState(() {});
                                                  },
                                                  onCapatSelected:
                                                      (selectedPart,
                                                          mfd1,
                                                          mfd2,
                                                          volt,
                                                          type,
                                                          shape) async {
                                                    _model.partList = [];
                                                    _model.selectedPart =
                                                        Parts.CAPACITOR;
                                                    safeSetState(() {});
                                                    if (selectedPart ==
                                                        Parts.CAPACITOR.name) {
                                                      _model.capacOnCallback =
                                                          await actions
                                                              .filterCapacitorItems(
                                                        FFAppState()
                                                            .userAC
                                                            .acModel,
                                                        mfd1,
                                                        mfd2,
                                                        volt,
                                                        type,
                                                        shape,
                                                      );
                                                      _model.partList = _model
                                                          .capacOnCallback!
                                                          .sortedList(
                                                              keyOf: (e) =>
                                                                  e.title,
                                                              desc: false)
                                                          .toList()
                                                          .cast<
                                                              PartCardDTOStruct>();
                                                      safeSetState(() {});
                                                    }

                                                    safeSetState(() {});
                                                  },
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Expanded(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            if (FFAppState()
                                                        .userAC
                                                        .acMake
                                                        ?.id !=
                                                    null &&
                                                FFAppState()
                                                        .userAC
                                                        .acMake
                                                        ?.id !=
                                                    '')
                                              wrapWithModel(
                                                model: _model
                                                    .userInputACDetailsModel,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child:
                                                    UserInputACDetailsWidget(),
                                              ),
                                            if (responsiveVisibility(
                                              context: context,
                                              phone: false,
                                              tablet: false,
                                            ))
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        12.0, 0.0, 8.0, 0.0),
                                                child: wrapWithModel(
                                                  model: _model
                                                      .bSelectProductMainModel,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child:
                                                      BSelectProductMainWidget(
                                                    partParams: _model
                                                        .selectedPart?.name,
                                                    count:
                                                        _model.partList.length,
                                                    partList: _model.partList,
                                                    all: () {
                                                      if ((_model.selectedPart ==
                                                              Parts.MOTOR) &&
                                                          (FFAppState()
                                                                      .userAC
                                                                      .motorSpecIdRef
                                                                      ?.id !=
                                                                  null &&
                                                              FFAppState()
                                                                      .userAC
                                                                      .motorSpecIdRef
                                                                      ?.id !=
                                                                  '')) {
                                                        return true;
                                                      } else if ((_model
                                                                  .selectedPart ==
                                                              Parts
                                                                  .CAPACITOR) &&
                                                          (FFAppState()
                                                                      .userAC
                                                                      .capacitorSpecIdRef
                                                                      ?.id !=
                                                                  null &&
                                                              FFAppState()
                                                                      .userAC
                                                                      .capacitorSpecIdRef
                                                                      ?.id !=
                                                                  '')) {
                                                        return true;
                                                      } else if ((_model
                                                                  .selectedPart ==
                                                              Parts
                                                                  .CONTACTOR) &&
                                                          (FFAppState()
                                                                      .userAC
                                                                      .contactorSpecIdRef
                                                                      ?.id !=
                                                                  null &&
                                                              FFAppState()
                                                                      .userAC
                                                                      .contactorSpecIdRef
                                                                      ?.id !=
                                                                  '')) {
                                                        return true;
                                                      } else {
                                                        return false;
                                                      }
                                                    }(),
                                                  ),
                                                ),
                                              ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                          ],
                        ),
                      ),
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
                Divider(
                  height: 1.0,
                  thickness: 1.0,
                  color: FlutterFlowTheme.of(context).tertiary,
                ),
              if (responsiveVisibility(
                context: context,
                phone: false,
                tablet: false,
                tabletLandscape: false,
              ))
                wrapWithModel(
                  model: _model.s12FooterModel,
                  updateCallback: () => safeSetState(() {}),
                  child: S12FooterWidget(),
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
    );
  }
}
