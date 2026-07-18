import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/schema/structs/index.dart';
import '/d_select_product_repair/mobile/components/filter_item/filter_item_widget.dart';
import '/d_select_product_repair/mobile/components/product_card2/product_card2_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'serlect_product_mobile_model.dart';
export 'serlect_product_mobile_model.dart';

class SerlectProductMobileWidget extends StatefulWidget {
  const SerlectProductMobileWidget({
    super.key,
    this.selectedPartPram,
  });

  final Parts? selectedPartPram;

  @override
  State<SerlectProductMobileWidget> createState() =>
      _SerlectProductMobileWidgetState();
}

class _SerlectProductMobileWidgetState
    extends State<SerlectProductMobileWidget> {
  late SerlectProductMobileModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SerlectProductMobileModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await Future.delayed(
        Duration(
          milliseconds: 30,
        ),
      );
      _model.selectedPartCS = widget.selectedPartPram;
      safeSetState(() {});
      if (_model.selectedPartCS == Parts.MOTOR) {
        _model.motorItemsOnPageMob = await actions.filterMotorItems(
          FFAppState().userAC.acModel,
          null,
          null,
          null,
          null,
        );
        _model.selectedPartCS = Parts.MOTOR;
        _model.partsList = _model.motorItemsOnPageMob!
            .sortedList(keyOf: (e) => e.title, desc: false)
            .toList()
            .cast<PartCardDTOStruct>();
        safeSetState(() {});
      } else if (_model.selectedPartCS == Parts.CONTACTOR) {
        _model.contItemsOnPageMob = await actions.filterContactorItems(
          FFAppState().userAC.acModel,
          null,
          null,
          null,
          null,
        );
        _model.selectedPartCS = Parts.CONTACTOR;
        _model.partsList = _model.contItemsOnPageMob!
            .sortedList(keyOf: (e) => e.title, desc: false)
            .toList()
            .cast<PartCardDTOStruct>();
        safeSetState(() {});
      } else if (_model.selectedPartCS == Parts.CAPACITOR) {
        _model.capacItemsOnPageMob = await actions.filterCapacitorItems(
          FFAppState().userAC.acModel,
          null,
          null,
          null,
          null,
          null,
        );
        _model.selectedPartCS = Parts.CAPACITOR;
        _model.partsList = _model.capacItemsOnPageMob!
            .sortedList(keyOf: (e) => e.title, desc: false)
            .toList()
            .cast<PartCardDTOStruct>();
        safeSetState(() {});
      }
    });

    _model.textFieldVoltTextController ??= TextEditingController(text: '230');
    _model.textFieldVoltFocusNode ??= FocusNode();

    _model.textFieldRvoltTextController ??= TextEditingController(text: '230');
    _model.textFieldRvoltFocusNode ??= FocusNode();

    _model.textFieldCapVoltTextController ??=
        TextEditingController(text: '230');
    _model.textFieldCapVoltFocusNode ??= FocusNode();

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

    return SingleChildScrollView(
      primary: false,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(12.0, 18.0, 0.0, 0.0),
            child: RichText(
              textScaler: MediaQuery.of(context).textScaler,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'SELECT ',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).bodyMediumFamily,
                          color: FlutterFlowTheme.of(context).primaryText,
                          fontSize: 32.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w900,
                          lineHeight: 1.4,
                          useGoogleFonts:
                              !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                        ),
                  ),
                  TextSpan(
                    text: valueOrDefault<String>(
                      widget.selectedPartPram?.name,
                      'MOTOR',
                    ),
                    style: TextStyle(),
                  )
                ],
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                      color: FlutterFlowTheme.of(context).primaryText,
                      fontSize: 32.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w900,
                      lineHeight: 1.4,
                      useGoogleFonts:
                          !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                    ),
              ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional(-1.0, 0.0),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
              child: Text(
                'Choose the specific motor that fits your AC unit model. All parts are certified for DIY installation.',
                style: FlutterFlowTheme.of(context).bodyLarge.override(
                      fontFamily: FlutterFlowTheme.of(context).bodyLargeFamily,
                      color: FlutterFlowTheme.of(context).secondaryText,
                      fontSize: 16.0,
                      letterSpacing: 0.0,
                      lineHeight: 1.6,
                      useGoogleFonts:
                          !FlutterFlowTheme.of(context).bodyLargeIsCustom,
                    ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
            child: Container(
              decoration: BoxDecoration(),
              child: Divider(
                height: 16.0,
                thickness: 1.0,
                color: FlutterFlowTheme.of(context).onSurface,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(12.0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      if (_model.selectedPartCS != Parts.MOTOR) {
                        _model.motorItemsOnCallbackMob =
                            await actions.filterMotorItems(
                          FFAppState().userAC.acModel,
                          null,
                          null,
                          null,
                          null,
                        );
                        _model.selectedPartCS = Parts.MOTOR;
                        _model.partsList = _model.motorItemsOnCallbackMob!
                            .sortedList(keyOf: (e) => e.title, desc: false)
                            .toList()
                            .cast<PartCardDTOStruct>();
                        safeSetState(() {});
                        safeSetState(() {
                          _model.dropDownHpValueController?.reset();
                          _model.dropDownHpValue = null;
                          _model.dropDownRpmValueController?.reset();
                          _model.dropDownRpmValue = null;
                          _model.dropDownRotationValueController?.reset();
                          _model.dropDownRotationValue = null;
                          _model.dropDownAmpValueController?.reset();
                          _model.dropDownAmpValue = null;
                          _model.dropDownCvoltValueController?.reset();
                          _model.dropDownCvoltValue = null;
                          _model.dropDownNopValueController?.reset();
                          _model.dropDownNopValue = null;
                          _model.dropDownMFD1ValueController?.reset();
                          _model.dropDownMFD1Value = null;
                          _model.dropDownMFD2ValueController?.reset();
                          _model.dropDownMFD2Value = null;
                          _model.dropDownTypeValueController?.reset();
                          _model.dropDownTypeValue = null;
                          _model.dropDownShapeValueController?.reset();
                          _model.dropDownShapeValue = null;
                        });
                      }

                      safeSetState(() {});
                    },
                    child: wrapWithModel(
                      model: _model.filterItemModel1,
                      updateCallback: () => safeSetState(() {}),
                      child: FilterItemWidget(
                        icon: null,
                        label: 'Motor',
                        bg: FlutterFlowTheme.of(context).primaryText,
                        radius: 0.0,
                        active: _model.selectedPartCS == Parts.MOTOR,
                      ),
                    ),
                  ),
                ),
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    if (_model.selectedPartCS != Parts.CAPACITOR) {
                      _model.capacItemsOnCallbackMob =
                          await actions.filterCapacitorItems(
                        FFAppState().userAC.acModel,
                        null,
                        null,
                        null,
                        null,
                        null,
                      );
                      _model.selectedPartCS = Parts.CAPACITOR;
                      _model.partsList = _model.capacItemsOnCallbackMob!
                          .sortedList(keyOf: (e) => e.title, desc: false)
                          .toList()
                          .cast<PartCardDTOStruct>();
                      safeSetState(() {});
                      safeSetState(() {
                        _model.dropDownHpValueController?.reset();
                        _model.dropDownHpValue = null;
                        _model.dropDownRotationValueController?.reset();
                        _model.dropDownRotationValue = null;
                        _model.dropDownCvoltValueController?.reset();
                        _model.dropDownCvoltValue = null;
                        _model.dropDownAmpValueController?.reset();
                        _model.dropDownAmpValue = null;
                        _model.dropDownRpmValueController?.reset();
                        _model.dropDownRpmValue = null;
                        _model.dropDownMFD1ValueController?.reset();
                        _model.dropDownMFD1Value = null;
                        _model.dropDownNopValueController?.reset();
                        _model.dropDownNopValue = null;
                        _model.dropDownShapeValueController?.reset();
                        _model.dropDownShapeValue = null;
                        _model.dropDownTypeValueController?.reset();
                        _model.dropDownTypeValue = null;
                        _model.dropDownMFD2ValueController?.reset();
                        _model.dropDownMFD2Value = null;
                      });
                    }

                    safeSetState(() {});
                  },
                  child: wrapWithModel(
                    model: _model.filterItemModel2,
                    updateCallback: () => safeSetState(() {}),
                    child: FilterItemWidget(
                      icon: null,
                      label: 'Capacitor',
                      bg: FlutterFlowTheme.of(context).primaryText,
                      radius: 0.0,
                      active: _model.selectedPartCS == Parts.CAPACITOR,
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      if (_model.selectedPartCS != Parts.CONTACTOR) {
                        _model.contItemsOnCallbackMob =
                            await actions.filterContactorItems(
                          FFAppState().userAC.acModel,
                          null,
                          null,
                          null,
                          null,
                        );
                        _model.selectedPartCS = Parts.CONTACTOR;
                        _model.partsList = _model.contItemsOnCallbackMob!
                            .sortedList(keyOf: (e) => e.title, desc: false)
                            .toList()
                            .cast<PartCardDTOStruct>();
                        safeSetState(() {});
                        safeSetState(() {
                          _model.dropDownHpValueController?.reset();
                          _model.dropDownHpValue = null;
                          _model.dropDownRpmValueController?.reset();
                          _model.dropDownRpmValue = null;
                          _model.dropDownRotationValueController?.reset();
                          _model.dropDownRotationValue = null;
                          _model.dropDownAmpValueController?.reset();
                          _model.dropDownAmpValue = null;
                          _model.dropDownCvoltValueController?.reset();
                          _model.dropDownCvoltValue = null;
                          _model.dropDownMFD1ValueController?.reset();
                          _model.dropDownMFD1Value = null;
                          _model.dropDownMFD2ValueController?.reset();
                          _model.dropDownMFD2Value = null;
                          _model.dropDownTypeValueController?.reset();
                          _model.dropDownTypeValue = null;
                          _model.dropDownShapeValueController?.reset();
                          _model.dropDownShapeValue = null;
                          _model.dropDownNopValueController?.reset();
                          _model.dropDownNopValue = null;
                        });
                      }

                      safeSetState(() {});
                    },
                    child: wrapWithModel(
                      model: _model.filterItemModel3,
                      updateCallback: () => safeSetState(() {}),
                      child: FilterItemWidget(
                        icon: null,
                        label: 'Contactor',
                        bg: FlutterFlowTheme.of(context).primaryText,
                        radius: 0.0,
                        active: _model.selectedPartCS == Parts.CONTACTOR,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            primary: false,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                if (_model.selectedPartCS == Parts.MOTOR)
                  Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Padding(
                      padding: EdgeInsets.all(18.0),
                      child: ClipRRect(
                        child: Container(
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).lightGrey,
                            border: Border.all(
                              color: FlutterFlowTheme.of(context).primary,
                              width: 2.0,
                            ),
                          ),
                          child: Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        24.0, 12.0, 0.0, 12.0),
                                    child: Text(
                                      'MOTOR SPECS',
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily,
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            fontSize: 24.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w900,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .bodyMediumIsCustom,
                                          ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      8.0, 0.0, 0.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Flexible(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 20.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    -1.0, 0.0),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 8.0),
                                                  child: Text(
                                                    'Rated Volt:',
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
                                                              .primary,
                                                          fontSize: 16.0,
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
                                              Expanded(
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, -1.0),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                20.0, 0.0),
                                                    child: Container(
                                                      width: double.infinity,
                                                      height: 50.0,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondary,
                                                        border: Border.all(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          width: 1.0,
                                                        ),
                                                      ),
                                                      child: Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                0.0, 0.0),
                                                        child: Padding(
                                                          padding: EdgeInsetsDirectional
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
                                                                .textFieldVoltTextController,
                                                            focusNode: _model
                                                                .textFieldVoltFocusNode,
                                                            autofocus: false,
                                                            enabled: true,
                                                            textInputAction:
                                                                TextInputAction
                                                                    .next,
                                                            readOnly: true,
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
                                                                            FlutterFlowTheme.of(context).labelSmallFamily,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primary,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        useGoogleFonts:
                                                                            !FlutterFlowTheme.of(context).labelSmallIsCustom,
                                                                      ),
                                                              hintText:
                                                                  'e.g. 230',
                                                              hintStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelSmall
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).labelSmallFamily,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .tertiary,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        useGoogleFonts:
                                                                            !FlutterFlowTheme.of(context).labelSmallIsCustom,
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
                                                                  fontSize:
                                                                      16.0,
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
                                                                .textFieldVoltTextControllerValidator
                                                                .asValidator(
                                                                    context),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Flexible(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 20.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    -1.0, 0.0),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 8.0),
                                                  child: Text(
                                                    'HP:',
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
                                                              .primary,
                                                          fontSize: 16.0,
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
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    0.0, -1.0),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 20.0, 0.0),
                                                  child: Container(
                                                    width: double.infinity,
                                                    height: 50.0,
                                                    decoration: BoxDecoration(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondary,
                                                      border: Border.all(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        width: 1.0,
                                                      ),
                                                    ),
                                                    child: FlutterFlowDropDown<
                                                        double>(
                                                      controller: _model
                                                              .dropDownHpValueController ??=
                                                          FormFieldController<
                                                              double>(
                                                        _model.dropDownHpValue ??=
                                                            null,
                                                      ),
                                                      options:
                                                          List<double>.from([
                                                        0.25,
                                                        0.5,
                                                        0.75
                                                      ]),
                                                      optionLabels: [
                                                        '1/4',
                                                        '1/2',
                                                        '3/4'
                                                      ],
                                                      onChanged: (val) =>
                                                          safeSetState(() =>
                                                              _model.dropDownHpValue =
                                                                  val),
                                                      width: 200.0,
                                                      height: 40.0,
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts:
                                                                    !FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMediumIsCustom,
                                                              ),
                                                      hintText: 'Select...',
                                                      icon: Icon(
                                                        Icons
                                                            .keyboard_arrow_down_rounded,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
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
                                                      isSearchable: false,
                                                      isMultiSelect: false,
                                                    ),
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
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      8.0, 0.0, 0.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Flexible(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 20.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    -1.0, 0.0),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 8.0),
                                                  child: Text(
                                                    'RPM;',
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
                                                              .primary,
                                                          fontSize: 16.0,
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
                                              Expanded(
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, -1.0),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                20.0, 0.0),
                                                    child: Container(
                                                      width: double.infinity,
                                                      height: 50.0,
                                                      constraints:
                                                          BoxConstraints(
                                                        minHeight: 50.0,
                                                        maxHeight: 100.0,
                                                      ),
                                                      decoration: BoxDecoration(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondary,
                                                        border: Border.all(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          width: 1.0,
                                                        ),
                                                      ),
                                                      child:
                                                          FlutterFlowDropDown<
                                                              int>(
                                                        controller: _model
                                                                .dropDownRpmValueController ??=
                                                            FormFieldController<
                                                                int>(
                                                          _model.dropDownRpmValue ??=
                                                              null,
                                                        ),
                                                        options: List<int>.from(
                                                            [825, 1075]),
                                                        optionLabels: [
                                                          '825',
                                                          '1075'
                                                        ],
                                                        onChanged: (val) =>
                                                            safeSetState(() =>
                                                                _model.dropDownRpmValue =
                                                                    val),
                                                        width: 200.0,
                                                        height: 40.0,
                                                        textStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts:
                                                                      !FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMediumIsCustom,
                                                                ),
                                                        hintText: 'Select...',
                                                        icon: Icon(
                                                          Icons
                                                              .keyboard_arrow_down_rounded,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
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
                                                        isSearchable: false,
                                                        isMultiSelect: false,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Flexible(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 20.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    -1.0, 0.0),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 8.0),
                                                  child: Text(
                                                    'Rotational Direction:',
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
                                                              .primary,
                                                          fontSize: 14.0,
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
                                              Expanded(
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, -1.0),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                20.0, 0.0),
                                                    child: Container(
                                                      width: double.infinity,
                                                      height: 50.0,
                                                      constraints:
                                                          BoxConstraints(
                                                        minHeight: 50.0,
                                                        maxHeight: 100.0,
                                                      ),
                                                      decoration: BoxDecoration(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondary,
                                                        border: Border.all(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          width: 1.0,
                                                        ),
                                                      ),
                                                      child:
                                                          FlutterFlowDropDown<
                                                              String>(
                                                        controller: _model
                                                                .dropDownRotationValueController ??=
                                                            FormFieldController<
                                                                String>(null),
                                                        options: ['Reversible'],
                                                        onChanged: (val) =>
                                                            safeSetState(() =>
                                                                _model.dropDownRotationValue =
                                                                    val),
                                                        width: 200.0,
                                                        height: 40.0,
                                                        textStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts:
                                                                      !FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMediumIsCustom,
                                                                ),
                                                        hintText: 'Select...',
                                                        icon: Icon(
                                                          Icons
                                                              .keyboard_arrow_down_rounded,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
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
                                                        isSearchable: false,
                                                        isMultiSelect: false,
                                                      ),
                                                    ),
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
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 12.0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      _model.motorItemsFilterMob =
                                          await actions.filterMotorItems(
                                        FFAppState().userAC.acModel,
                                        _model.textFieldVoltTextController
                                                        .text !=
                                                    ''
                                            ? int.tryParse(_model
                                                .textFieldVoltTextController
                                                .text)
                                            : null,
                                        _model.dropDownHpValue != null
                                            ? _model.dropDownHpValue
                                            : null,
                                        _model.dropDownRpmValue != null
                                            ? _model.dropDownRpmValue
                                            : null,
                                        _model.dropDownRotationValue != null &&
                                                _model.dropDownRotationValue !=
                                                    ''
                                            ? _model.dropDownRotationValue
                                            : null,
                                      );
                                      _model.partsList = _model
                                          .motorItemsFilterMob!
                                          .sortedList(
                                              keyOf: (e) => e.title,
                                              desc: false)
                                          .toList()
                                          .cast<PartCardDTOStruct>();
                                      safeSetState(() {});

                                      safeSetState(() {});
                                    },
                                    text: 'FILTER',
                                    options: FFButtonOptions(
                                      width: 200.0,
                                      height: 45.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          16.0, 0.0, 16.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .labelMediumFamily,
                                            color: FlutterFlowTheme.of(context)
                                                .secondary,
                                            fontSize: 18.0,
                                            letterSpacing: 0.0,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .labelMediumIsCustom,
                                          ),
                                      elevation: 0.0,
                                      borderRadius: BorderRadius.circular(0.0),
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
                if (_model.selectedPartCS == Parts.CONTACTOR)
                  Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Padding(
                      padding: EdgeInsets.all(18.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).lightGrey,
                          border: Border.all(
                            color: FlutterFlowTheme.of(context).primary,
                            width: 2.0,
                          ),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    24.0, 12.0, 0.0, 12.0),
                                child: Text(
                                  'CONTACTOR SPECS',
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyMediumFamily,
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        fontSize: 24.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w900,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .bodyMediumIsCustom,
                                      ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  8.0, 0.0, 0.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Flexible(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 20.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Align(
                                            alignment:
                                                AlignmentDirectional(-1.0, 0.0),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 8.0),
                                              child: Text(
                                                'Rated Volt:',
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
                                                      fontSize: 16.0,
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
                                          Expanded(
                                            child: Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, -1.0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 20.0, 0.0),
                                                child: Container(
                                                  width: double.infinity,
                                                  height: 50.0,
                                                  constraints: BoxConstraints(
                                                    minHeight: 50.0,
                                                    maxHeight: 100.0,
                                                  ),
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondary,
                                                    border: Border.all(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      width: 1.0,
                                                    ),
                                                  ),
                                                  child: Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.0, 0.0),
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
                                                            .textFieldRvoltTextController,
                                                        focusNode: _model
                                                            .textFieldRvoltFocusNode,
                                                        autofocus: false,
                                                        enabled: true,
                                                        textInputAction:
                                                            TextInputAction
                                                                .next,
                                                        readOnly: true,
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
                                                          hintText: 'e.g. 230',
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
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .labelSmall
                                                            .override(
                                                              fontFamily:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelSmallFamily,
                                                              fontSize: 16.0,
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
                                                            .textFieldRvoltTextControllerValidator
                                                            .asValidator(
                                                                context),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 20.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Align(
                                            alignment:
                                                AlignmentDirectional(-1.0, 0.0),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 8.0),
                                              child: Text(
                                                'Rated Amp:',
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
                                                      fontSize: 16.0,
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
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0.0, -1.0),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 20.0, 0.0),
                                              child: Container(
                                                width: double.infinity,
                                                height: 50.0,
                                                constraints: BoxConstraints(
                                                  minHeight: 50.0,
                                                  maxHeight: 100.0,
                                                ),
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondary,
                                                  border: Border.all(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    width: 1.0,
                                                  ),
                                                ),
                                                child: FlutterFlowDropDown<int>(
                                                  controller: _model
                                                          .dropDownAmpValueController ??=
                                                      FormFieldController<int>(
                                                    _model.dropDownAmpValue ??=
                                                        null,
                                                  ),
                                                  options:
                                                      List<int>.from([30, 40]),
                                                  optionLabels: ['30', '40'],
                                                  onChanged: (val) =>
                                                      safeSetState(() => _model
                                                              .dropDownAmpValue =
                                                          val),
                                                  width: 200.0,
                                                  height: 40.0,
                                                  textStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                            letterSpacing: 0.0,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumIsCustom,
                                                          ),
                                                  hintText: 'Select...',
                                                  icon: Icon(
                                                    Icons
                                                        .keyboard_arrow_down_rounded,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    size: 24.0,
                                                  ),
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground,
                                                  elevation: 2.0,
                                                  borderColor:
                                                      Colors.transparent,
                                                  borderWidth: 0.0,
                                                  borderRadius: 8.0,
                                                  margin: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          12.0, 0.0, 12.0, 0.0),
                                                  hidesUnderline: true,
                                                  isOverButton: false,
                                                  isSearchable: false,
                                                  isMultiSelect: false,
                                                ),
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
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  8.0, 0.0, 0.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Flexible(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 20.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Align(
                                            alignment:
                                                AlignmentDirectional(-1.0, 0.0),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      24.0, 0.0, 0.0, 8.0),
                                              child: Text(
                                                'Coil Voltage:',
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
                                                      fontSize: 16.0,
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
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0.0, -1.0),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 20.0, 0.0),
                                              child: Container(
                                                width: double.infinity,
                                                height: 50.0,
                                                constraints: BoxConstraints(
                                                  minHeight: 50.0,
                                                  maxHeight: 100.0,
                                                ),
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondary,
                                                  border: Border.all(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    width: 1.0,
                                                  ),
                                                ),
                                                child: FlutterFlowDropDown<int>(
                                                  controller: _model
                                                          .dropDownCvoltValueController ??=
                                                      FormFieldController<int>(
                                                    _model.dropDownCvoltValue ??=
                                                        null,
                                                  ),
                                                  options: List<int>.from([40]),
                                                  optionLabels: ['40'],
                                                  onChanged: (val) =>
                                                      safeSetState(() => _model
                                                              .dropDownCvoltValue =
                                                          val),
                                                  width: 200.0,
                                                  height: 40.0,
                                                  textStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                            letterSpacing: 0.0,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumIsCustom,
                                                          ),
                                                  hintText: 'Select...',
                                                  icon: Icon(
                                                    Icons
                                                        .keyboard_arrow_down_rounded,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    size: 24.0,
                                                  ),
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground,
                                                  elevation: 2.0,
                                                  borderColor:
                                                      Colors.transparent,
                                                  borderWidth: 0.0,
                                                  borderRadius: 8.0,
                                                  margin: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          12.0, 0.0, 12.0, 0.0),
                                                  hidesUnderline: true,
                                                  isOverButton: false,
                                                  isSearchable: false,
                                                  isMultiSelect: false,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 20.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Align(
                                            alignment:
                                                AlignmentDirectional(-1.0, 0.0),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 8.0),
                                              child: Text(
                                                'Number of Poles:',
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
                                                      fontSize: 16.0,
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
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0.0, -1.0),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 20.0, 0.0),
                                              child: Container(
                                                width: double.infinity,
                                                height: 50.0,
                                                constraints: BoxConstraints(
                                                  minHeight: 50.0,
                                                  maxHeight: 100.0,
                                                ),
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondary,
                                                  border: Border.all(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    width: 1.0,
                                                  ),
                                                ),
                                                child: FlutterFlowDropDown<int>(
                                                  controller: _model
                                                          .dropDownNopValueController ??=
                                                      FormFieldController<int>(
                                                    _model.dropDownNopValue ??=
                                                        null,
                                                  ),
                                                  options:
                                                      List<int>.from([1, 2]),
                                                  optionLabels: ['1', '2'],
                                                  onChanged: (val) =>
                                                      safeSetState(() => _model
                                                              .dropDownNopValue =
                                                          val),
                                                  width: 200.0,
                                                  height: 40.0,
                                                  textStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                            letterSpacing: 0.0,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumIsCustom,
                                                          ),
                                                  hintText: 'Select...',
                                                  icon: Icon(
                                                    Icons
                                                        .keyboard_arrow_down_rounded,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    size: 24.0,
                                                  ),
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground,
                                                  elevation: 2.0,
                                                  borderColor:
                                                      Colors.transparent,
                                                  borderWidth: 0.0,
                                                  borderRadius: 8.0,
                                                  margin: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          12.0, 0.0, 12.0, 0.0),
                                                  hidesUnderline: true,
                                                  isOverButton: false,
                                                  isSearchable: false,
                                                  isMultiSelect: false,
                                                ),
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
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 12.0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  _model.contItemsOnFilterMob =
                                      await actions.filterContactorItems(
                                    FFAppState().userAC.acModel,
                                    (_model.textFieldRvoltTextController
                                                        .text !=
                                                    ''
                                            ? int.tryParse(_model
                                                .textFieldRvoltTextController
                                                .text)
                                            : null)
                                        ?.toDouble(),
                                    (_model.dropDownAmpValue != null
                                            ? _model.dropDownAmpValue
                                            : null)
                                        ?.toDouble(),
                                    (_model.dropDownCvoltValue != null
                                            ? _model.dropDownCvoltValue
                                            : null)
                                        ?.toDouble(),
                                    _model.dropDownNopValue != null
                                        ? _model.dropDownNopValue
                                        : null,
                                  );
                                  _model.partsList = _model
                                      .contItemsOnFilterMob!
                                      .sortedList(
                                          keyOf: (e) => e.title, desc: false)
                                      .toList()
                                      .cast<PartCardDTOStruct>();
                                  safeSetState(() {});

                                  safeSetState(() {});
                                },
                                text: 'FILTER',
                                options: FFButtonOptions(
                                  width: 200.0,
                                  height: 45.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 0.0, 16.0, 0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: FlutterFlowTheme.of(context).primary,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .labelMediumFamily,
                                        color: FlutterFlowTheme.of(context)
                                            .secondary,
                                        letterSpacing: 0.0,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .labelMediumIsCustom,
                                      ),
                                  elevation: 0.0,
                                  borderRadius: BorderRadius.circular(0.0),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                if (_model.selectedPartCS == Parts.CAPACITOR)
                  Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Padding(
                      padding: EdgeInsets.all(18.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).lightGrey,
                          border: Border.all(
                            color: FlutterFlowTheme.of(context).primary,
                            width: 2.0,
                          ),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    24.0, 12.0, 0.0, 12.0),
                                child: Text(
                                  'CAPACITOR SPECS',
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyMediumFamily,
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        fontSize: 24.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w900,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .bodyMediumIsCustom,
                                      ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  8.0, 0.0, 0.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Flexible(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 20.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Align(
                                            alignment:
                                                AlignmentDirectional(-1.0, 0.0),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      24.0, 0.0, 0.0, 8.0),
                                              child: Text(
                                                'MFD :',
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
                                                      fontSize: 16.0,
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
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0.0, -1.0),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 20.0, 14.0),
                                              child: Container(
                                                width: double.infinity,
                                                height: 50.0,
                                                constraints: BoxConstraints(
                                                  minHeight: 50.0,
                                                  maxHeight: 100.0,
                                                ),
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondary,
                                                  border: Border.all(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    width: 1.0,
                                                  ),
                                                ),
                                                child:
                                                    FlutterFlowDropDown<double>(
                                                  controller: _model
                                                          .dropDownMFD1ValueController ??=
                                                      FormFieldController<
                                                          double>(
                                                    _model.dropDownMFD1Value ??=
                                                        null,
                                                  ),
                                                  options: List<double>.from([
                                                    5.0,
                                                    7.5,
                                                    10.0,
                                                    12.5,
                                                    15.0,
                                                    30.0,
                                                    35.0,
                                                    40.0,
                                                    45.0,
                                                    50.0,
                                                    55.0,
                                                    70.0,
                                                    80.0
                                                  ]),
                                                  optionLabels: [
                                                    '5',
                                                    '7.5',
                                                    '10',
                                                    '12.5',
                                                    '15',
                                                    '30',
                                                    '35',
                                                    '40',
                                                    '45',
                                                    '50',
                                                    '55',
                                                    '70',
                                                    '80'
                                                  ],
                                                  onChanged: (val) =>
                                                      safeSetState(() => _model
                                                              .dropDownMFD1Value =
                                                          val),
                                                  width: 200.0,
                                                  height: 40.0,
                                                  textStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                            letterSpacing: 0.0,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumIsCustom,
                                                          ),
                                                  hintText: 'Select...',
                                                  icon: Icon(
                                                    Icons
                                                        .keyboard_arrow_down_rounded,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    size: 24.0,
                                                  ),
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground,
                                                  elevation: 2.0,
                                                  borderColor:
                                                      Colors.transparent,
                                                  borderWidth: 0.0,
                                                  borderRadius: 8.0,
                                                  margin: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          12.0, 0.0, 12.0, 0.0),
                                                  hidesUnderline: true,
                                                  isOverButton: false,
                                                  isSearchable: false,
                                                  isMultiSelect: false,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 20.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Align(
                                            alignment:
                                                AlignmentDirectional(-1.0, 0.0),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 8.0),
                                              child: Text(
                                                'MFD 2:',
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
                                                      fontSize: 16.0,
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
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0.0, -1.0),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 20.0, 0.0),
                                              child: Container(
                                                width: double.infinity,
                                                height: 50.0,
                                                constraints: BoxConstraints(
                                                  minHeight: 50.0,
                                                  maxHeight: 100.0,
                                                ),
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondary,
                                                  border: Border.all(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    width: 1.0,
                                                  ),
                                                ),
                                                child:
                                                    FlutterFlowDropDown<double>(
                                                  controller: _model
                                                          .dropDownMFD2ValueController ??=
                                                      FormFieldController<
                                                          double>(
                                                    _model.dropDownMFD2Value ??=
                                                        null,
                                                  ),
                                                  options: List<double>.from([
                                                    25.0,
                                                    30.0,
                                                    35.0,
                                                    40.0,
                                                    45.0,
                                                    50.0,
                                                    55.0,
                                                    60.0,
                                                    70.0,
                                                    80.0
                                                  ]),
                                                  optionLabels: [
                                                    '25',
                                                    '30',
                                                    '35',
                                                    '40',
                                                    '45',
                                                    '50',
                                                    '55',
                                                    '60',
                                                    '70',
                                                    '80'
                                                  ],
                                                  onChanged: (val) =>
                                                      safeSetState(() => _model
                                                              .dropDownMFD2Value =
                                                          val),
                                                  width: 200.0,
                                                  height: 40.0,
                                                  textStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                            letterSpacing: 0.0,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumIsCustom,
                                                          ),
                                                  hintText: 'Select...',
                                                  icon: Icon(
                                                    Icons
                                                        .keyboard_arrow_down_rounded,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    size: 24.0,
                                                  ),
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground,
                                                  elevation: 2.0,
                                                  borderColor:
                                                      Colors.transparent,
                                                  borderWidth: 0.0,
                                                  borderRadius: 8.0,
                                                  margin: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          12.0, 0.0, 12.0, 0.0),
                                                  hidesUnderline: true,
                                                  isOverButton: false,
                                                  isSearchable: false,
                                                  isMultiSelect: false,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional(-1.0, 0.0),
                                            child: Text(
                                              'for dual capacitors only',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMediumFamily,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    fontSize: 14.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w500,
                                                    useGoogleFonts:
                                                        !FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMediumIsCustom,
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
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  8.0, 0.0, 0.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Flexible(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 20.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Align(
                                            alignment:
                                                AlignmentDirectional(-1.0, 0.0),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      24.0, 0.0, 0.0, 8.0),
                                              child: Text(
                                                'Volt:',
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
                                                      fontSize: 16.0,
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
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0.0, -1.0),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 20.0, 0.0),
                                              child: Container(
                                                width: double.infinity,
                                                height: 50.0,
                                                constraints: BoxConstraints(
                                                  minHeight: 50.0,
                                                  maxHeight: 100.0,
                                                ),
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondary,
                                                  border: Border.all(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    width: 1.0,
                                                  ),
                                                ),
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 0.0),
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
                                                          .textFieldCapVoltTextController,
                                                      focusNode: _model
                                                          .textFieldCapVoltFocusNode,
                                                      autofocus: false,
                                                      enabled: true,
                                                      textInputAction:
                                                          TextInputAction.next,
                                                      readOnly: true,
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
                                                        hintText: 'e.g 230',
                                                        hintStyle:
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
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .labelSmall
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelSmallFamily,
                                                            fontSize: 16.0,
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
                                                          .textFieldCapVoltTextControllerValidator
                                                          .asValidator(context),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 20.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Align(
                                            alignment:
                                                AlignmentDirectional(-1.0, 0.0),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 8.0),
                                              child: Text(
                                                'Single Vs Dual:',
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
                                                      fontSize: 16.0,
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
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0.0, -1.0),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 20.0, 0.0),
                                              child: Container(
                                                width: double.infinity,
                                                height: 50.0,
                                                constraints: BoxConstraints(
                                                  minHeight: 50.0,
                                                  maxHeight: 100.0,
                                                ),
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondary,
                                                  border: Border.all(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    width: 1.0,
                                                  ),
                                                ),
                                                child:
                                                    FlutterFlowDropDown<String>(
                                                  controller: _model
                                                          .dropDownTypeValueController ??=
                                                      FormFieldController<
                                                          String>(null),
                                                  options: ['Single', 'Dual'],
                                                  onChanged: (val) =>
                                                      safeSetState(() => _model
                                                              .dropDownTypeValue =
                                                          val),
                                                  width: 200.0,
                                                  height: 40.0,
                                                  textStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                            letterSpacing: 0.0,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumIsCustom,
                                                          ),
                                                  hintText: 'Select...',
                                                  icon: Icon(
                                                    Icons
                                                        .keyboard_arrow_down_rounded,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    size: 24.0,
                                                  ),
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground,
                                                  elevation: 2.0,
                                                  borderColor:
                                                      Colors.transparent,
                                                  borderWidth: 0.0,
                                                  borderRadius: 8.0,
                                                  margin: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          12.0, 0.0, 12.0, 0.0),
                                                  hidesUnderline: true,
                                                  isOverButton: false,
                                                  isSearchable: false,
                                                  isMultiSelect: false,
                                                ),
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
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Flexible(
                                  child: Align(
                                    alignment: AlignmentDirectional(0.0, -1.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8.0, 0.0, 0.0, 20.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Align(
                                            alignment:
                                                AlignmentDirectional(-1.0, 0.0),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      24.0, 0.0, 0.0, 8.0),
                                              child: Text(
                                                'Shape:',
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
                                                      fontSize: 16.0,
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
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0.0, -1.0),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      20.0, 0.0, 20.0, 0.0),
                                              child: Container(
                                                width: double.infinity,
                                                height: 50.0,
                                                constraints: BoxConstraints(
                                                  minHeight: 50.0,
                                                  maxHeight: 100.0,
                                                ),
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondary,
                                                  border: Border.all(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    width: 1.0,
                                                  ),
                                                ),
                                                child:
                                                    FlutterFlowDropDown<String>(
                                                  controller: _model
                                                          .dropDownShapeValueController ??=
                                                      FormFieldController<
                                                          String>(null),
                                                  options: ['Round', 'Oval'],
                                                  onChanged: (val) =>
                                                      safeSetState(() => _model
                                                              .dropDownShapeValue =
                                                          val),
                                                  width: 200.0,
                                                  height: 40.0,
                                                  textStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                            letterSpacing: 0.0,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumIsCustom,
                                                          ),
                                                  hintText: 'Select...',
                                                  icon: Icon(
                                                    Icons
                                                        .keyboard_arrow_down_rounded,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    size: 24.0,
                                                  ),
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground,
                                                  elevation: 2.0,
                                                  borderColor:
                                                      Colors.transparent,
                                                  borderWidth: 0.0,
                                                  borderRadius: 8.0,
                                                  margin: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          12.0, 0.0, 12.0, 0.0),
                                                  hidesUnderline: true,
                                                  isOverButton: false,
                                                  isSearchable: false,
                                                  isMultiSelect: false,
                                                ),
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
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 12.0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  _model.capacItemsOnFilterMob =
                                      await actions.filterCapacitorItems(
                                    FFAppState().userAC.acModel,
                                    _model.dropDownMFD1Value != null
                                        ? _model.dropDownMFD1Value
                                        : null,
                                    _model.dropDownMFD2Value != null
                                        ? _model.dropDownMFD2Value
                                        : null,
                                    _model.textFieldCapVoltTextController
                                                    .text !=
                                                ''
                                        ? int.tryParse(_model
                                            .textFieldCapVoltTextController
                                            .text)
                                        : null,
                                    _model.dropDownTypeValue != null &&
                                            _model.dropDownTypeValue != ''
                                        ? _model.dropDownTypeValue
                                        : null,
                                    _model.dropDownShapeValue != null &&
                                            _model.dropDownShapeValue != ''
                                        ? _model.dropDownShapeValue
                                        : null,
                                  );
                                  _model.selectedPartCS = Parts.CAPACITOR;
                                  _model.partsList = _model
                                      .capacItemsOnFilterMob!
                                      .sortedList(
                                          keyOf: (e) => e.title, desc: false)
                                      .toList()
                                      .cast<PartCardDTOStruct>();
                                  safeSetState(() {});

                                  safeSetState(() {});
                                },
                                text: 'FILTER',
                                options: FFButtonOptions(
                                  width: 200.0,
                                  height: 45.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 0.0, 16.0, 0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: FlutterFlowTheme.of(context).primary,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .labelMediumFamily,
                                        color: FlutterFlowTheme.of(context)
                                            .secondary,
                                        letterSpacing: 0.0,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .labelMediumIsCustom,
                                      ),
                                  elevation: 0.0,
                                  borderRadius: BorderRadius.circular(0.0),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      textScaler: MediaQuery.of(context).textScaler,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: !() {
                              if ((_model.selectedPartCS == Parts.MOTOR) &&
                                  (FFAppState().userAC.motorSpecIdRef?.id !=
                                          null &&
                                      FFAppState().userAC.motorSpecIdRef?.id !=
                                          '')) {
                                return true;
                              } else if ((_model.selectedPartCS ==
                                      Parts.CAPACITOR) &&
                                  (FFAppState().userAC.capacitorSpecIdRef?.id !=
                                          null &&
                                      FFAppState()
                                              .userAC
                                              .capacitorSpecIdRef
                                              ?.id !=
                                          '')) {
                                return true;
                              } else if ((_model.selectedPartCS ==
                                      Parts.CONTACTOR) &&
                                  (FFAppState().userAC.contactorSpecIdRef?.id !=
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
                            }()
                                ? 'ALL '
                                : 'RECOMMENDED ',
                            style: FlutterFlowTheme.of(context)
                                .labelLarge
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .labelLargeFamily,
                                  fontSize: 18.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                  lineHeight: 1.0,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .labelLargeIsCustom,
                                ),
                          ),
                          TextSpan(
                            text: ' (',
                            style: TextStyle(),
                          ),
                          TextSpan(
                            text: valueOrDefault<String>(
                              _model.partsList.length.toString(),
                              '0',
                            ),
                            style: TextStyle(),
                          ),
                          TextSpan(
                            text: ')',
                            style: TextStyle(),
                          )
                        ],
                        style: FlutterFlowTheme.of(context).labelLarge.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).labelLargeFamily,
                              fontSize: 18.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.bold,
                              lineHeight: 1.0,
                              useGoogleFonts: !FlutterFlowTheme.of(context)
                                  .labelLargeIsCustom,
                            ),
                      ),
                    ),
                    if (false)
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'SORT:',
                            style: FlutterFlowTheme.of(context)
                                .labelSmall
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .labelSmallFamily,
                                  letterSpacing: 0.0,
                                  lineHeight: 1.0,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .labelSmallIsCustom,
                                ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                8.0, 4.0, 8.0, 4.0),
                            child: Container(
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'MATCH',
                                    style: FlutterFlowTheme.of(context)
                                        .labelSmall
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .labelSmallFamily,
                                          fontSize: 14.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.bold,
                                          lineHeight: 1.0,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .labelSmallIsCustom,
                                        ),
                                  ),
                                  Icon(
                                    Icons.keyboard_arrow_down_rounded,
                                    size: 14.0,
                                  ),
                                ].divide(SizedBox(width: 4.0)),
                              ),
                            ),
                          ),
                        ].divide(SizedBox(width: 4.0)),
                      ),
                  ],
                ),
                Builder(
                  builder: (context) {
                    final list = _model.partsList.toList();

                    return ListView.builder(
                      padding: EdgeInsets.zero,
                      primary: false,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: list.length,
                      itemBuilder: (context, listIndex) {
                        final listItem = list[listIndex];
                        return ProductCard2Widget(
                          key: Key('Keyody_${listIndex}_of_${list.length}'),
                          title: listItem.title,
                          desc: listItem.desc,
                          img: listItem.image.firstOrNull,
                          price: listItem.price,
                          status: 'IN STOCK',
                          topRated: false,
                          type: listItem.type,
                          itemId: listItem.id,
                          motorCard: listItem.motorCard,
                          contactorCard: listItem.contactorCard,
                          capacitorCard: listItem.capacitorCard,
                        );
                      },
                    );
                  },
                ),
              ].divide(SizedBox(height: 16.0)),
            ),
          ),
        ],
      ),
    );
  }
}
