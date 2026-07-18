import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_video_player.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 's15_video_player_main_model.dart';
export 's15_video_player_main_model.dart';

class S15VideoPlayerMainWidget extends StatefulWidget {
  const S15VideoPlayerMainWidget({super.key});

  @override
  State<S15VideoPlayerMainWidget> createState() =>
      _S15VideoPlayerMainWidgetState();
}

class _S15VideoPlayerMainWidgetState extends State<S15VideoPlayerMainWidget> {
  late S15VideoPlayerMainModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => S15VideoPlayerMainModel());

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
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 0.0, 0.0),
              child: Container(
                width: 2000.0,
                constraints: BoxConstraints(
                  maxWidth: valueOrDefault<double>(
                    MediaQuery.sizeOf(context).width < kBreakpointLarge
                        ? double.infinity
                        : 1000.0,
                    2000.0,
                  ),
                  maxHeight: 570.0,
                ),
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondary,
                  border: Border.all(
                    width: 3.0,
                  ),
                ),
                child: Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(4.0),
                      child: FlutterFlowVideoPlayer(
                        path:
                            'https://youtu.be/Is0pv2Qnza0?si=YIVX9zhp_INIGlXc',
                        videoType: VideoType.network,
                        autoPlay: false,
                        looping: false,
                        showControls: false,
                        allowFullScreen: true,
                        allowPlaybackSpeedMenu: false,
                        lazyLoad: false,
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.0, 1.0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 0.0, 0.0, 120.0),
                        child: FFButtonWidget(
                          onPressed: () {
                            print('Button pressed ...');
                          },
                          text: 'INITIATE PLAYBACK',
                          icon: Icon(
                            Icons.play_arrow,
                            size: 42.0,
                          ),
                          options: FFButtonOptions(
                            width: 120.0,
                            height: 80.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 8.0, 0.0),
                            color: FlutterFlowTheme.of(context).secondary,
                            textStyle: FlutterFlowTheme.of(context)
                                .labelLarge
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .labelLargeFamily,
                                  color: FlutterFlowTheme.of(context).primary,
                                  fontSize: 24.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .labelLargeIsCustom,
                                ),
                            elevation: 0.0,
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).secondary,
                            ),
                            borderRadius: BorderRadius.circular(0.0),
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
    );
  }
}
