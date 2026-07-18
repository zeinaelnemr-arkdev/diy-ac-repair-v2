import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'default_diagnosis_search_model.dart';
export 'default_diagnosis_search_model.dart';

/// Diagnosis screen if the user can't find his/her serial number
///
class DefaultDiagnosisSearchWidget extends StatefulWidget {
  const DefaultDiagnosisSearchWidget({super.key});

  @override
  State<DefaultDiagnosisSearchWidget> createState() =>
      _DefaultDiagnosisSearchWidgetState();
}

class _DefaultDiagnosisSearchWidgetState
    extends State<DefaultDiagnosisSearchWidget> with TickerProviderStateMixin {
  late DefaultDiagnosisSearchModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DefaultDiagnosisSearchModel());

    _model.textFieldNameTextController ??= TextEditingController();
    _model.textFieldNameFocusNode ??= FocusNode();

    _model.textController2 ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

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
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(
            0.0,
            valueOrDefault<double>(
              MediaQuery.sizeOf(context).width < kBreakpointSmall ? 25.0 : 50.0,
              50.0,
            ),
            0.0,
            valueOrDefault<double>(
              MediaQuery.sizeOf(context).width < kBreakpointSmall ? 25.0 : 50.0,
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
              width: 6.0,
            ),
          ),
          child: Align(
            alignment: AlignmentDirectional(0.0, -1.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Align(
                    alignment: AlignmentDirectional(0.0, -1.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                      child: Container(
                        width: double.infinity,
                        constraints: BoxConstraints(
                          maxHeight: 597.0,
                        ),
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          border: Border.all(
                            color: FlutterFlowTheme.of(context).secondary,
                            width: 1.0,
                          ),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(0.0, -1.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    20.0, 20.0, 20.0, 20.0),
                                child: AutoSizeText(
                                  'WHAT DO YOU NEED HELP WITH?\nLET’S FIX IT TOGETHER.',
                                  style: FlutterFlowTheme.of(context)
                                      .headlineMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .headlineMediumFamily,
                                        letterSpacing:
                                            MediaQuery.sizeOf(context).width <
                                                    kBreakpointSmall
                                                ? FFAppConstants.LetterSpacingM
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
                              alignment: AlignmentDirectional(-1.0, -1.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    20.0, 0.0, 0.0, 10.0),
                                child: Container(
                                  width: valueOrDefault<double>(
                                    MediaQuery.sizeOf(context).width <
                                            kBreakpointSmall
                                        ? 50.0
                                        : (MediaQuery.sizeOf(context).height *
                                            0.1),
                                    100.0,
                                  ),
                                  decoration: BoxDecoration(
                                    color:
                                        FlutterFlowTheme.of(context).secondary,
                                    shape: BoxShape.rectangle,
                                  ),
                                  child: Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 12.0, 0.0, 0.0),
                                      child: Text(
                                        'A/C MAKE',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
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
                                              useGoogleFonts:
                                                  !FlutterFlowTheme.of(context)
                                                      .bodyMediumIsCustom,
                                            ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            if (false)
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    20.0, 0.0, 20.0, 0.0),
                                child: Container(
                                  height:
                                      MediaQuery.sizeOf(context).height * 0.08,
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
                                    child: TextFormField(
                                      controller:
                                          _model.textFieldNameTextController,
                                      focusNode: _model.textFieldNameFocusNode,
                                      autofocus: false,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        isDense: false,
                                        hintText: 'e.g. CARRIER, TRANE, LENNOX',
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .labelSmall
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .labelSmallFamily,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .tertiary,
                                              letterSpacing: 0.0,
                                              useGoogleFonts:
                                                  !FlutterFlowTheme.of(context)
                                                      .labelSmallIsCustom,
                                            ),
                                        enabledBorder: InputBorder.none,
                                        focusedBorder: InputBorder.none,
                                        errorBorder: InputBorder.none,
                                        focusedErrorBorder: InputBorder.none,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily,
                                            letterSpacing: 0.0,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .bodyMediumIsCustom,
                                          ),
                                      cursorColor:
                                          FlutterFlowTheme.of(context).primary,
                                      validator: _model
                                          .textFieldNameTextControllerValidator
                                          .asValidator(context),
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
                                      MediaQuery.sizeOf(context).height * 0.08,
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
                                      controller:
                                          _model.dropDownMakeValueController ??=
                                              FormFieldController<String>(
                                        _model.dropDownMakeValue ??=
                                            FFAppState().userAC.acMake?.id !=
                                                        null &&
                                                    FFAppState()
                                                            .userAC
                                                            .acMake
                                                            ?.id !=
                                                        ''
                                                ? FFAppState().userAC.acMake?.id
                                                : '',
                                      ),
                                      options: List<String>.from(<String>[]),
                                      optionLabels: <String>[],
                                      onChanged: (val) => safeSetState(
                                          () => _model.dropDownMakeValue = val),
                                      height: 50.0,
                                      maxHeight: 200.0,
                                      searchHintTextStyle: FlutterFlowTheme.of(
                                              context)
                                          .labelMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .labelMediumFamily,
                                            color: FlutterFlowTheme.of(context)
                                                .tertiary,
                                            fontSize: 24.0,
                                            letterSpacing: 0.0,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .labelMediumIsCustom,
                                          ),
                                      searchTextStyle: FlutterFlowTheme.of(
                                              context)
                                          .bodyMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            fontSize: 24.0,
                                            letterSpacing: 0.0,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .bodyMediumIsCustom,
                                          ),
                                      textStyle: FlutterFlowTheme.of(context)
                                          .labelSmall
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .labelSmallFamily,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            letterSpacing: 0.0,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .labelSmallIsCustom,
                                          ),
                                      hintText:
                                          'Enter yourA/C Make e.g. Carrier',
                                      searchHintText: 'Search...',
                                      icon: Icon(
                                        Icons.close_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        size: 24.0,
                                      ),
                                      fillColor: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      elevation: 2.0,
                                      borderColor: Colors.transparent,
                                      borderWidth: 0.0,
                                      borderRadius: 8.0,
                                      margin: EdgeInsetsDirectional.fromSTEB(
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
                                height:
                                    MediaQuery.sizeOf(context).height * 0.08,
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
                                    color:
                                        FlutterFlowTheme.of(context).secondary,
                                    width: 2.0,
                                  ),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Expanded(
                                      child: Container(
                                        height: 40.0,
                                        constraints: BoxConstraints(
                                          maxWidth: 617.0,
                                        ),
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondary,
                                          border: Border.all(
                                            color: FlutterFlowTheme.of(context)
                                                .secondary,
                                          ),
                                        ),
                                        child: Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.0),
                                          child: Text(
                                            'Model Number',
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
                                    Expanded(
                                      child: Container(
                                        height: 40.0,
                                        constraints: BoxConstraints(
                                          maxWidth: 617.0,
                                        ),
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondary,
                                          border: Border.all(
                                            color: FlutterFlowTheme.of(context)
                                                .secondary,
                                          ),
                                        ),
                                        child: Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.0),
                                          child: Text(
                                            'Serial Number',
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
                                  ].divide(SizedBox(width: 14.0)),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 0.0, 20.0, 0.0),
                              child: Container(
                                height:
                                    MediaQuery.sizeOf(context).height * 0.08,
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
                                    color:
                                        FlutterFlowTheme.of(context).secondary,
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
                                          color: FlutterFlowTheme.of(context)
                                              .secondary,
                                          border: Border.all(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            width: 3.0,
                                          ),
                                        ),
                                        child: MouseRegion(
                                          opaque: false,
                                          cursor: SystemMouseCursors.click ??
                                              MouseCursor.defer,
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 0.0, 10.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                if (false)
                                                  Expanded(
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  valueOrDefault<
                                                                      double>(
                                                                    MediaQuery.sizeOf(context).width <
                                                                            kBreakpointSmall
                                                                        ? 8.0
                                                                        : 25.0,
                                                                    50.0,
                                                                  ),
                                                                  0.0,
                                                                  valueOrDefault<
                                                                      double>(
                                                                    MediaQuery.sizeOf(context).width <
                                                                            kBreakpointSmall
                                                                        ? 6.0
                                                                        : 25.0,
                                                                    50.0,
                                                                  ),
                                                                  0.0),
                                                      child: TextFormField(
                                                        controller: _model
                                                            .textController2,
                                                        focusNode: _model
                                                            .textFieldFocusNode,
                                                        autofocus: false,
                                                        enabled: true,
                                                        textInputAction:
                                                            TextInputAction
                                                                .next,
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
                                                                    letterSpacing:
                                                                        0.0,
                                                                    useGoogleFonts:
                                                                        !FlutterFlowTheme.of(context)
                                                                            .labelSmallIsCustom,
                                                                  ),
                                                          hintText: 'M-90210',
                                                          hintStyle:
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
                                                                    letterSpacing:
                                                                        0.0,
                                                                    useGoogleFonts:
                                                                        !FlutterFlowTheme.of(context)
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
                                                          filled: true,
                                                          fillColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .secondary,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelSmall
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelSmallFamily,
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
                                                            .textController2Validator
                                                            .asValidator(
                                                                context),
                                                      ),
                                                    ),
                                                  ),
                                                Expanded(
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
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
                                                    child: FlutterFlowDropDown<
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
                                                      options:
                                                          List<String>.from(
                                                              <String>[]),
                                                      optionLabels: <String>[],
                                                      onChanged: (val) =>
                                                          safeSetState(() =>
                                                              _model.dropDownModelValue =
                                                                  val),
                                                      height: 50.0,
                                                      maxHeight: 200.0,
                                                      searchHintTextStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelSmall
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelSmallFamily,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .tertiary,
                                                                fontSize: 18.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts:
                                                                    !FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelSmallIsCustom,
                                                              ),
                                                      searchTextStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                fontSize: 18.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts:
                                                                    !FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMediumIsCustom,
                                                              ),
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelSmall
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelSmallFamily,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts:
                                                                    !FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelSmallIsCustom,
                                                              ),
                                                      hintText: 'M-90210',
                                                      searchHintText:
                                                          'Search...',
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
                                                      borderColor:
                                                          Colors.transparent,
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
                                            safeSetState(() => _model
                                                .mouseRegionHovered1 = true);
                                          }),
                                          onExit: ((event) async {
                                            safeSetState(() => _model
                                                .mouseRegionHovered1 = false);
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
                                          color: FlutterFlowTheme.of(context)
                                              .secondary,
                                          border: Border.all(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            width: 3.0,
                                          ),
                                        ),
                                        child: MouseRegion(
                                          opaque: false,
                                          cursor: SystemMouseCursors.click ??
                                              MouseCursor.defer,
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 0.0, 10.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Expanded(
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
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
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelSmallFamily,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts:
                                                                      !FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelSmallIsCustom,
                                                                ),
                                                        hintText: 'SN-8832',
                                                        hintStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyLarge
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLargeFamily,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .tertiary,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts:
                                                                      !FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyLargeIsCustom,
                                                                ),
                                                        enabledBorder:
                                                            InputBorder.none,
                                                        focusedBorder:
                                                            InputBorder.none,
                                                        errorBorder:
                                                            InputBorder.none,
                                                        focusedErrorBorder:
                                                            InputBorder.none,
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
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelSmallFamily,
                                                            letterSpacing: 0.0,
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
                                                          .asValidator(context),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          onEnter: ((event) async {
                                            safeSetState(() => _model
                                                .mouseRegionHovered2 = true);
                                          }),
                                          onExit: ((event) async {
                                            safeSetState(() => _model
                                                .mouseRegionHovered2 = false);
                                          }),
                                        ),
                                      ),
                                    ),
                                  ].divide(SizedBox(width: 14.0)),
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(-1.0, -1.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    20.0, 20.0, 0.0, 10.0),
                                child: Container(
                                  width: valueOrDefault<double>(
                                    MediaQuery.sizeOf(context).width <
                                            kBreakpointSmall
                                        ? 70.0
                                        : (MediaQuery.sizeOf(context).height *
                                            0.1),
                                    100.0,
                                  ),
                                  decoration: BoxDecoration(
                                    color:
                                        FlutterFlowTheme.of(context).secondary,
                                    shape: BoxShape.rectangle,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: MediaQuery.sizeOf(context).height * 0.05,
                  decoration: BoxDecoration(),
                ),
                Container(
                  height: MediaQuery.sizeOf(context).height * 0.1,
                  constraints: BoxConstraints(
                    minHeight: 50.0,
                    maxHeight: valueOrDefault<double>(
                      MediaQuery.sizeOf(context).width < kBreakpointSmall
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
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            if (_model.textFieldSNTextController.text != '') {
                              FFAppState().updateUserACStruct(
                                (e) => e
                                  ..serialNumber =
                                      _model.textFieldSNTextController.text,
                              );
                            }

                            context.pushNamed(
                                DSelectProductRepairWidget.routeName);
                          },
                          child: Container(
                            height: double.infinity,
                            constraints: BoxConstraints(
                              maxWidth: 617.0,
                            ),
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).primary,
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).primary,
                              ),
                            ),
                            child: MouseRegion(
                              opaque: false,
                              cursor:
                                  SystemMouseCursors.click ?? MouseCursor.defer,
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10.0, 0.0, 10.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    AutoSizeText(
                                      'START DIAGNOSIS',
                                      style: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .titleMediumFamily,
                                            color: FlutterFlowTheme.of(context)
                                                .secondary,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.normal,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .titleMediumIsCustom,
                                          ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          50.0, 0.0, 0.0, 0.0),
                                      child: Icon(
                                        Icons.arrow_forward,
                                        color: FlutterFlowTheme.of(context)
                                            .secondary,
                                        size: valueOrDefault<double>(
                                          MediaQuery.sizeOf(context).width <
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
                                safeSetState(
                                    () => _model.mouseRegionHovered3 = true);
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
                                safeSetState(
                                    () => _model.mouseRegionHovered3 = false);
                                // Reset Arrow Animation
                                if (animationsMap[
                                        'iconOnActionTriggerAnimation'] !=
                                    null) {
                                  animationsMap['iconOnActionTriggerAnimation']!
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
                              Icons.auto_fix_high,
                              color: FlutterFlowTheme.of(context).primary,
                              size: 60.0,
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
