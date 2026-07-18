import '/b_screen_components/asterisk/asterisk_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 's03_homestartdiagnosis01_model.dart';
export 's03_homestartdiagnosis01_model.dart';

class S03Homestartdiagnosis01Widget extends StatefulWidget {
  const S03Homestartdiagnosis01Widget({super.key});

  @override
  State<S03Homestartdiagnosis01Widget> createState() =>
      _S03Homestartdiagnosis01WidgetState();
}

class _S03Homestartdiagnosis01WidgetState
    extends State<S03Homestartdiagnosis01Widget> with TickerProviderStateMixin {
  late S03Homestartdiagnosis01Model _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => S03Homestartdiagnosis01Model());

    _model.textFieldNameTextController ??= TextEditingController();
    _model.textFieldNameFocusNode ??= FocusNode();

    _model.textFieldEmailAddressTextController1 ??= TextEditingController();
    _model.textFieldEmailAddressFocusNode1 ??= FocusNode();

    _model.textFieldEmailAddressTextController2 ??= TextEditingController();
    _model.textFieldEmailAddressFocusNode2 ??= FocusNode();

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
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        VerticalDivider(
                          width: 1.0,
                          thickness: 1.0,
                          color: FlutterFlowTheme.of(context).tertiary,
                        ),
                      ].addToStart(SizedBox(width: 200.0)),
                    ),
                  ),
                  Divider(
                    height: 1.0,
                    thickness: 1.0,
                    color: FlutterFlowTheme.of(context).tertiary,
                  ),
                  Expanded(
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                      child: Container(
                        width:
                            MediaQuery.sizeOf(context).width < kBreakpointLarge
                                ? (MediaQuery.sizeOf(context).width * 0.86)
                                : (MediaQuery.sizeOf(context).width * 0.37),
                        constraints: BoxConstraints(
                          maxWidth: valueOrDefault<double>(
                            MediaQuery.sizeOf(context).width < kBreakpointLarge
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
                                    height: MediaQuery.sizeOf(context).height *
                                        0.25,
                                    constraints: BoxConstraints(
                                      maxHeight: valueOrDefault<double>(
                                        () {
                                          if (MediaQuery.sizeOf(context).width <
                                              kBreakpointSmall) {
                                            return 171.0;
                                          } else if (MediaQuery.sizeOf(context)
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
                                      alignment: AlignmentDirectional(0.0, 1.0),
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
                                                  !FlutterFlowTheme.of(context)
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
                                            style: FlutterFlowTheme.of(context)
                                                .labelMedium
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMediumFamily,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondary,
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
                                    height: MediaQuery.sizeOf(context).height *
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
                                          if (MediaQuery.sizeOf(context).width <
                                              kBreakpointSmall) {
                                            return (MediaQuery.sizeOf(context)
                                                    .width *
                                                0.4);
                                          } else if (MediaQuery.sizeOf(context)
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
                                          if (MediaQuery.sizeOf(context).width <
                                              kBreakpointSmall) {
                                            return (MediaQuery.sizeOf(context)
                                                    .width *
                                                0.4);
                                          } else if (MediaQuery.sizeOf(context)
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
                maxWidth: 1055.0,
                maxHeight: valueOrDefault<double>(
                  () {
                    if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                      return 577.0;
                    } else if (MediaQuery.sizeOf(context).width <
                        kBreakpointLarge) {
                      return 900.0;
                    } else {
                      return 1000.0;
                    }
                  }(),
                  1000.0,
                ),
              ),
              decoration: BoxDecoration(
                border: Border.all(
                  color: FlutterFlowTheme.of(context).primary,
                  width: 1.0,
                ),
              ),
              child: Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(
                      0.0,
                      valueOrDefault<double>(
                        MediaQuery.sizeOf(context).width < kBreakpointSmall
                            ? 25.0
                            : 50.0,
                        50.0,
                      ),
                      0.0,
                      valueOrDefault<double>(
                        MediaQuery.sizeOf(context).width < kBreakpointSmall
                            ? 25.0
                            : 50.0,
                        50.0,
                      )),
                  child: Container(
                    width: MediaQuery.sizeOf(context).width < kBreakpointLarge
                        ? (MediaQuery.sizeOf(context).width * 0.86)
                        : (MediaQuery.sizeOf(context).width * 0.442),
                    height: double.infinity,
                    constraints: BoxConstraints(
                      maxWidth: 935.0,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: FlutterFlowTheme.of(context).primary,
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          constraints: BoxConstraints(
                            maxHeight: 96.0,
                          ),
                          decoration: BoxDecoration(),
                        ),
                        Expanded(
                          child: Align(
                            alignment: AlignmentDirectional(0.0, -1.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 15.0, 0.0, 0.0),
                              child: Container(
                                width: double.infinity,
                                constraints: BoxConstraints(
                                  maxHeight: 597.0,
                                ),
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  border: Border.all(
                                    color:
                                        FlutterFlowTheme.of(context).secondary,
                                    width: 1.0,
                                  ),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          20.0, 20.0, 20.0, 20.0),
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
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          20.0, 0.0, 20.0, 0.0),
                                      child: Container(
                                        height:
                                            MediaQuery.sizeOf(context).height *
                                                0.1,
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
                                            width: 2.0,
                                          ),
                                        ),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Container(
                                              width: valueOrDefault<double>(
                                                MediaQuery.sizeOf(context)
                                                            .width <
                                                        kBreakpointSmall
                                                    ? 50.0
                                                    : (MediaQuery.sizeOf(
                                                                context)
                                                            .height *
                                                        0.1),
                                                100.0,
                                              ),
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                shape: BoxShape.rectangle,
                                              ),
                                              child: Align(
                                                alignment: AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Text(
                                                  'A/C\nMAKE',
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
                                                                .secondary,
                                                        fontSize:
                                                            valueOrDefault<
                                                                double>(
                                                          MediaQuery.sizeOf(
                                                                          context)
                                                                      .width <
                                                                  kBreakpointSmall
                                                              ? 12.0
                                                              : 22.0,
                                                          40.0,
                                                        ),
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        useGoogleFonts:
                                                            !FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMediumIsCustom,
                                                      ),
                                                ),
                                              ),
                                            ),
                                            VerticalDivider(
                                              width: 1.0,
                                              thickness: 1.0,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                            ),
                                            Expanded(
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        valueOrDefault<double>(
                                                          MediaQuery.sizeOf(
                                                                          context)
                                                                      .width <
                                                                  kBreakpointSmall
                                                              ? 8.0
                                                              : 25.0,
                                                          50.0,
                                                        ),
                                                        0.0,
                                                        valueOrDefault<double>(
                                                          MediaQuery.sizeOf(
                                                                          context)
                                                                      .width <
                                                                  kBreakpointSmall
                                                              ? 10.0
                                                              : 25.0,
                                                          50.0,
                                                        ),
                                                        0.0),
                                                child: TextFormField(
                                                  controller: _model
                                                      .textFieldNameTextController,
                                                  focusNode: _model
                                                      .textFieldNameFocusNode,
                                                  autofocus: false,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    isDense: false,
                                                    hintText:
                                                        'e.g. CARRIER, TRANE, LENNOX',
                                                    hintStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelSmall
                                                            .override(
                                                              fontFamily:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelSmallFamily,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .tertiary,
                                                              letterSpacing:
                                                                  0.0,
                                                              useGoogleFonts:
                                                                  !FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelSmallIsCustom,
                                                            ),
                                                    enabledBorder:
                                                        InputBorder.none,
                                                    focusedBorder:
                                                        InputBorder.none,
                                                    errorBorder:
                                                        InputBorder.none,
                                                    focusedErrorBorder:
                                                        InputBorder.none,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .labelSmall
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelSmallFamily,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts:
                                                            !FlutterFlowTheme
                                                                    .of(context)
                                                                .labelSmallIsCustom,
                                                      ),
                                                  cursorColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                  validator: _model
                                                      .textFieldNameTextControllerValidator
                                                      .asValidator(context),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          20.0, 0.0, 20.0, 0.0),
                                      child: Container(
                                        height:
                                            MediaQuery.sizeOf(context).height *
                                                0.1,
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
                                            width: 1.5,
                                          ),
                                        ),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Container(
                                              width: valueOrDefault<double>(
                                                MediaQuery.sizeOf(context)
                                                            .width <
                                                        kBreakpointSmall
                                                    ? 50.0
                                                    : (MediaQuery.sizeOf(
                                                                context)
                                                            .height *
                                                        0.1),
                                                100.0,
                                              ),
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondary,
                                                shape: BoxShape.rectangle,
                                                border: Border.all(
                                                  width: 2.0,
                                                ),
                                              ),
                                              child: Align(
                                                alignment: AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          4.0, 0.0, 4.0, 0.0),
                                                  child: Text(
                                                    'MODEL\nNUMBER',
                                                    style:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primary,
                                                              fontSize:
                                                                  valueOrDefault<
                                                                      double>(
                                                                MediaQuery.sizeOf(context)
                                                                            .width <
                                                                        kBreakpointSmall
                                                                    ? 9.0
                                                                    : 18.0,
                                                                40.0,
                                                              ),
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              useGoogleFonts:
                                                                  !FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumIsCustom,
                                                            ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            VerticalDivider(
                                              width: 2.0,
                                              thickness: 1.0,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                            ),
                                            Expanded(
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        valueOrDefault<double>(
                                                          MediaQuery.sizeOf(
                                                                          context)
                                                                      .width <
                                                                  kBreakpointSmall
                                                              ? 8.0
                                                              : 25.0,
                                                          50.0,
                                                        ),
                                                        0.0,
                                                        valueOrDefault<double>(
                                                          MediaQuery.sizeOf(
                                                                          context)
                                                                      .width <
                                                                  kBreakpointSmall
                                                              ? 10.0
                                                              : 25.0,
                                                          50.0,
                                                        ),
                                                        0.0),
                                                child: TextFormField(
                                                  controller: _model
                                                      .textFieldEmailAddressTextController1,
                                                  focusNode: _model
                                                      .textFieldEmailAddressFocusNode1,
                                                  autofocus: false,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    isDense: false,
                                                    hintText:
                                                        'X-7700-INDUSTRIAL',
                                                    hintStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelSmall
                                                            .override(
                                                              fontFamily:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelSmallFamily,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .tertiary,
                                                              letterSpacing:
                                                                  0.0,
                                                              useGoogleFonts:
                                                                  !FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelSmallIsCustom,
                                                            ),
                                                    enabledBorder:
                                                        InputBorder.none,
                                                    focusedBorder:
                                                        InputBorder.none,
                                                    errorBorder:
                                                        InputBorder.none,
                                                    focusedErrorBorder:
                                                        InputBorder.none,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .labelSmall
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelSmallFamily,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts:
                                                            !FlutterFlowTheme
                                                                    .of(context)
                                                                .labelSmallIsCustom,
                                                      ),
                                                  cursorColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                  validator: _model
                                                      .textFieldEmailAddressTextController1Validator
                                                      .asValidator(context),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          20.0, 0.0, 20.0, 0.0),
                                      child: Container(
                                        height:
                                            MediaQuery.sizeOf(context).height *
                                                0.1,
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
                                            width: 2.0,
                                          ),
                                        ),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Container(
                                              width: valueOrDefault<double>(
                                                MediaQuery.sizeOf(context)
                                                            .width <
                                                        kBreakpointSmall
                                                    ? 50.0
                                                    : (MediaQuery.sizeOf(
                                                                context)
                                                            .height *
                                                        0.1),
                                                100.0,
                                              ),
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                shape: BoxShape.rectangle,
                                              ),
                                              child: Align(
                                                alignment: AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          4.0, 0.0, 4.0, 0.0),
                                                  child: Text(
                                                    'SERIAL\nNUMBER',
                                                    style:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondary,
                                                              fontSize:
                                                                  valueOrDefault<
                                                                      double>(
                                                                MediaQuery.sizeOf(context)
                                                                            .width <
                                                                        kBreakpointSmall
                                                                    ? 9.0
                                                                    : 18.0,
                                                                40.0,
                                                              ),
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              useGoogleFonts:
                                                                  !FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumIsCustom,
                                                            ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            VerticalDivider(
                                              width: 1.0,
                                              thickness: 1.0,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                            ),
                                            Expanded(
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        valueOrDefault<double>(
                                                          MediaQuery.sizeOf(
                                                                          context)
                                                                      .width <
                                                                  kBreakpointSmall
                                                              ? 8.0
                                                              : 25.0,
                                                          50.0,
                                                        ),
                                                        0.0,
                                                        valueOrDefault<double>(
                                                          MediaQuery.sizeOf(
                                                                          context)
                                                                      .width <
                                                                  kBreakpointSmall
                                                              ? 10.0
                                                              : 25.0,
                                                          50.0,
                                                        ),
                                                        0.0),
                                                child: TextFormField(
                                                  controller: _model
                                                      .textFieldEmailAddressTextController2,
                                                  focusNode: _model
                                                      .textFieldEmailAddressFocusNode2,
                                                  autofocus: false,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    isDense: false,
                                                    hintText: 'SN-19192834764',
                                                    hintStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelSmall
                                                            .override(
                                                              fontFamily:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelSmallFamily,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .tertiary,
                                                              letterSpacing:
                                                                  0.0,
                                                              useGoogleFonts:
                                                                  !FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelSmallIsCustom,
                                                            ),
                                                    enabledBorder:
                                                        InputBorder.none,
                                                    focusedBorder:
                                                        InputBorder.none,
                                                    errorBorder:
                                                        InputBorder.none,
                                                    focusedErrorBorder:
                                                        InputBorder.none,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .labelSmall
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelSmallFamily,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts:
                                                            !FlutterFlowTheme
                                                                    .of(context)
                                                                .labelSmallIsCustom,
                                                      ),
                                                  cursorColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                  validator: _model
                                                      .textFieldEmailAddressTextController2Validator
                                                      .asValidator(context),
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
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              20.0, 0.0, 20.0, 0.0),
                          child: Container(
                            height: MediaQuery.sizeOf(context).height * 0.1,
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
                                color: FlutterFlowTheme.of(context).primary,
                                width: 1.0,
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
                                          FlutterFlowTheme.of(context).primary,
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                      ),
                                    ),
                                    child: MouseRegion(
                                      opaque: false,
                                      cursor: SystemMouseCursors.click ??
                                          MouseCursor.defer,
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10.0, 0.0, 10.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            AutoSizeText(
                                              'INITIATE DIAGNOSIS',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .titleMedium
                                                  .override(
                                                    fontFamily:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleMediumFamily,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondary,
                                                    letterSpacing: 0.0,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    useGoogleFonts:
                                                        !FlutterFlowTheme.of(
                                                                context)
                                                            .titleMediumIsCustom,
                                                  ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      50.0, 0.0, 0.0, 0.0),
                                              child: Icon(
                                                Icons.arrow_forward,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                size: valueOrDefault<double>(
                                                  MediaQuery.sizeOf(context)
                                                              .width <
                                                          kBreakpointSmall
                                                      ? 24.0
                                                      : 48.0,
                                                  48.0,
                                                ),
                                              ).animateOnActionTrigger(
                                                animationsMap[
                                                    'iconOnActionTriggerAnimation']!,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      onEnter: ((event) async {
                                        safeSetState(() =>
                                            _model.mouseRegionHovered = true);
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
                                        safeSetState(() =>
                                            _model.mouseRegionHovered = false);
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
                                if (responsiveVisibility(
                                  context: context,
                                  phone: false,
                                ))
                                  Container(
                                    width: valueOrDefault<double>(
                                      MediaQuery.sizeOf(context).height * 0.1,
                                      100.0,
                                    ),
                                    height: valueOrDefault<double>(
                                      MediaQuery.sizeOf(context).height * 0.1,
                                      100.0,
                                    ),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                    ),
                                    child: Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Icon(
                                        Icons.sentiment_satisfied_sharp,
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        size: 60.0,
                                      ),
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          height: MediaQuery.sizeOf(context).height * 0.05,
                          decoration: BoxDecoration(),
                        ),
                      ],
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
