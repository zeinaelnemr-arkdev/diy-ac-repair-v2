import '/b_screen_components/s01_navigatio_bar/s01_navigatio_bar_widget.dart';
import '/b_screen_components/s12_footer/s12_footer_widget.dart';
import '/backend/backend.dart';
import '/c_library_video/c_video_diagnosis_desktop/c_video_diagnosis_desktop_widget.dart';
import '/c_library_video/c_video_diagnosis_mobile/c_video_diagnosis_mobile_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'c_library_video_flow_model.dart';
export 'c_library_video_flow_model.dart';

class CLibraryVideoFlowWidget extends StatefulWidget {
  const CLibraryVideoFlowWidget({
    super.key,
    this.currentVideoId,
  });

  final DocumentReference? currentVideoId;

  static String routeName = 'C-Library_Video_Flow';
  static String routePath = '/library';

  @override
  State<CLibraryVideoFlowWidget> createState() =>
      _CLibraryVideoFlowWidgetState();
}

class _CLibraryVideoFlowWidgetState extends State<CLibraryVideoFlowWidget> {
  late CLibraryVideoFlowModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CLibraryVideoFlowModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (widget.currentVideoId != null) {
        _model.passedVideo =
            await DiagnosisVideoRecord.getDocumentOnce(widget.currentVideoId!);
        _model.currentValue = _model.passedVideo;
        safeSetState(() {});
      } else {
        _model.startPoint = await queryDiagnosisVideoRecordOnce(
          queryBuilder: (diagnosisVideoRecord) => diagnosisVideoRecord.where(
            'isStart',
            isEqualTo: true,
          ),
          singleRecord: true,
        ).then((s) => s.firstOrNull);
        _model.currentValue = _model.startPoint;
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
                Stack(
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
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: CachedNetworkImageProvider(
                                    valueOrDefault<String>(
                                      MediaQuery.sizeOf(context).width <
                                              kBreakpointSmall
                                          ? 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/the-company-kx87u5/assets/snombgtjslh3/Lines_Phone.png'
                                          : 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/the-company-kx87u5/assets/f0wd86jvtesu/Lines_TabletPC.png',
                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/the-company-kx87u5/assets/f0wd86jvtesu/Lines_TabletPC.png',
                                    ),
                                  ),
                                ),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        width: 1.0,
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            wrapWithModel(
                                              model:
                                                  _model.s01NavigatioBarModel,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: S01NavigatioBarWidget(),
                                            ),
                                            Divider(
                                              height: 1.0,
                                              thickness: 1.0,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                            ),
                                            Container(
                                              width: double.infinity,
                                              height: valueOrDefault<double>(
                                                MediaQuery.sizeOf(context)
                                                            .width <
                                                        kBreakpointSmall
                                                    ? 25.0
                                                    : 60.0,
                                                100.0,
                                              ),
                                              decoration: BoxDecoration(),
                                            ),
                                            Divider(
                                              height: 1.0,
                                              thickness: 1.0,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .tertiary,
                                            ),
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Expanded(
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          if ((_model.currentValue !=
                                                                  null) &&
                                                              responsiveVisibility(
                                                                context:
                                                                    context,
                                                                tablet: false,
                                                                tabletLandscape:
                                                                    false,
                                                                desktop: false,
                                                              ))
                                                            wrapWithModel(
                                                              model: _model
                                                                  .cVideoDiagnosisMobileModel,
                                                              updateCallback: () =>
                                                                  safeSetState(
                                                                      () {}),
                                                              child:
                                                                  CVideoDiagnosisMobileWidget(
                                                                videoRecord: _model
                                                                    .currentValue,
                                                              ),
                                                            ),
                                                          if ((_model.currentValue
                                                                      ?.reference !=
                                                                  null) &&
                                                              responsiveVisibility(
                                                                context:
                                                                    context,
                                                                phone: false,
                                                                tablet: false,
                                                              ))
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          48.0),
                                                              child:
                                                                  wrapWithModel(
                                                                model: _model
                                                                    .cVideoDiagnosisDesktopModel,
                                                                updateCallback: () =>
                                                                    safeSetState(
                                                                        () {}),
                                                                updateOnChange:
                                                                    true,
                                                                child:
                                                                    CVideoDiagnosisDesktopWidget(
                                                                  videoRecord:
                                                                      _model
                                                                          .currentValue!,
                                                                ),
                                                              ),
                                                            ),
                                                          if (responsiveVisibility(
                                                            context: context,
                                                            tabletLandscape:
                                                                false,
                                                          ))
                                                            wrapWithModel(
                                                              model: _model
                                                                  .s12FooterModel,
                                                              updateCallback: () =>
                                                                  safeSetState(
                                                                      () {}),
                                                              child:
                                                                  S12FooterWidget(),
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
                  ],
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
