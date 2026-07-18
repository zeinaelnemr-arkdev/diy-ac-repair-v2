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
import 'c_video_diagnosis_desktop_model.dart';
export 'c_video_diagnosis_desktop_model.dart';

class CVideoDiagnosisDesktopWidget extends StatefulWidget {
  const CVideoDiagnosisDesktopWidget({
    super.key,
    required this.videoRecord,
  });

  final DiagnosisVideoRecord? videoRecord;

  @override
  State<CVideoDiagnosisDesktopWidget> createState() =>
      _CVideoDiagnosisDesktopWidgetState();
}

class _CVideoDiagnosisDesktopWidgetState
    extends State<CVideoDiagnosisDesktopWidget> {
  late CVideoDiagnosisDesktopModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CVideoDiagnosisDesktopModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.currentVideo = widget.videoRecord;
      _model.allOptions = await queryDiagnosisVideoOptionRecordOnce(
        queryBuilder: (diagnosisVideoOptionRecord) => diagnosisVideoOptionRecord
            .where(
              'diagnosisVideoRef',
              isEqualTo: _model.currentVideo?.reference,
            )
            .orderBy('displayOrder'),
      );
      _model.videoOptions = _model.allOptions!
          .sortedList(keyOf: (e) => e.displayOrder, desc: false)
          .toList()
          .cast<DiagnosisVideoOptionRecord>();
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
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 0.0, 0.0),
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
            padding: EdgeInsetsDirectional.fromSTEB(24.0, 8.0, 24.0, 0.0),
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
                      fontFamily: FlutterFlowTheme.of(context).labelSmallFamily,
                      letterSpacing: 0.0,
                      useGoogleFonts:
                          !FlutterFlowTheme.of(context).labelSmallIsCustom,
                    ),
              ),
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(18.0),
                child: ClipRRect(
                  child: Container(
                    constraints: BoxConstraints(
                      maxHeight: double.infinity,
                    ),
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).grey10,
                      border: Border.all(
                        color: FlutterFlowTheme.of(context).primary,
                        width: 3.0,
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(24.0),
                          child: Container(
                            width: 320.93,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).secondary,
                              border: Border.all(
                                width: 1.0,
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
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
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodyLargeFamily,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w900,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .bodyLargeIsCustom,
                                          ),
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(-1.0, -1.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          1.0, 0.0, 0.0, 14.0),
                                      child: Text(
                                        valueOrDefault<String>(
                                          _model.currentVideo?.description,
                                          'desc',
                                        ),
                                        textAlign: TextAlign.start,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily,
                                              fontSize: 16.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.bold,
                                              useGoogleFonts:
                                                  !FlutterFlowTheme.of(context)
                                                      .bodyMediumIsCustom,
                                            ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 14.0),
                                    child: FlutterFlowRadioButton(
                                      options: _model.videoOptions
                                          .map((e) => valueOrDefault<String>(
                                                e.buttonText,
                                                'option..',
                                              ))
                                          .toList(),
                                      onChanged: (val) async {
                                        safeSetState(() {});
                                        _model.slectedOption = _model
                                            .videoOptions
                                            .where((e) =>
                                                e.buttonText ==
                                                _model.radioButtonValue)
                                            .toList()
                                            .firstOrNull;
                                        safeSetState(() {});
                                      },
                                      controller:
                                          _model.radioButtonValueController ??=
                                              FormFieldController<String>(null),
                                      textStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
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
                                          FlutterFlowTheme.of(context)
                                              .secondaryText,
                                      toggleable: false,
                                      horizontalAlignment: WrapAlignment.start,
                                      verticalAlignment:
                                          WrapCrossAlignment.start,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              24.0, 0.0, 24.0, 24.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                                  color: FlutterFlowTheme.of(context).grey30,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
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
                                  hoverColor:
                                      FlutterFlowTheme.of(context).primary,
                                  hoverBorderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).primary,
                                  ),
                                  hoverTextColor:
                                      FlutterFlowTheme.of(context).secondary,
                                ),
                              ),
                              FFButtonWidget(
                                onPressed: () async {
                                  if (_model.slectedOption?.actionType ==
                                      ActionType.showVideo) {
                                    context.pushNamed(
                                      CLibraryVideoFlowWidget.routeName,
                                      queryParameters: {
                                        'currentVideoId': serializeParam(
                                          _model.slectedOption?.nextStepKey,
                                          ParamType.DocumentReference,
                                        ),
                                      }.withoutNulls,
                                    );
                                  } else if (_model.slectedOption?.actionType ==
                                      ActionType.navigate) {
                                    if (_model.slectedOption?.targetPage ==
                                        TargetPage.contactUs) {
                                      context
                                          .pushNamed(KContactWidget.routeName);
                                    } else if (_model
                                            .slectedOption?.targetPage ==
                                        TargetPage.needAssistant) {
                                      context.pushNamed(
                                          LRequestTechnicalWidget.routeName);
                                    }
                                  } else if (_model.slectedOption?.actionType ==
                                      ActionType.navigateWithData) {
                                    context.pushNamed(
                                      DSelectProductRepairWidget.routeName,
                                      queryParameters: {
                                        'part': serializeParam(
                                          _model.slectedOption?.targetPartType,
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
                                        fontFamily: FlutterFlowTheme.of(context)
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
                                  hoverColor: Color(0xFF3890A5),
                                  hoverTextColor:
                                      FlutterFlowTheme.of(context).secondary,
                                ),
                              ),
                            ].divide(SizedBox(width: 115.0)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Padding(
                    padding: EdgeInsets.all(18.0),
                    child: ClipRRect(
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 0.8,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              20.0, 0.0, 20.0, 0.0),
                          child: AspectRatio(
                            aspectRatio: 1.78,
                            child: FlutterFlowVideoPlayer(
                              path: valueOrDefault<String>(
                                widget.videoRecord?.videoUrl,
                                'https://firebasestorage.googleapis.com/v0/b/diy-ac-44e10.firebasestorage.app/o/18127221-hd_1080_1920_30fps.mp4?alt=media&token=501c0213-f782-453c-96ed-e7d2cc2f03a9',
                              ),
                              videoType: VideoType.network,
                              width: MediaQuery.sizeOf(context).width * 0.8,
                              height: MediaQuery.sizeOf(context).height * 0.7,
                              aspectRatio: 1.7,
                              autoPlay: true,
                              looping: false,
                              showControls: true,
                              allowFullScreen: false,
                              allowPlaybackSpeedMenu: true,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
