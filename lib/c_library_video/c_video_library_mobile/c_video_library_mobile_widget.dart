import '/components/diagnostic_card2_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_video_player.dart';
import 'package:flutter/material.dart';
import 'c_video_library_mobile_model.dart';
export 'c_video_library_mobile_model.dart';

class CVideoLibraryMobileWidget extends StatefulWidget {
  const CVideoLibraryMobileWidget({super.key});

  @override
  State<CVideoLibraryMobileWidget> createState() =>
      _CVideoLibraryMobileWidgetState();
}

class _CVideoLibraryMobileWidgetState extends State<CVideoLibraryMobileWidget> {
  late CVideoLibraryMobileModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CVideoLibraryMobileModel());

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
          Container(
            width: 100.0,
            height: 236.4,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
            ),
            child: AspectRatio(
              aspectRatio: 1.78,
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 24.0, 0.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    shape: BoxShape.rectangle,
                    border: Border.all(
                      color: FlutterFlowTheme.of(context).primaryText,
                      width: 2.0,
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Container(
                      child: Stack(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        children: [
                          Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                FlutterFlowVideoPlayer(
                                  path:
                                      'https://assets.mixkit.co/videos/529/529-720.mp4',
                                  videoType: VideoType.network,
                                  autoPlay: false,
                                  looping: true,
                                  showControls: true,
                                  allowFullScreen: true,
                                  allowPlaybackSpeedMenu: false,
                                ),
                              ].divide(SizedBox(height: 16.0)),
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
          Padding(
            padding: EdgeInsets.all(24.0),
            child: Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'DIAGNOSTIC FEED',
                    textAlign: TextAlign.start,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).bodyMediumFamily,
                          fontSize: 16.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w900,
                          useGoogleFonts:
                              !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                        ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 1,
                        child: wrapWithModel(
                          model: _model.diagnosticCardModel1,
                          updateCallback: () => safeSetState(() {}),
                          child: DiagnosticCard2Widget(
                            author: 'Sam Will',
                            date: '2.04.24',
                            img_desc:
                                'https://dimg.dreamflow.cloud/v1/image/HVAC%20technician%20testing%20capacitor%20with%20multimeter',
                            tag: 'SCHEMATIC',
                            title:
                                'CAPACITOR FAILURE: IDENTIFYING THE \'BULGE\'',
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: wrapWithModel(
                          model: _model.diagnosticCardModel2,
                          updateCallback: () => safeSetState(() {}),
                          child: DiagnosticCard2Widget(
                            author: 'Alex Chen',
                            date: '1.15.24',
                            img_desc:
                                'https://dimg.dreamflow.cloud/v1/image/multimeter%20probes%20on%20compressor%20terminals',
                            tag: 'TUTORIAL',
                            title: 'COMPRESSOR OHMS: TESTING WINDINGS',
                          ),
                        ),
                      ),
                    ].divide(SizedBox(width: 16.0)),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 1,
                        child: wrapWithModel(
                          model: _model.diagnosticCardModel3,
                          updateCallback: () => safeSetState(() {}),
                          child: DiagnosticCard2Widget(
                            author: 'Sam Will',
                            date: '12.20.23',
                            img_desc:
                                'https://dimg.dreamflow.cloud/v1/image/AC%20condenser%20fan%20assembly%20close%20up',
                            tag: 'SCHEMATIC',
                            title: 'FAN MOTOR NOISE: BEARING CHECK',
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: wrapWithModel(
                          model: _model.diagnosticCardModel4,
                          updateCallback: () => safeSetState(() {}),
                          child: DiagnosticCard2Widget(
                            author: 'Riley J.',
                            date: '11.08.23',
                            img_desc:
                                'https://dimg.dreamflow.cloud/v1/image/burnt%20electrical%20contactor%20points',
                            tag: 'VIDEO',
                            title: 'CONTACTOR PITTING: WHEN TO REPLACE',
                          ),
                        ),
                      ),
                    ].divide(SizedBox(width: 16.0)),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 1,
                        child: wrapWithModel(
                          model: _model.diagnosticCardModel5,
                          updateCallback: () => safeSetState(() {}),
                          child: DiagnosticCard2Widget(
                            author: 'Sam Will',
                            date: '10.12.23',
                            img_desc:
                                'https://dimg.dreamflow.cloud/v1/image/thermostat%20subbase%20wiring%20diagram',
                            tag: 'SCHEMATIC',
                            title: 'THERMOSTAT WIRING: C-WIRE GUIDE',
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: wrapWithModel(
                          model: _model.diagnosticCardModel6,
                          updateCallback: () => safeSetState(() {}),
                          child: DiagnosticCard2Widget(
                            author: 'Jordan M.',
                            date: '09.30.23',
                            img_desc:
                                'https://dimg.dreamflow.cloud/v1/image/wet%20dry%20vac%20attached%20to%20pvc%20drain%20line',
                            tag: 'TUTORIAL',
                            title: 'DRAIN LINE CLOGS: VACUUM METHOD',
                          ),
                        ),
                      ),
                    ].divide(SizedBox(width: 16.0)),
                  ),
                ].divide(SizedBox(height: 24.0)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
