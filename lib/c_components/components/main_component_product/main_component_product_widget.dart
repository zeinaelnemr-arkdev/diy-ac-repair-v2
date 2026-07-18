import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'main_component_product_model.dart';
export 'main_component_product_model.dart';

class MainComponentProductWidget extends StatefulWidget {
  const MainComponentProductWidget({
    super.key,
    this.width,
  });

  final double? width;

  @override
  State<MainComponentProductWidget> createState() =>
      _MainComponentProductWidgetState();
}

class _MainComponentProductWidgetState extends State<MainComponentProductWidget>
    with TickerProviderStateMixin {
  late MainComponentProductModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MainComponentProductModel());

    animationsMap.addAll({
      'containerOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 50.0.ms,
            duration: 400.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
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
    return Container(
      width: widget.width,
      height: () {
        if (MediaQuery.sizeOf(context).width < 810.0) {
          return 235.0;
        } else if ((MediaQuery.sizeOf(context).width >= 810.0) &&
            (MediaQuery.sizeOf(context).width < 1280.0)) {
          return 245.0;
        } else if ((MediaQuery.sizeOf(context).width >= 1280.0) &&
            (MediaQuery.sizeOf(context).width < 2560.0)) {
          return 255.0;
        } else {
          return 265.0;
        }
      }(),
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).whiteGreyColor,
        borderRadius: BorderRadius.circular(valueOrDefault<double>(
          FFAppConstants.radius2XI,
          0.0,
        )),
        border: Border.all(
          color: FlutterFlowTheme.of(context).bgBorderColor,
          width: 1.0,
        ),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(12.0, 12.0, 12.0, 14.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                width: double.infinity,
                height: double.infinity,
                child: Stack(
                  alignment: AlignmentDirectional(1.0, -1.0),
                  children: [
                    ClipRRect(
                      borderRadius:
                          BorderRadius.circular(valueOrDefault<double>(
                        FFAppConstants.radius2XI,
                        0.0,
                      )),
                      child: CachedNetworkImage(
                        fadeInDuration: Duration(milliseconds: 200),
                        fadeOutDuration: Duration(milliseconds: 200),
                        imageUrl: '',
                        width: double.infinity,
                        height: double.infinity,
                        fit: BoxFit.cover,
                        errorWidget: (context, error, stackTrace) =>
                            Image.asset(
                          'assets/images/error_image.png',
                          width: double.infinity,
                          height: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 10.0, 0.0),
                      child: Container(
                        width: 28.0,
                        height: 28.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).tertiary,
                          shape: BoxShape.circle,
                        ),
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Builder(
                          builder: (context) {
                            if (false == false) {
                              return Icon(
                                Icons.favorite_border,
                                color: FlutterFlowTheme.of(context).primary,
                                size: 18.0,
                              );
                            } else {
                              return Icon(
                                Icons.favorite,
                                color: FlutterFlowTheme.of(context).primary,
                                size: 18.0,
                              );
                            }
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '',
                  textAlign: TextAlign.start,
                  maxLines: 1,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        font: GoogleFonts.outfit(
                          fontWeight: FontWeight.w600,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        ),
                        fontSize: 15.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w600,
                        fontStyle:
                            FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        lineHeight: 1.33,
                      ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(0.0),
                      child: SvgPicture.asset(
                        'assets/images/start_yellow_gl.svg',
                        width: 18.0,
                        height: 18.0,
                        fit: BoxFit.contain,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        '',
                        textAlign: TextAlign.start,
                        maxLines: 1,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              font: GoogleFonts.outfit(
                                fontWeight: FontWeight.normal,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontStyle,
                              ),
                              color: FlutterFlowTheme.of(context).primaryText,
                              fontSize: 13.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.normal,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                              lineHeight: 1.46,
                            ),
                      ),
                    ),
                  ].divide(SizedBox(width: 8.0)),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            decoration: BoxDecoration(),
                            child: Icon(
                              Icons.access_time_rounded,
                              color: FlutterFlowTheme.of(context).primary,
                              size: 16.0,
                            ),
                          ),
                          Expanded(
                            child: Text(
                              '',
                              textAlign: TextAlign.start,
                              maxLines: 1,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.outfit(
                                      fontWeight: FontWeight.normal,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    fontSize: 15.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                    lineHeight: 1.33,
                                  ),
                            ),
                          ),
                        ].divide(SizedBox(width: 8.0)),
                      ),
                    ),
                    Text(
                      '',
                      textAlign: TextAlign.end,
                      maxLines: 1,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            font: GoogleFonts.outfit(
                              fontWeight: FontWeight.w600,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                            color: FlutterFlowTheme.of(context).primary,
                            fontSize: 17.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w600,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                            lineHeight: 1.5,
                          ),
                    ),
                  ].divide(SizedBox(width: 8.0)),
                ),
              ].divide(SizedBox(height: 6.0)),
            ),
          ].divide(SizedBox(height: 8.0)),
        ),
      ),
    ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation']!);
  }
}
