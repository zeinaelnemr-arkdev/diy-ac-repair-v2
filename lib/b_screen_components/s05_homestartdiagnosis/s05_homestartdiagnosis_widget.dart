import '/b_screen_components/asterisk/asterisk_widget.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/z_drafts/enter_manually_serial_number/enter_manually_serial_number_widget.dart';
import '/index.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 's05_homestartdiagnosis_model.dart';
export 's05_homestartdiagnosis_model.dart';

class S05HomestartdiagnosisWidget extends StatefulWidget {
  const S05HomestartdiagnosisWidget({super.key});

  @override
  State<S05HomestartdiagnosisWidget> createState() =>
      _S05HomestartdiagnosisWidgetState();
}

class _S05HomestartdiagnosisWidgetState
    extends State<S05HomestartdiagnosisWidget> with TickerProviderStateMixin {
  late S05HomestartdiagnosisModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => S05HomestartdiagnosisModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await Future.delayed(
        Duration(
          milliseconds: 50,
        ),
      );
      _model.acMakeFiltered = FFAppState()
          .acMakeList
          .sortedList(keyOf: (e) => e.name, desc: false)
          .toList()
          .cast<AcMakeDTOStruct>();
      _model.newAC = false;
      safeSetState(() {});
      if (FFAppState().userAC.acMake?.id != null &&
          FFAppState().userAC.acMake?.id != '') {
        _model.acModelFiltered = FFAppState()
            .acModelList
            .where((e) => e.acMakeId?.id == FFAppState().userAC.acMake?.id)
            .toList()
            .sortedList(keyOf: (e) => e.name, desc: false)
            .toList()
            .cast<AcModelDTOStruct>();
        _model.selectedACMake = FFAppState().userAC.acMake;
        safeSetState(() {});
        safeSetState(() {
          _model.dropDownMakeValueController?.value =
              FFAppState().userAC.acMake!.id;
          _model.dropDownMakeValue = FFAppState().userAC.acMake!.id;
        });
        safeSetState(() {
          _model.dropDownModelValueController?.value =
              FFAppState().userAC.acModel!.id;
          _model.dropDownModelValue = FFAppState().userAC.acModel!.id;
        });
        safeSetState(() {
          _model.textFieldSNTextController?.text =
              FFAppState().userAC.serialNumber;
        });
      }
    });

    _model.textFieldSNTextController ??= TextEditingController(
        text: FFAppState().userAC.serialNumber != ''
            ? FFAppState().userAC.serialNumber
            : '');
    _model.textFieldSNFocusNode ??= FocusNode();

    animationsMap.addAll({
      'iconOnActionTriggerAnimation': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 1000.0.ms,
            begin: Offset(-10.0, 0.0),
            end: Offset(10.0, 0.0),
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Align(
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).primaryBackground,
        ),
        child: Wrap(
          spacing: 0.0,
          runSpacing: valueOrDefault<double>(
            MediaQuery.sizeOf(context).width < kBreakpointSmall ? 25.0 : 50.0,
            50.0,
          ),
          alignment: WrapAlignment.spaceBetween,
          crossAxisAlignment: WrapCrossAlignment.start,
          direction: Axis.horizontal,
          runAlignment: WrapAlignment.start,
          verticalDirection: VerticalDirection.down,
          clipBehavior: Clip.none,
          children: [
            if (responsiveVisibility(
              context: context,
              phone: false,
            ))
              Container(
                width: MediaQuery.sizeOf(context).width < kBreakpointLarge
                    ? double.infinity
                    : (MediaQuery.sizeOf(context).width * 0.43),
                height: MediaQuery.sizeOf(context).height * 0.9,
                constraints: BoxConstraints(
                  maxWidth: valueOrDefault<double>(
                    MediaQuery.sizeOf(context).width < kBreakpointLarge
                        ? double.infinity
                        : 860.0,
                    860.0,
                  ),
                  maxHeight: valueOrDefault<double>(
                    () {
                      if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                        return 560.0;
                      } else if (MediaQuery.sizeOf(context).width <
                          kBreakpointLarge) {
                        return 832.0;
                      } else {
                        return 1000.0;
                      }
                    }(),
                    1000.0,
                  ),
                ),
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primary,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      height: valueOrDefault<double>(
                        () {
                          if (MediaQuery.sizeOf(context).width <
                              kBreakpointSmall) {
                            return 25.0;
                          } else if (MediaQuery.sizeOf(context).width <
                              kBreakpointLarge) {
                            return 50.0;
                          } else {
                            return 100.0;
                          }
                        }(),
                        100.0,
                      ),
                      decoration: BoxDecoration(),
                    ),
                    Divider(
                      height: 1.0,
                      thickness: 1.0,
                      color: FlutterFlowTheme.of(context).tertiary,
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            10.0, 0.0, 10.0, 0.0),
                        child: Container(
                          width: MediaQuery.sizeOf(context).width <
                                  kBreakpointLarge
                              ? (MediaQuery.sizeOf(context).width * 0.86)
                              : (MediaQuery.sizeOf(context).width * 0.37),
                          constraints: BoxConstraints(
                            maxWidth: valueOrDefault<double>(
                              MediaQuery.sizeOf(context).width <
                                      kBreakpointLarge
                                  ? double.infinity
                                  : 740.0,
                              740.0,
                            ),
                          ),
                          decoration: BoxDecoration(),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              VerticalDivider(
                                width: 1.0,
                                thickness: 1.0,
                                color: FlutterFlowTheme.of(context).tertiary,
                              ),
                              SizedBox(
                                height: 100.0,
                                child: VerticalDivider(
                                  width: 1.0,
                                  thickness: 7.0,
                                  color: FlutterFlowTheme.of(context).secondary,
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                      height:
                                          MediaQuery.sizeOf(context).height *
                                              0.25,
                                      constraints: BoxConstraints(
                                        maxHeight: valueOrDefault<double>(
                                          () {
                                            if (MediaQuery.sizeOf(context)
                                                    .width <
                                                kBreakpointSmall) {
                                              return 171.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointLarge) {
                                              return 261.0;
                                            } else {
                                              return 325.0;
                                            }
                                          }(),
                                          325.0,
                                        ),
                                      ),
                                      decoration: BoxDecoration(),
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 1.0),
                                        child: AutoSizeText(
                                          'STOP\nSWEATING.\nSTART FIXING.',
                                          style: FlutterFlowTheme.of(context)
                                              .displayMedium
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .displayMediumFamily,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondary,
                                                letterSpacing:
                                                    MediaQuery.sizeOf(context)
                                                                .width <
                                                            kBreakpointSmall
                                                        ? FFAppConstants
                                                            .LetterSpacingM
                                                        : FFAppConstants
                                                            .LetterSpacingTD,
                                                fontWeight: FontWeight.normal,
                                                lineHeight: 1.0,
                                                useGoogleFonts:
                                                    !FlutterFlowTheme.of(
                                                            context)
                                                        .displayMediumIsCustom,
                                              ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 25.0, 0.0, 0.0),
                                        child: Container(
                                          decoration: BoxDecoration(),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    15.0, 0.0, 0.0, 0.0),
                                            child: AutoSizeText(
                                              'NO FLUFF. JUST THE RAW TECHNICAL DATA YOU NEED TO GET YOUR COLD AIR BACK. \nENTER YOUR SPECS IN THE CORRESPONDING FIELDS .',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .labelMedium
                                                  .override(
                                                    fontFamily:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelMediumFamily,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondary,
                                                    fontSize: 28.0,
                                                    letterSpacing: 0.0,
                                                    useGoogleFonts:
                                                        !FlutterFlowTheme.of(
                                                                context)
                                                            .labelMediumIsCustom,
                                                  ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: double.infinity,
                                      height:
                                          MediaQuery.sizeOf(context).height *
                                              0.04,
                                      constraints: BoxConstraints(
                                        maxHeight: 50.0,
                                      ),
                                      decoration: BoxDecoration(),
                                    ),
                                    Divider(
                                      height: 1.0,
                                      thickness: 1.0,
                                      color:
                                          FlutterFlowTheme.of(context).tertiary,
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(1.0, 0.0),
                                      child: Container(
                                        constraints: BoxConstraints(
                                          maxWidth: 270.0,
                                          maxHeight: 270.0,
                                        ),
                                        decoration: BoxDecoration(),
                                        child: Container(
                                          width: () {
                                            if (MediaQuery.sizeOf(context)
                                                    .width <
                                                kBreakpointSmall) {
                                              return (MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.4);
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointLarge) {
                                              return (MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.28);
                                            } else {
                                              return (MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.15);
                                            }
                                          }(),
                                          height: () {
                                            if (MediaQuery.sizeOf(context)
                                                    .width <
                                                kBreakpointSmall) {
                                              return (MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.4);
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointLarge) {
                                              return (MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.28);
                                            } else {
                                              return (MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.15);
                                            }
                                          }(),
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                          ),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              VerticalDivider(
                                                width: 1.0,
                                                thickness: 1.0,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .tertiary,
                                              ),
                                              Expanded(
                                                child: wrapWithModel(
                                                  model: _model.asteriskModel,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: AsteriskWidget(
                                                    asteriskColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .secondary,
                                                    maxWidth: 35.0,
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
                              VerticalDivider(
                                width: 1.0,
                                thickness: 1.0,
                                color: FlutterFlowTheme.of(context).tertiary,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Divider(
                      height: 1.0,
                      thickness: 1.0,
                      color: FlutterFlowTheme.of(context).tertiary,
                    ),
                    Container(
                      height: valueOrDefault<double>(
                        () {
                          if (MediaQuery.sizeOf(context).width <
                              kBreakpointSmall) {
                            return 25.0;
                          } else if (MediaQuery.sizeOf(context).width <
                              kBreakpointLarge) {
                            return 50.0;
                          } else {
                            return 92.0;
                          }
                        }(),
                        92.0,
                      ),
                      decoration: BoxDecoration(),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          VerticalDivider(
                            width: 1.0,
                            thickness: 1.0,
                            color: FlutterFlowTheme.of(context).tertiary,
                          ),
                        ].addToEnd(SizedBox(width: 200.0)),
                      ),
                    ),
                  ],
                ),
              ),
            Container(
              width: MediaQuery.sizeOf(context).width < kBreakpointLarge
                  ? double.infinity
                  : (MediaQuery.sizeOf(context).width * 0.502),
              height: MediaQuery.sizeOf(context).height * 0.9,
              constraints: BoxConstraints(
                maxWidth: valueOrDefault<double>(
                  MediaQuery.sizeOf(context).width < kBreakpointLarge
                  ? double.infinity
                  : 1000.0,
                  1000.0,
                  ),
                ),
              decoration: BoxDecoration(
                border: Border.all(
                  color: FlutterFlowTheme.of(context).primary,
                  width: 1.0,
                ),
              ),
              child: Stack(
                children: [
                  if (!_model.newAC)
                    Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0,
                            valueOrDefault<double>(
                              MediaQuery.sizeOf(context).width <
                                      kBreakpointSmall
                                  ? 25.0
                                  : 50.0,
                              50.0,
                            ),
                            0.0,
                            valueOrDefault<double>(
                              MediaQuery.sizeOf(context).width <
                                      kBreakpointSmall
                                  ? 25.0
                                  : 50.0,
                              50.0,
                            )),
                        child: Container(
                          width: MediaQuery.sizeOf(context).width <
                                  kBreakpointLarge
                              ? (MediaQuery.sizeOf(context).width * 0.86)
                              : (MediaQuery.sizeOf(context).width * 0.442),
                          height: double.infinity,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: FlutterFlowTheme.of(context).primary,
                              width: 6.0,
                            ),
                          ),
                          child: Align(
                            alignment: AlignmentDirectional(0.0, -1.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(0.0, -1.0),
                                  child: Padding(
                                    padding: EdgeInsets.all(20.0),
                                    child: AutoSizeText(
                                      'WHAT DO YOU NEED HELP WITH?\nLET’S FIX IT TOGETHER.',
                                      style: FlutterFlowTheme.of(context)
                                          .headlineMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .headlineMediumFamily,
                                            letterSpacing:
                                                MediaQuery.sizeOf(context)
                                                            .width <
                                                        kBreakpointSmall
                                                    ? FFAppConstants
                                                        .LetterSpacingM
                                                    : FFAppConstants
                                                        .LetterSpacingTD,
                                            lineHeight: 1.0,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .headlineMediumIsCustom,
                                          ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20.0, 0.0, 0.0, 10.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondary,
                                        shape: BoxShape.rectangle,
                                      ),
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional(-1.0, 0.0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 12.0, 0.0, 0.0),
                                          child: Text(
                                            'A/C MAKE (optional)',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  fontSize:
                                                      valueOrDefault<double>(
                                                    MediaQuery.sizeOf(context)
                                                                .width <
                                                            kBreakpointSmall
                                                        ? 12.0
                                                        : 18.0,
                                                    40.0,
                                                  ),
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.bold,
                                                  useGoogleFonts:
                                                      !FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumIsCustom,
                                                ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0.0, -1.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20.0, 0.0, 20.0, 0.0),
                                    child: Container(
                                      height:
                                          MediaQuery.sizeOf(context).height *
                                              0.08,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          width: 3.0,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            valueOrDefault<double>(
                                              MediaQuery.sizeOf(context).width <
                                                      kBreakpointSmall
                                                  ? 6.0
                                                  : 25.0,
                                              50.0,
                                            ),
                                            0.0,
                                            valueOrDefault<double>(
                                              MediaQuery.sizeOf(context).width <
                                                      kBreakpointSmall
                                                  ? 10.0
                                                  : 25.0,
                                              50.0,
                                            ),
                                            0.0),
                                        child: FlutterFlowDropDown<String>(
                                          controller: _model
                                                  .dropDownMakeValueController ??=
                                              FormFieldController<String>(
                                            _model.dropDownMakeValue ??=
                                                FFAppState()
                                                                .userAC
                                                                .acMake
                                                                ?.id !=
                                                            null &&
                                                        FFAppState()
                                                                .userAC
                                                                .acMake
                                                                ?.id !=
                                                            ''
                                                    ? FFAppState()
                                                        .userAC
                                                        .acMake
                                                        ?.id
                                                    : '',
                                          ),
                                          options: List<String>.from(_model
                                              .acMakeFiltered
                                              .map((e) => e.id?.id)
                                              .withoutNulls
                                              .toList()),
                                          optionLabels: _model.acMakeFiltered
                                              .map((e) => e.name)
                                              .toList(),
                                          onChanged: (val) async {
                                            safeSetState(() =>
                                                _model.dropDownMakeValue = val);
                                            _model.selectedACMake = _model
                                                .acMakeFiltered
                                                .where((e) =>
                                                    e.id?.id ==
                                                    _model.dropDownMakeValue)
                                                .toList()
                                                .firstOrNull
                                                ?.id;
                                            FFAppState().updateUserACStruct(
                                              (e) => e
                                                ..acMake = _model.selectedACMake
                                                ..acModel = null
                                                ..serialNumber = null,
                                            );
                                            _model.textFieldSNTextController
                                                ?.text = FFAppState()
                                                            .userAC
                                                            .serialNumber !=
                                                        ''
                                                ? FFAppState()
                                                    .userAC
                                                    .serialNumber
                                                : '';

                                            _model.dropDownModelValueController
                                                ?.reset();
                                            _model.dropDownModelValue = null;

                                            _model.acModelFiltered =
                                                FFAppState()
                                                    .acModelList
                                                    .where((e) =>
                                                        e.acMakeId ==
                                                        _model.selectedACMake)
                                                    .toList()
                                                    .sortedList(
                                                        keyOf: (e) => e.name,
                                                        desc: false)
                                                    .toList()
                                                    .cast<AcModelDTOStruct>();
                                            safeSetState(() {});
                                          },
                                          height: 50.0,
                                          maxHeight: 200.0,
                                          searchHintTextStyle: FlutterFlowTheme
                                                  .of(context)
                                              .labelMedium
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMediumFamily,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .tertiary,
                                                fontSize: 18.0,
                                                letterSpacing: 0.0,
                                                useGoogleFonts:
                                                    !FlutterFlowTheme.of(
                                                            context)
                                                        .labelMediumIsCustom,
                                              ),
                                          searchTextStyle: FlutterFlowTheme.of(
                                                  context)
                                              .bodyMedium
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontSize: 24.0,
                                                letterSpacing: 0.0,
                                                useGoogleFonts:
                                                    !FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMediumIsCustom,
                                              ),
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
                                              .labelSmall
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .labelSmallFamily,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontSize: 18.0,
                                                letterSpacing: 0.0,
                                                useGoogleFonts:
                                                    !FlutterFlowTheme.of(
                                                            context)
                                                        .labelSmallIsCustom,
                                              ),
                                          hintText:
                                              'e.g. CARRIER, TRANE, LENNOX',
                                          searchHintText:
                                              'e.g. CARRIER, TRANE, LENNOX',
                                          icon: Icon(
                                            Icons.close_rounded,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            size: 24.0,
                                          ),
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                          elevation: 2.0,
                                          borderColor: Colors.transparent,
                                          borderWidth: 0.0,
                                          borderRadius: 8.0,
                                          margin:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  12.0, 0.0, 12.0, 0.0),
                                          hidesUnderline: true,
                                          isOverButton: false,
                                          isSearchable: true,
                                          isMultiSelect: false,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20.0, 0.0, 20.0, 0.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .secondary,
                                        width: 2.0,
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Expanded(
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondary,
                                              border: Border.all(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondary,
                                              ),
                                            ),
                                            child: Align(
                                              alignment: AlignmentDirectional(
                                                  -1.0, 0.0),
                                              child: Text(
                                                'Model Number (optional)',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMediumFamily,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      fontSize: valueOrDefault<
                                                          double>(
                                                        MediaQuery.sizeOf(
                                                                        context)
                                                                    .width <
                                                                kBreakpointSmall
                                                            ? 12.0
                                                            : 18.0,
                                                        40.0,
                                                      ),
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      useGoogleFonts:
                                                          !FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMediumIsCustom,
                                                    ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondary,
                                              border: Border.all(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondary,
                                              ),
                                            ),
                                            child: Align(
                                              alignment: AlignmentDirectional(
                                                  -1.0, 0.0),
                                              child: Text(
                                                'Serial Number (optional)',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMediumFamily,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      fontSize: valueOrDefault<
                                                          double>(
                                                        MediaQuery.sizeOf(
                                                                        context)
                                                                    .width <
                                                                kBreakpointSmall
                                                            ? 12.0
                                                            : 18.0,
                                                        40.0,
                                                      ),
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      useGoogleFonts:
                                                          !FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMediumIsCustom,
                                                    ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ].divide(SizedBox(width: 14.0)),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20.0, 0.0, 20.0, 0.0),
                                  child: Container(
                                    height: MediaQuery.sizeOf(context).height *
                                        0.08,
                                    constraints: BoxConstraints(
                                      minHeight: 50.0,
                                      maxHeight: valueOrDefault<double>(
                                        MediaQuery.sizeOf(context).width <
                                                kBreakpointSmall
                                            ? 50.0
                                            : 100.0,
                                        100.0,
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .secondary,
                                        width: 2.0,
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: Container(
                                            height: double.infinity,
                                            constraints: BoxConstraints(
                                              maxWidth: 617.0,
                                            ),
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondary,
                                              border: Border.all(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                width: 3.0,
                                              ),
                                            ),
                                            child: MouseRegion(
                                              opaque: false,
                                              cursor:
                                                  SystemMouseCursors.click ??
                                                      MouseCursor.defer,
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        10.0, 0.0, 10.0, 0.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Expanded(
                                                      child: Padding(
                                                        padding: EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                valueOrDefault<
                                                                    double>(
                                                                  MediaQuery.sizeOf(context)
                                                                              .width <
                                                                          kBreakpointSmall
                                                                      ? 8.0
                                                                      : 25.0,
                                                                  50.0,
                                                                ),
                                                                0.0,
                                                                valueOrDefault<
                                                                    double>(
                                                                  MediaQuery.sizeOf(context)
                                                                              .width <
                                                                          kBreakpointSmall
                                                                      ? 8.0
                                                                      : 25.0,
                                                                  50.0,
                                                                ),
                                                                0.0),
                                                        child:
                                                            FlutterFlowDropDown<
                                                                String>(
                                                          controller: _model
                                                                  .dropDownModelValueController ??=
                                                              FormFieldController<
                                                                  String>(
                                                            _model
                                                                .dropDownModelValue ??= FFAppState()
                                                                            .userAC
                                                                            .acModel
                                                                            ?.id !=
                                                                        null &&
                                                                    FFAppState()
                                                                            .userAC
                                                                            .acModel
                                                                            ?.id !=
                                                                        ''
                                                                ? FFAppState()
                                                                    .userAC
                                                                    .acModel
                                                                    ?.id
                                                                : '',
                                                          ),
                                                          options: List<
                                                                  String>.from(
                                                              _model
                                                                  .acModelFiltered
                                                                  .map((e) =>
                                                                      e.id?.id)
                                                                  .withoutNulls
                                                                  .toList()),
                                                          optionLabels: _model
                                                              .acModelFiltered
                                                              .map(
                                                                  (e) => e.name)
                                                              .toList(),
                                                          onChanged:
                                                              (val) async {
                                                            safeSetState(() =>
                                                                _model.dropDownModelValue =
                                                                    val);
                                                            FFAppState()
                                                                .updateUserACStruct(
                                                              (e) => e
                                                                ..acModel = _model
                                                                    .acModelFiltered
                                                                    .where((e) =>
                                                                        e.id?.id ==
                                                                        _model
                                                                            .dropDownModelValue)
                                                                    .toList()
                                                                    .firstOrNull
                                                                    ?.id
                                                                ..motorSpecIdRef = _model
                                                                    .acModelFiltered
                                                                    .where((e) =>
                                                                        e.id?.id ==
                                                                        _model
                                                                            .dropDownModelValue)
                                                                    .toList()
                                                                    .firstOrNull
                                                                    ?.motorSpecId
                                                                ..capacitorSpecIdRef = _model
                                                                    .acModelFiltered
                                                                    .where((e) =>
                                                                        e.id?.id ==
                                                                        _model
                                                                            .dropDownModelValue)
                                                                    .toList()
                                                                    .firstOrNull
                                                                    ?.capacitorSpecsId
                                                                ..contactorSpecIdRef = _model
                                                                    .acModelFiltered
                                                                    .where((e) =>
                                                                        e.id?.id ==
                                                                        _model
                                                                            .dropDownModelValue)
                                                                    .toList()
                                                                    .firstOrNull
                                                                    ?.contactorSpecId,
                                                            );
                                                          },
                                                          height: 50.0,
                                                          maxHeight: 200.0,
                                                          searchHintTextStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelSmall
                                                                  .override(
                                                                    fontFamily:
                                                                        FlutterFlowTheme.of(context)
                                                                            .labelSmallFamily,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .tertiary,
                                                                    fontSize:
                                                                        18.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    useGoogleFonts:
                                                                        !FlutterFlowTheme.of(context)
                                                                            .labelSmallIsCustom,
                                                                  ),
                                                          searchTextStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .tertiary,
                                                                    fontSize:
                                                                        18.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    useGoogleFonts:
                                                                        !FlutterFlowTheme.of(context)
                                                                            .bodyMediumIsCustom,
                                                                  ),
                                                          textStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelSmall
                                                                  .override(
                                                                    fontFamily:
                                                                        FlutterFlowTheme.of(context)
                                                                            .labelSmallFamily,
                                                                    fontSize:
                                                                        18.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    useGoogleFonts:
                                                                        !FlutterFlowTheme.of(context)
                                                                            .labelSmallIsCustom,
                                                                  ),
                                                          hintText:
                                                              'e.g. M-90210',
                                                          searchHintText:
                                                              'e.g. M-90210',
                                                          icon: Icon(
                                                            Icons.close_rounded,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                            size: 24.0,
                                                          ),
                                                          fillColor: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          elevation: 2.0,
                                                          borderColor: Colors
                                                              .transparent,
                                                          borderWidth: 0.0,
                                                          borderRadius: 8.0,
                                                          margin:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      12.0,
                                                                      0.0,
                                                                      12.0,
                                                                      0.0),
                                                          hidesUnderline: true,
                                                          isOverButton: false,
                                                          isSearchable: true,
                                                          isMultiSelect: false,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              onEnter: ((event) async {
                                                safeSetState(() =>
                                                    _model.mouseRegionHovered1 =
                                                        true);
                                              }),
                                              onExit: ((event) async {
                                                safeSetState(() =>
                                                    _model.mouseRegionHovered1 =
                                                        false);
                                              }),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                            height: double.infinity,
                                            constraints: BoxConstraints(
                                              maxWidth: 617.0,
                                            ),
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondary,
                                              border: Border.all(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                width: 3.0,
                                              ),
                                            ),
                                            child: MouseRegion(
                                              opaque: false,
                                              cursor:
                                                  SystemMouseCursors.click ??
                                                      MouseCursor.defer,
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        10.0, 0.0, 10.0, 0.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Expanded(
                                                      child: Padding(
                                                        padding: EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                valueOrDefault<
                                                                    double>(
                                                                  MediaQuery.sizeOf(context)
                                                                              .width <
                                                                          kBreakpointSmall
                                                                      ? 8.0
                                                                      : 25.0,
                                                                  50.0,
                                                                ),
                                                                0.0,
                                                                valueOrDefault<
                                                                    double>(
                                                                  MediaQuery.sizeOf(context)
                                                                              .width <
                                                                          kBreakpointSmall
                                                                      ? 6.0
                                                                      : 25.0,
                                                                  50.0,
                                                                ),
                                                                0.0),
                                                        child: TextFormField(
                                                          controller: _model
                                                              .textFieldSNTextController,
                                                          focusNode: _model
                                                              .textFieldSNFocusNode,
                                                          autofocus: false,
                                                          enabled: true,
                                                          obscureText: false,
                                                          decoration:
                                                              InputDecoration(
                                                            isDense: true,
                                                            labelStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelSmall
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .labelSmallFamily,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                      fontSize:
                                                                          18.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      useGoogleFonts:
                                                                          !FlutterFlowTheme.of(context)
                                                                              .labelSmallIsCustom,
                                                                    ),
                                                            hintText: 'SN-8832',
                                                            hintStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLarge
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyLargeFamily,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .tertiary,
                                                                      fontSize:
                                                                          18.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      useGoogleFonts:
                                                                          !FlutterFlowTheme.of(context)
                                                                              .bodyLargeIsCustom,
                                                                    ),
                                                            enabledBorder:
                                                                InputBorder
                                                                    .none,
                                                            focusedBorder:
                                                                InputBorder
                                                                    .none,
                                                            errorBorder:
                                                                InputBorder
                                                                    .none,
                                                            focusedErrorBorder:
                                                                InputBorder
                                                                    .none,
                                                            filled: true,
                                                            fillColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondary,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .labelSmall
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelSmallFamily,
                                                                fontSize: 18.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts:
                                                                    !FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelSmallIsCustom,
                                                              ),
                                                          cursorColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .primaryText,
                                                          enableInteractiveSelection:
                                                              true,
                                                          validator: _model
                                                              .textFieldSNTextControllerValidator
                                                              .asValidator(
                                                                  context),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              onEnter: ((event) async {
                                                safeSetState(() =>
                                                    _model.mouseRegionHovered2 =
                                                        true);
                                              }),
                                              onExit: ((event) async {
                                                safeSetState(() =>
                                                    _model.mouseRegionHovered2 =
                                                        false);
                                              }),
                                            ),
                                          ),
                                        ),
                                      ].divide(SizedBox(width: 14.0)),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(1.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 12.0, 20.0, 20.0),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        safeSetState(() {
                                          _model.dropDownMakeValueController
                                              ?.reset();
                                          _model.dropDownMakeValue = null;
                                          _model.dropDownModelValueController
                                              ?.reset();
                                          _model.dropDownModelValue = null;
                                        });
                                        safeSetState(() {
                                          _model.textFieldSNTextController
                                              ?.text = FFAppState()
                                                          .userAC
                                                          .serialNumber !=
                                                      ''
                                              ? FFAppState().userAC.serialNumber
                                              : '';
                                        });
                                        FFAppState().userAC = UserACStruct();
                                        safeSetState(() {});
                                      },
                                      child: Text(
                                        'Clear Form ',
                                        textAlign: TextAlign.start,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .accent1,
                                              fontSize: valueOrDefault<double>(
                                                MediaQuery.sizeOf(context)
                                                            .width <
                                                        kBreakpointSmall
                                                    ? 10.0
                                                    : 18.0,
                                                40.0,
                                              ),
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.bold,
                                              decoration:
                                                  TextDecoration.underline,
                                              useGoogleFonts:
                                                  !FlutterFlowTheme.of(context)
                                                      .bodyMediumIsCustom,
                                            ),
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 12.0, 0.0, 24.0),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        _model.newAC = true;
                                        safeSetState(() {});
                                      },
                                      child: Text(
                                        'Not listed? Enter your A/C details.',
                                        textAlign: TextAlign.start,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .accent1,
                                              fontSize: valueOrDefault<double>(
                                                MediaQuery.sizeOf(context)
                                                            .width <
                                                        kBreakpointSmall
                                                    ? 10.0
                                                    : 18.0,
                                                40.0,
                                              ),
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.bold,
                                              decoration:
                                                  TextDecoration.underline,
                                              useGoogleFonts:
                                                  !FlutterFlowTheme.of(context)
                                                      .bodyMediumIsCustom,
                                            ),
                                      ),
                                    ),
                                  ),
                                ),
                                ClipRRect(
                                  child: Container(
                                    constraints: BoxConstraints(
                                      maxHeight:
                                          MediaQuery.sizeOf(context).height *
                                              0.1,
                                    ),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        width: 1.0,
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              if (_model.textFieldSNTextController
                                                          .text !=
                                                      '') {
                                                FFAppState().updateUserACStruct(
                                                  (e) => e
                                                    ..serialNumber = _model
                                                        .textFieldSNTextController
                                                        .text,
                                                );
                                              }

                                              context.pushNamed(
                                                  CLibraryVideoFlowWidget
                                                      .routeName);
                                            },
                                            child: Container(
                                              height: double.infinity,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                border: Border.all(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                ),
                                              ),
                                              child: MouseRegion(
                                                opaque: false,
                                                cursor:
                                                    SystemMouseCursors.click ??
                                                        MouseCursor.defer,
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          10.0, 0.0, 10.0, 0.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      AutoSizeText(
                                                        'START DIAGNOSIS',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleMediumFamily,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondary,
                                                                  fontSize:
                                                                      24.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                  useGoogleFonts:
                                                                      !FlutterFlowTheme.of(
                                                                              context)
                                                                          .titleMediumIsCustom,
                                                                ),
                                                        overflow:
                                                            TextOverflow.clip,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                onEnter: ((event) async {
                                                  safeSetState(() => _model
                                                          .mouseRegionHovered3 =
                                                      true);
                                                  // Start Arrow Animation
                                                  if (animationsMap[
                                                          'iconOnActionTriggerAnimation'] !=
                                                      null) {
                                                    await animationsMap[
                                                            'iconOnActionTriggerAnimation']!
                                                        .controller
                                                      ..reset()
                                                      ..repeat(reverse: true);
                                                  }
                                                }),
                                                onExit: ((event) async {
                                                  safeSetState(() => _model
                                                          .mouseRegionHovered3 =
                                                      false);
                                                  // Reset Arrow Animation
                                                  if (animationsMap[
                                                          'iconOnActionTriggerAnimation'] !=
                                                      null) {
                                                    animationsMap[
                                                            'iconOnActionTriggerAnimation']!
                                                        .controller
                                                        .reset();
                                                  }
                                                }),
                                              ),
                                            ),
                                          ),
                                        ),
                                        if (responsiveVisibility(
                                          context: context,
                                          phone: false,
                                        ))
                                          Container(
                                            width: valueOrDefault<double>(
                                              MediaQuery.sizeOf(context)
                                                      .height *
                                                  0.1,
                                              100.0,
                                            ),
                                            height: valueOrDefault<double>(
                                              MediaQuery.sizeOf(context)
                                                      .height *
                                                  0.1,
                                              100.0,
                                            ),
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                            ),
                                            child: Icon(
                                              Icons.arrow_forward,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              size: valueOrDefault<double>(
                                                MediaQuery.sizeOf(context)
                                                            .width <
                                                        kBreakpointSmall
                                                    ? 18.0
                                                    : 40.0,
                                                40.0,
                                              ),
                                            ).animateOnActionTrigger(
                                              animationsMap[
                                                  'iconOnActionTriggerAnimation']!,
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
                      ),
                    ),
                  if (_model.newAC)
                    wrapWithModel(
                      model: _model.enterManuallySerialNumberModel,
                      updateCallback: () => safeSetState(() {}),
                      child: EnterManuallySerialNumberWidget(),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
