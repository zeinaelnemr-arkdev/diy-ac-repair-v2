import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'diagnostic_card2_model.dart';
export 'diagnostic_card2_model.dart';

class DiagnosticCard2Widget extends StatefulWidget {
  const DiagnosticCard2Widget({
    super.key,
    String? author,
    String? date,
    String? img_desc,
    String? tag,
    String? title,
  })  : this.author = author ?? 'Sam Will',
        this.date = date ?? '2.04.24',
        this.img_desc = img_desc ??
            'https://dimg.dreamflow.cloud/v1/image/HVAC%20technician%20testing%20capacitor%20with%20multimeter',
        this.tag = tag ?? 'SCHEMATIC',
        this.title = title ?? 'CAPACITOR FAILURE: IDENTIFYING THE \'BULGE\'';

  final String author;
  final String date;
  final String img_desc;
  final String tag;
  final String title;

  @override
  State<DiagnosticCard2Widget> createState() => _DiagnosticCard2WidgetState();
}

class _DiagnosticCard2WidgetState extends State<DiagnosticCard2Widget> {
  late DiagnosticCard2Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DiagnosticCard2Model());

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
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(0.0),
        shape: BoxShape.rectangle,
        border: Border.all(
          color: FlutterFlowTheme.of(context).primaryText,
          width: 2.0,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 160.0,
            child: Stack(
              alignment: AlignmentDirectional(-1.0, -1.0),
              children: [
                CachedNetworkImage(
                  fadeInDuration: Duration(milliseconds: 0),
                  fadeOutDuration: Duration(milliseconds: 0),
                  imageUrl: valueOrDefault<String>(
                    widget.img_desc,
                    'https://dimg.dreamflow.cloud/v1/image/HVAC%20technician%20testing%20capacitor%20with%20multimeter',
                  ),
                  height: 160.0,
                  fit: BoxFit.cover,
                  alignment: Alignment(0.0, 0.0),
                ),
                Align(
                  alignment: AlignmentDirectional(-1.0, -1.0),
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Container(
                      alignment: AlignmentDirectional(-1.0, -1.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          shape: BoxShape.rectangle,
                          border: Border.all(
                            color: FlutterFlowTheme.of(context).primaryText,
                            width: 1.0,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              8.0, 4.0, 8.0, 4.0),
                          child: Container(
                            child: Text(
                              valueOrDefault<String>(
                                widget.tag,
                                'SCHEMATIC',
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .labelSmall
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .labelSmallFamily,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                    lineHeight: 1.1,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .labelSmallIsCustom,
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
          ),
          Container(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Container(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      valueOrDefault<String>(
                        widget.title,
                        'CAPACITOR FAILURE: IDENTIFYING THE \'BULGE\'',
                      ),
                      maxLines: 2,
                      style: FlutterFlowTheme.of(context).titleMedium.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).titleMediumFamily,
                            color: FlutterFlowTheme.of(context).primaryText,
                            fontSize: 14.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w900,
                            lineHeight: 1.2,
                            useGoogleFonts: !FlutterFlowTheme.of(context)
                                .titleMediumIsCustom,
                          ),
                      overflow: TextOverflow.ellipsis,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.person_rounded,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 14.0,
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 12.0, 0.0),
                              child: Text(
                                valueOrDefault<String>(
                                  widget.author,
                                  'Sam Will',
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .labelSmall
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .labelSmallFamily,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      fontSize: 14.0,
                                      letterSpacing: 0.0,
                                      lineHeight: 1.1,
                                      useGoogleFonts:
                                          !FlutterFlowTheme.of(context)
                                              .labelSmallIsCustom,
                                    ),
                              ),
                            ),
                          ].divide(SizedBox(width: 4.0)),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.schedule_rounded,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 14.0,
                            ),
                            Text(
                              valueOrDefault<String>(
                                widget.date,
                                '2.04.24',
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .labelSmall
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .labelSmallFamily,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                    lineHeight: 1.1,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .labelSmallIsCustom,
                                  ),
                            ),
                          ].divide(SizedBox(width: 4.0)),
                        ),
                      ],
                    ),
                  ].divide(SizedBox(height: 16.0)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
