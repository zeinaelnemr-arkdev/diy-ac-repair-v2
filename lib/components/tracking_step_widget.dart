import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'tracking_step_model.dart';
export 'tracking_step_model.dart';

class TrackingStepWidget extends StatefulWidget {
  const TrackingStepWidget({
    super.key,
    this.icon,
    String? status,
    String? subtitle,
    String? title,
    String? desc,
    bool? last,
    bool? active,
    bool? completed,
  })  : this.status = status ?? 'COMPLETED',
        this.subtitle = subtitle ?? 'Oct 24, 10:30 AM',
        this.title = title ?? 'Order Submitted',
        this.desc = desc ?? 'Order verified and processed for fulfillment.',
        this.last = last ?? false,
        this.active = active ?? true,
        this.completed = completed ?? true;

  final Widget? icon;
  final String status;
  final String subtitle;
  final String title;
  final String desc;
  final bool last;
  final bool active;
  final bool completed;

  @override
  State<TrackingStepWidget> createState() => _TrackingStepWidgetState();
}

class _TrackingStepWidgetState extends State<TrackingStepWidget> {
  late TrackingStepModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TrackingStepModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 40.0,
              height: 40.0,
              decoration: BoxDecoration(
                color: valueOrDefault<Color>(
                  () {
                    if (valueOrDefault<bool>(
                      widget.completed,
                      true,
                    )) {
                      return FlutterFlowTheme.of(context).primary;
                    } else if (valueOrDefault<bool>(
                      widget.active,
                      true,
                    )) {
                      return FlutterFlowTheme.of(context).primary;
                    } else {
                      return Color(0xFFC8C9CB);
                    }
                  }(),
                  FlutterFlowTheme.of(context).primary,
                ),
                borderRadius: BorderRadius.circular(9999.0),
                shape: BoxShape.rectangle,
                border: Border.all(
                  color: FlutterFlowTheme.of(context).alternate,
                  width: 1.0,
                ),
              ),
              alignment: AlignmentDirectional(0.0, 0.0),
              child: widget.icon!,
            ),
            if (valueOrDefault<bool>(
              valueOrDefault<bool>(
                widget.last,
                false,
              )
                  ? false
                  : true,
              true,
            ))
              Container(
                width: 2.0,
                height: 60.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).alternate,
                  shape: BoxShape.rectangle,
                ),
              ),
          ],
        ),
        Expanded(
          flex: 1,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        valueOrDefault<String>(
                          widget.title,
                          'Order Submitted',
                        ),
                        style:
                            FlutterFlowTheme.of(context).titleMedium.override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .titleMediumFamily,
                                  fontSize: 18.0,
                                  letterSpacing: 0.0,
                                  lineHeight: 1.2,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .titleMediumIsCustom,
                                ),
                      ),
                      Text(
                        valueOrDefault<String>(
                          widget.subtitle,
                          'Oct 24, 10:30 AM',
                        ),
                        style: FlutterFlowTheme.of(context).bodySmall.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodySmallFamily,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              letterSpacing: 0.0,
                              lineHeight: 1.5,
                              useGoogleFonts: !FlutterFlowTheme.of(context)
                                  .bodySmallIsCustom,
                            ),
                      ),
                    ].divide(SizedBox(height: 4.0)),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: valueOrDefault<Color>(
                        () {
                          if (valueOrDefault<bool>(
                            widget.completed,
                            true,
                          )) {
                            return FlutterFlowTheme.of(context).primary;
                          } else if (valueOrDefault<bool>(
                            widget.active,
                            true,
                          )) {
                            return FlutterFlowTheme.of(context)
                                .primaryBackground;
                          } else {
                            return FlutterFlowTheme.of(context).grey20;
                          }
                        }(),
                        FlutterFlowTheme.of(context).primary,
                      ),
                      shape: BoxShape.rectangle,
                      border: Border.all(
                        color: FlutterFlowTheme.of(context).alternate,
                        width: 1.0,
                      ),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(8.0, 4.0, 8.0, 4.0),
                      child: Container(
                        child: Text(
                          valueOrDefault<String>(
                            widget.status,
                            'COMPLETED',
                          ),
                          style: FlutterFlowTheme.of(context)
                              .labelSmall
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .labelSmallFamily,
                                color: valueOrDefault<Color>(
                                  valueOrDefault<bool>(
                                    widget.completed,
                                    true,
                                  )
                                      ? Colors.white
                                      : FlutterFlowTheme.of(context)
                                          .primaryText,
                                  Colors.white,
                                ),
                                fontSize: 18.0,
                                letterSpacing: 0.0,
                                lineHeight: 1.2,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .labelSmallIsCustom,
                              ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Text(
                valueOrDefault<String>(
                  widget.desc,
                  'Order verified and processed for fulfillment.',
                ),
                maxLines: 2,
                style: FlutterFlowTheme.of(context).bodySmall.override(
                      fontFamily: FlutterFlowTheme.of(context).bodySmallFamily,
                      color: FlutterFlowTheme.of(context).secondaryText,
                      letterSpacing: 0.0,
                      lineHeight: 1.5,
                      useGoogleFonts:
                          !FlutterFlowTheme.of(context).bodySmallIsCustom,
                    ),
                overflow: TextOverflow.ellipsis,
              ),
            ].divide(SizedBox(height: 4.0)),
          ),
        ),
      ].divide(SizedBox(width: 16.0)),
    );
  }
}
