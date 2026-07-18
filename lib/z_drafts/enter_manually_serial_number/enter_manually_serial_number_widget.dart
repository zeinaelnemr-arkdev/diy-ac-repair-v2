import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/c_components/dialog_components/success_dialog/success_dialog_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'enter_manually_serial_number_model.dart';
export 'enter_manually_serial_number_model.dart';

/// Diagnosis screen if the user can't find his/her serial number
///
class EnterManuallySerialNumberWidget extends StatefulWidget {
  const EnterManuallySerialNumberWidget({super.key});

  @override
  State<EnterManuallySerialNumberWidget> createState() =>
      _EnterManuallySerialNumberWidgetState();
}

class _EnterManuallySerialNumberWidgetState
    extends State<EnterManuallySerialNumberWidget>
    with TickerProviderStateMixin {
  late EnterManuallySerialNumberModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EnterManuallySerialNumberModel());

    _model.textFieldMakeTextController ??= TextEditingController();
    _model.textFieldMakeFocusNode ??= FocusNode();

    _model.textFieldModelTextController ??= TextEditingController();
    _model.textFieldModelFocusNode ??= FocusNode();

    _model.textFieldSNTextController ??= TextEditingController();
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
    return Align(
      alignment: AlignmentDirectional(0.0, -1.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: Align(
              alignment: AlignmentDirectional(0.0, -1.0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
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
                  child: Form(
                    key: _model.formKey,
                    autovalidateMode: AutovalidateMode.disabled,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0.0, -1.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                20.0, 20.0, 20.0, 20.0),
                            child: AutoSizeText(
                              'PLEASE ENTER YOUR A/C DETAILS ',
                              style: FlutterFlowTheme.of(context)
                                  .headlineMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .headlineMediumFamily,
                                    fontSize: 40.0,
                                    letterSpacing:
                                        MediaQuery.sizeOf(context).width <
                                                kBreakpointSmall
                                            ? FFAppConstants.LetterSpacingM
                                            : FFAppConstants.LetterSpacingTD,
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
                                20.0, 0.0, 20.0, 20.0),
                            child: AutoSizeText(
                              'OUR ADMIN WILL CACTACT YOU SHORTLY.',
                              style: FlutterFlowTheme.of(context)
                                  .headlineMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .headlineMediumFamily,
                                    fontSize: 25.0,
                                    letterSpacing:
                                        MediaQuery.sizeOf(context).width <
                                                kBreakpointSmall
                                            ? FFAppConstants.LetterSpacingM
                                            : FFAppConstants.LetterSpacingTD,
                                    fontWeight: FontWeight.w200,
                                    fontStyle: FontStyle.italic,
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
                              height: 40.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).secondary,
                                shape: BoxShape.rectangle,
                              ),
                              alignment: AlignmentDirectional(-1.0, 0.0),
                              child: Align(
                                alignment: AlignmentDirectional(-1.0, 0.0),
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
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          fontSize: valueOrDefault<double>(
                                            MediaQuery.sizeOf(context).width <
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
                        Align(
                          alignment: AlignmentDirectional(0.0, -1.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                20.0, 0.0, 20.0, 0.0),
                            child: Container(
                              height: MediaQuery.sizeOf(context).height * 0.08,
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
                              child: Container(
                                width: double.infinity,
                                child: TextFormField(
                                  controller:
                                      _model.textFieldMakeTextController,
                                  focusNode: _model.textFieldMakeFocusNode,
                                  autofocus: false,
                                  enabled: true,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    isDense: true,
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .labelMediumFamily,
                                          fontSize: 20.0,
                                          letterSpacing: 0.0,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .labelMediumIsCustom,
                                        ),
                                    hintText: 'Enter yourA/C Make e.g. Carrier',
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .labelMediumFamily,
                                          color: FlutterFlowTheme.of(context)
                                              .tertiary,
                                          fontSize: 20.0,
                                          letterSpacing: 0.0,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .labelMediumIsCustom,
                                        ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    filled: true,
                                    fillColor: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyMediumFamily,
                                        letterSpacing: 0.0,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .bodyMediumIsCustom,
                                      ),
                                  cursorColor:
                                      FlutterFlowTheme.of(context).primaryText,
                                  enableInteractiveSelection: true,
                                  validator: _model
                                      .textFieldMakeTextControllerValidator
                                      .asValidator(context),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              20.0, 0.0, 20.0, 0.0),
                          child: Container(
                            height: MediaQuery.sizeOf(context).height * 0.08,
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
                                color: FlutterFlowTheme.of(context).secondary,
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
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              fontSize: valueOrDefault<double>(
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
                                                  !FlutterFlowTheme.of(context)
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
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              fontSize: valueOrDefault<double>(
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
                                                  !FlutterFlowTheme.of(context)
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
                            height: MediaQuery.sizeOf(context).height * 0.08,
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
                                color: FlutterFlowTheme.of(context).secondary,
                                width: 2.0,
                              ),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
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
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10.0, 0.0, 10.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
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
                                                              ? 6.0
                                                              : 25.0,
                                                          50.0,
                                                        ),
                                                        0.0),
                                                child: TextFormField(
                                                  controller: _model
                                                      .textFieldModelTextController,
                                                  focusNode: _model
                                                      .textFieldModelFocusNode,
                                                  autofocus: false,
                                                  enabled: true,
                                                  textInputAction:
                                                      TextInputAction.next,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    isDense: true,
                                                    labelStyle:
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
                                                                  .primary,
                                                              letterSpacing:
                                                                  0.0,
                                                              useGoogleFonts:
                                                                  !FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelSmallIsCustom,
                                                            ),
                                                    hintText: 'M-90210',
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
                                                      .textFieldModelTextControllerValidator
                                                      .asValidator(context),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      onEnter: ((event) async {
                                        safeSetState(() =>
                                            _model.mouseRegionHovered1 = true);
                                      }),
                                      onExit: ((event) async {
                                        safeSetState(() =>
                                            _model.mouseRegionHovered1 = false);
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
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10.0, 0.0, 10.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
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
                                                  decoration: InputDecoration(
                                                    isDense: true,
                                                    labelStyle:
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
                                                              fontFamily:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLargeFamily,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
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
                                                  style:
                                                      FlutterFlowTheme.of(
                                                              context)
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
                                        safeSetState(() =>
                                            _model.mouseRegionHovered2 = true);
                                      }),
                                      onExit: ((event) async {
                                        safeSetState(() =>
                                            _model.mouseRegionHovered2 = false);
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
                                    : (MediaQuery.sizeOf(context).height * 0.1),
                                100.0,
                              ),
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).secondary,
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
          ),
          Container(
            width: double.infinity,
            height: MediaQuery.sizeOf(context).height * 0.05,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondary,
            ),
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
                      cursor: SystemMouseCursors.click ?? MouseCursor.defer,
                      child: Builder(
                        builder: (context) => Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              10.0, 0.0, 10.0, 0.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              _model.form = true;
                              if (_model.formKey.currentState == null ||
                                  !_model.formKey.currentState!.validate()) {
                                safeSetState(() => _model.form = false);
                                return;
                              }

                              var mailRecordReference =
                                  MailRecord.collection.doc();
                              await mailRecordReference
                                  .set(createMailRecordData(
                                to: 'esraa.abdou@arkdev.net',
                                message: createMessageStruct(
                                  subject:
                                      'New A/C Details Submission – DIY AC Repair',
                                  html:
                                      '<!DOCTYPE html> <html> <body style=\"margin:0; padding:0; background-color:#f4f6f8; font-family:Arial, sans-serif;\">   <div style=\"max-width:600px; margin:30px auto; background:#ffffff; border-radius:8px; padding:25px; box-shadow:0 2px 6px rgba(0,0,0,0.1);\">     <!-- Header -->     <div style=\"font-size:20px; font-weight:bold; color:#222; margin-bottom:20px;\">       New A/C Details Submitted     </div>     <!-- Intro -->     <div style=\"margin-bottom:15px; color:#333;\">       A user has submitted their A/C information through the system.     </div>     <!-- Data Box -->     <div style=\"background:#f1f3f5; padding:15px; border-radius:6px; margin-bottom:15px;\">       <div style=\"margin-bottom:10px;\">         <div style=\"font-weight:bold; color:#555;\">A/C Make:</div>         <div style=\"color:#000;\">${_model.textFieldMakeTextController.text}</div>       </div>       <div style=\"margin-bottom:10px;\">         <div style=\"font-weight:bold; color:#555;\">Model Number:</div>         <div style=\"color:#000;\">${_model.textFieldModelTextController.text}</div>       </div>       <div>         <div style=\"font-weight:bold; color:#555;\">Serial Number:</div>         <div style=\"color:#000;\">${_model.textFieldSNTextController.text}</div>       </div>     </div>     <!-- Extra Info -->     <div style=\"margin-bottom:10px;\">       <div style=\"font-weight:bold; color:#555;\">Submitted At:</div>       <div style=\"color:#000;\">${getCurrentTimestamp.toString()}</div>     </div>     <div style=\"margin-bottom:15px;\">       <div style=\"font-weight:bold; color:#555;\">User Email (if available):</div>       <div style=\"color:#000;\">${currentUserEmail != '' ? currentUserEmail : 'Anonymous User'}</div>     </div>     <!-- Footer -->     <div style=\"margin-top:25px; font-size:12px; color:#888; text-align:center;\">       This message was generated automatically by DIY AC Repair system.     </div>   </div> </body> </html>',
                                  clearUnsetFields: false,
                                  create: true,
                                ),
                              ));
                              _model.mail = MailRecord.getDocumentFromData(
                                  createMailRecordData(
                                    to: 'esraa.abdou@arkdev.net',
                                    message: createMessageStruct(
                                      subject:
                                          'New A/C Details Submission – DIY AC Repair',
                                      html:
                                          '<!DOCTYPE html> <html> <body style=\"margin:0; padding:0; background-color:#f4f6f8; font-family:Arial, sans-serif;\">   <div style=\"max-width:600px; margin:30px auto; background:#ffffff; border-radius:8px; padding:25px; box-shadow:0 2px 6px rgba(0,0,0,0.1);\">     <!-- Header -->     <div style=\"font-size:20px; font-weight:bold; color:#222; margin-bottom:20px;\">       New A/C Details Submitted     </div>     <!-- Intro -->     <div style=\"margin-bottom:15px; color:#333;\">       A user has submitted their A/C information through the system.     </div>     <!-- Data Box -->     <div style=\"background:#f1f3f5; padding:15px; border-radius:6px; margin-bottom:15px;\">       <div style=\"margin-bottom:10px;\">         <div style=\"font-weight:bold; color:#555;\">A/C Make:</div>         <div style=\"color:#000;\">${_model.textFieldMakeTextController.text}</div>       </div>       <div style=\"margin-bottom:10px;\">         <div style=\"font-weight:bold; color:#555;\">Model Number:</div>         <div style=\"color:#000;\">${_model.textFieldModelTextController.text}</div>       </div>       <div>         <div style=\"font-weight:bold; color:#555;\">Serial Number:</div>         <div style=\"color:#000;\">${_model.textFieldSNTextController.text}</div>       </div>     </div>     <!-- Extra Info -->     <div style=\"margin-bottom:10px;\">       <div style=\"font-weight:bold; color:#555;\">Submitted At:</div>       <div style=\"color:#000;\">${getCurrentTimestamp.toString()}</div>     </div>     <div style=\"margin-bottom:15px;\">       <div style=\"font-weight:bold; color:#555;\">User Email (if available):</div>       <div style=\"color:#000;\">${currentUserEmail != '' ? currentUserEmail : 'Anonymous User'}</div>     </div>     <!-- Footer -->     <div style=\"margin-top:25px; font-size:12px; color:#888; text-align:center;\">       This message was generated automatically by DIY AC Repair system.     </div>   </div> </body> </html>',
                                      clearUnsetFields: false,
                                      create: true,
                                    ),
                                  ),
                                  mailRecordReference);
                              await Future.wait([
                                Future(() async {
                                  safeSetState(() {
                                    _model.textFieldMakeTextController?.clear();
                                    _model.textFieldModelTextController
                                        ?.clear();
                                    _model.textFieldSNTextController?.clear();
                                  });
                                }),
                                Future(() async {
                                  await showDialog(
                                    context: context,
                                    builder: (dialogContext) {
                                      return Dialog(
                                        elevation: 0,
                                        insetPadding: EdgeInsets.zero,
                                        backgroundColor: Colors.transparent,
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0)
                                                .resolve(
                                                    Directionality.of(context)),
                                        child: SuccessDialogWidget(),
                                      );
                                    },
                                  );
                                }),
                              ]);
                              if (Navigator.of(context).canPop()) {
                                context.pop();
                              }
                              context.pushNamed(BDiagnosisWidget.routeName);

                              safeSetState(() {});
                            },
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                AutoSizeText(
                                  'SEND DTAILS',
                                  style: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
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
                                    color:
                                        FlutterFlowTheme.of(context).secondary,
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
                        ),
                      ),
                      onEnter: ((event) async {
                        safeSetState(() => _model.mouseRegionHovered3 = true);
                        // Start Arrow Animation
                        if (animationsMap['iconOnActionTriggerAnimation'] !=
                            null) {
                          await animationsMap['iconOnActionTriggerAnimation']!
                              .controller
                            ..reset()
                            ..repeat(reverse: true);
                        }
                      }),
                      onExit: ((event) async {
                        safeSetState(() => _model.mouseRegionHovered3 = false);
                        // Reset Arrow Animation
                        if (animationsMap['iconOnActionTriggerAnimation'] !=
                            null) {
                          animationsMap['iconOnActionTriggerAnimation']!
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
    );
  }
}
