import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_video_player.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'c_video_diagnosis_mobile_model.dart';
export 'c_video_diagnosis_mobile_model.dart';

class CVideoDiagnosisMobileWidget extends StatefulWidget {
  const CVideoDiagnosisMobileWidget({
    super.key,
    this.videoRecord,
  });

  final DiagnosisVideoRecord? videoRecord;

  @override
  State<CVideoDiagnosisMobileWidget> createState() =>
      _CVideoDiagnosisMobileWidgetState();
}

class _CVideoDiagnosisMobileWidgetState
    extends State<CVideoDiagnosisMobileWidget> {
  late CVideoDiagnosisMobileModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CVideoDiagnosisMobileModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.allOptions = await queryDiagnosisVideoOptionRecordOnce(
        queryBuilder: (diagnosisVideoOptionRecord) => diagnosisVideoOptionRecord
            .where(
              'diagnosisVideoRef',
              isEqualTo: widget.videoRecord?.reference,
            )
            .orderBy('displayOrder'),
      );
      _model.currentVideo = widget.videoRecord;
      _model.videoOptions =
          _model.allOptions!.toList().cast<DiagnosisVideoOptionRecord>();
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
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(12.0, 12.0, 0.0, 24.0),
              child: Text(
                valueOrDefault<String>(
                  widget.videoRecord?.title,
                  'DIY WALKTHROUGH ',
                ),
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily:
                          FlutterFlowTheme.of(context).headlineMediumFamily,
                      letterSpacing:
                          MediaQuery.sizeOf(context).width < kBreakpointSmall
                              ? FFAppConstants.LetterSpacingM
                              : FFAppConstants.LetterSpacingTD,
                      lineHeight: 0.9,
                      useGoogleFonts:
                          !FlutterFlowTheme.of(context).headlineMediumIsCustom,
                    ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 12.0),
              child: RichText(
                textScaler: MediaQuery.of(context).textScaler,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: valueOrDefault<String>(
                        widget.videoRecord?.description,
                        'desc',
                      ),
                      style: TextStyle(),
                    )
                  ],
                  style: FlutterFlowTheme.of(context).labelSmall.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).labelSmallFamily,
                        letterSpacing: 0.0,
                        useGoogleFonts:
                            !FlutterFlowTheme.of(context).labelSmallIsCustom,
                      ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
              child: ClipRRect(
                child: Container(
                  width: MediaQuery.sizeOf(context).width * 0.9,
                  height: MediaQuery.sizeOf(context).height * 0.45,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: AspectRatio(
                    aspectRatio: 1.78,
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                      child: FlutterFlowVideoPlayer(
                        path: _model.currentVideo!.videoUrl,
                        videoType: VideoType.network,
                        width: MediaQuery.sizeOf(context).width * 0.8,
                        height: MediaQuery.sizeOf(context).height * 0.35,
                        aspectRatio: 1.78,
                        autoPlay: true,
                        looping: false,
                        showControls: true,
                        allowFullScreen: true,
                        allowPlaybackSpeedMenu: false,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Wrap(
              spacing: 0.0,
              runSpacing: 0.0,
              alignment: WrapAlignment.start,
              crossAxisAlignment: WrapCrossAlignment.start,
              direction: Axis.horizontal,
              runAlignment: WrapAlignment.start,
              verticalDirection: VerticalDirection.down,
              clipBehavior: Clip.none,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    if (false)
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            12.0, 24.0, 12.0, 0.0),
                        child: RichText(
                          textScaler: MediaQuery.of(context).textScaler,
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'Description:',
                                style: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .labelMediumFamily,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                      useGoogleFonts:
                                          !FlutterFlowTheme.of(context)
                                              .labelMediumIsCustom,
                                    ),
                              ),
                              TextSpan(
                                text: '\n',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyMediumFamily,
                                      letterSpacing: 0.0,
                                      decoration: TextDecoration.underline,
                                      useGoogleFonts:
                                          !FlutterFlowTheme.of(context)
                                              .bodyMediumIsCustom,
                                    ),
                              ),
                              TextSpan(
                                text:
                                    'Learn how to locate your AC model and serial number \nquickly. This information helps us recommend the\n correct parts and repair steps for your unit.',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyMediumFamily,
                                      fontSize: 14.0,
                                      letterSpacing: 0.0,
                                      useGoogleFonts:
                                          !FlutterFlowTheme.of(context)
                                              .bodyMediumIsCustom,
                                    ),
                              )
                            ],
                            style: FlutterFlowTheme.of(context)
                                .titleLarge
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .titleLargeFamily,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .titleLargeIsCustom,
                                ),
                          ),
                          textAlign: TextAlign.start,
                        ),
                      ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Container(
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).grey20,
                  border: Border.all(
                    color: FlutterFlowTheme.of(context).primary,
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(24.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 12.0),
                            child: Text(
                              'Questions:',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodyMediumFamily,
                                    fontSize: 18.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w800,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .bodyMediumIsCustom,
                                  ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 12.0),
                            child: Text(
                              valueOrDefault<String>(
                                _model.currentVideo?.videoQuestion,
                                'q.',
                              ),
                              textAlign: TextAlign.start,
                              style: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodyLargeFamily,
                                    fontSize: 18.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .bodyLargeIsCustom,
                                  ),
                            ),
                          ),
                          Expanded(
                            child: FlutterFlowRadioButton(
                              options: _model.videoOptions
                                  .map((e) => valueOrDefault<String>(
                                        e.buttonText,
                                        'option 01',
                                      ))
                                  .toList(),
                              onChanged: (val) async {
                                safeSetState(() {});
                                _model.selectedOption = _model.videoOptions
                                    .where((e) =>
                                        e.buttonText == _model.radioButtonValue)
                                    .toList()
                                    .firstOrNull;
                                safeSetState(() {});
                              },
                              controller: _model.radioButtonValueController ??=
                                  FormFieldController<String>(null),
                              optionHeight: 32.0,
                              textStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .labelMediumFamily,
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .labelMediumIsCustom,
                                  ),
                              buttonPosition: RadioButtonPosition.left,
                              direction: Axis.vertical,
                              radioButtonColor:
                                  FlutterFlowTheme.of(context).primary,
                              inactiveRadioButtonColor:
                                  FlutterFlowTheme.of(context).secondaryText,
                              toggleable: false,
                              horizontalAlignment: WrapAlignment.start,
                              verticalAlignment: WrapCrossAlignment.start,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                2.0, 24.0, 0.0, 24.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                FFButtonWidget(
                                  onPressed: () async {
                                    context.safePop();
                                  },
                                  text: 'Back',
                                  icon: Icon(
                                    Icons.arrow_back_sharp,
                                    size: 15.0,
                                  ),
                                  options: FFButtonOptions(
                                    height: 40.0,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 16.0, 0.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: FlutterFlowTheme.of(context).primary,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .labelMediumFamily,
                                          color: FlutterFlowTheme.of(context)
                                              .secondary,
                                          fontSize: 16.0,
                                          letterSpacing: 0.0,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .labelMediumIsCustom,
                                        ),
                                    elevation: 0.0,
                                    borderRadius: BorderRadius.circular(0.0),
                                  ),
                                ),
                                FFButtonWidget(
                                  onPressed: () async {
                                    if (_model.selectedOption?.actionType ==
                                        ActionType.showVideo) {
                                      context.pushNamed(
                                        CLibraryVideoFlowWidget.routeName,
                                        queryParameters: {
                                          'currentVideoId': serializeParam(
                                            _model.selectedOption?.nextStepKey,
                                            ParamType.DocumentReference,
                                          ),
                                        }.withoutNulls,
                                      );
                                    } else if (_model
                                            .selectedOption?.actionType ==
                                        ActionType.navigate) {
                                      if (_model.selectedOption?.targetPage ==
                                          TargetPage.contactUs) {
                                        context.pushNamed(
                                            KContactWidget.routeName);
                                      } else if (_model
                                              .selectedOption?.targetPage ==
                                          TargetPage.needAssistant) {
                                        context.pushNamed(
                                            LRequestTechnicalWidget.routeName);
                                      }
                                    } else if (_model
                                            .selectedOption?.actionType ==
                                        ActionType.navigateWithData) {
                                      context.pushNamed(
                                        DSelectProductRepairWidget.routeName,
                                        queryParameters: {
                                          'part': serializeParam(
                                            _model
                                                .selectedOption?.targetPartType,
                                            ParamType.Enum,
                                          ),
                                        }.withoutNulls,
                                      );
                                    }
                                  },
                                  text: 'Proceed',
                                  icon: Icon(
                                    Icons.arrow_forward_sharp,
                                    size: 15.0,
                                  ),
                                  options: FFButtonOptions(
                                    height: 40.0,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 16.0, 0.0),
                                    iconAlignment: IconAlignment.end,
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: FlutterFlowTheme.of(context).primary,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .labelMediumFamily,
                                          color: FlutterFlowTheme.of(context)
                                              .secondary,
                                          fontSize: 16.0,
                                          letterSpacing: 0.0,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .labelMediumIsCustom,
                                        ),
                                    elevation: 0.0,
                                    borderRadius: BorderRadius.circular(0.0),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
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
