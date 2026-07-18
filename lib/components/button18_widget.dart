import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'button18_model.dart';
export 'button18_model.dart';

class Button18Widget extends StatefulWidget {
  const Button18Widget({
    super.key,
    String? content,
    this.icon,
    bool? icon_present,
    this.icon_end,
    bool? icon_end_present,
    String? variant,
    String? size,
    bool? full_width,
    bool? loading,
    bool? disabled,
  })  : this.content = content ?? 'EXPORT CSV',
        this.icon_present = icon_present ?? true,
        this.icon_end_present = icon_end_present ?? false,
        this.variant = variant ?? 'secondary',
        this.size = size ?? 'medium',
        this.full_width = full_width ?? false,
        this.loading = loading ?? false,
        this.disabled = disabled ?? false;

  final String content;
  final Widget? icon;
  final bool icon_present;
  final Widget? icon_end;
  final bool icon_end_present;
  final String variant;
  final String size;
  final bool full_width;
  final bool loading;
  final bool disabled;

  @override
  State<Button18Widget> createState() => _Button18WidgetState();
}

class _Button18WidgetState extends State<Button18Widget> {
  late Button18Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Button18Model());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: widget.disabled ? 0.56 : 1.0,
      child: Container(
        decoration: BoxDecoration(
          color: () {
            if (widget.variant == 'secondary') {
              return FlutterFlowTheme.of(context).secondary;
            } else if (widget.variant == 'outline') {
              return Colors.transparent;
            } else if (widget.variant == 'ghost') {
              return Colors.transparent;
            } else if (widget.variant == 'destructive') {
              return FlutterFlowTheme.of(context).error;
            } else {
              return FlutterFlowTheme.of(context).primary;
            }
          }(),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(valueOrDefault<double>(
              () {
                if (widget.size == 'small') {
                  return 0.0;
                } else if (widget.size == 'large') {
                  return 0.0;
                } else {
                  return 0.0;
                }
              }(),
              0.0,
            )),
            topRight: Radius.circular(valueOrDefault<double>(
              () {
                if (widget.size == 'small') {
                  return 0.0;
                } else if (widget.size == 'large') {
                  return 0.0;
                } else {
                  return 0.0;
                }
              }(),
              0.0,
            )),
            bottomLeft: Radius.circular(valueOrDefault<double>(
              () {
                if (widget.size == 'small') {
                  return 0.0;
                } else if (widget.size == 'large') {
                  return 0.0;
                } else {
                  return 0.0;
                }
              }(),
              0.0,
            )),
            bottomRight: Radius.circular(valueOrDefault<double>(
              () {
                if (widget.size == 'small') {
                  return 0.0;
                } else if (widget.size == 'large') {
                  return 0.0;
                } else {
                  return 0.0;
                }
              }(),
              0.0,
            )),
          ),
          shape: BoxShape.rectangle,
          border: Border.all(
            color: widget.variant == 'outline'
                ? FlutterFlowTheme.of(context).alternate
                : Colors.transparent,
            width: widget.variant == 'outline' ? 1.0 : 0.0,
          ),
        ),
        child: Stack(
          alignment: AlignmentDirectional(0.0, 0.0),
          children: [
            Opacity(
              opacity: widget.loading ? 0.0 : 1.0,
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(
                    valueOrDefault<double>(
                      () {
                        if (widget.size == 'small') {
                          return 16.0;
                        } else if (widget.size == 'large') {
                          return 40.0;
                        } else {
                          return 24.0;
                        }
                      }(),
                      0.0,
                    ),
                    valueOrDefault<double>(
                      () {
                        if (widget.size == 'small') {
                          return 4.0;
                        } else if (widget.size == 'large') {
                          return 16.0;
                        } else {
                          return 8.0;
                        }
                      }(),
                      0.0,
                    ),
                    valueOrDefault<double>(
                      () {
                        if (widget.size == 'small') {
                          return 16.0;
                        } else if (widget.size == 'large') {
                          return 40.0;
                        } else {
                          return 24.0;
                        }
                      }(),
                      0.0,
                    ),
                    valueOrDefault<double>(
                      () {
                        if (widget.size == 'small') {
                          return 4.0;
                        } else if (widget.size == 'large') {
                          return 16.0;
                        } else {
                          return 8.0;
                        }
                      }(),
                      0.0,
                    )),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    if (valueOrDefault<bool>(
                      widget.icon_present,
                      true,
                    ))
                      widget.icon!,
                    Text(
                      valueOrDefault<String>(
                        widget.content,
                        'EXPORT CSV',
                      ),
                      maxLines: 1,
                      style: FlutterFlowTheme.of(context).labelMedium.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).labelMediumFamily,
                            color: () {
                              if (widget.variant == 'secondary') {
                                return FlutterFlowTheme.of(context).onSecondary;
                              } else if (widget.variant == 'outline') {
                                return FlutterFlowTheme.of(context).primaryText;
                              } else if (widget.variant == 'ghost') {
                                return FlutterFlowTheme.of(context).primary;
                              } else if (widget.variant == 'destructive') {
                                return FlutterFlowTheme.of(context).onError;
                              } else {
                                return FlutterFlowTheme.of(context).onPrimary;
                              }
                            }(),
                            letterSpacing: 0.0,
                            lineHeight: 1.2,
                            useGoogleFonts: !FlutterFlowTheme.of(context)
                                .labelMediumIsCustom,
                          ),
                      overflow: TextOverflow.clip,
                    ),
                    if (valueOrDefault<bool>(
                      widget.icon_end_present,
                      false,
                    ))
                      widget.icon_end!,
                  ].divide(SizedBox(width: 8.0)),
                ),
              ),
            ),
            if (widget.loading ? true : false)
              CircularPercentIndicator(
                percent: 0.0,
                radius: 7.0,
                lineWidth: 2.0,
                animation: true,
                animateFromLastPercent: true,
                progressColor: () {
                  if (widget.variant == 'secondary') {
                    return FlutterFlowTheme.of(context).onSecondary;
                  } else if (widget.variant == 'outline') {
                    return FlutterFlowTheme.of(context).primaryText;
                  } else if (widget.variant == 'ghost') {
                    return FlutterFlowTheme.of(context).primary;
                  } else if (widget.variant == 'destructive') {
                    return FlutterFlowTheme.of(context).onError;
                  } else {
                    return FlutterFlowTheme.of(context).onPrimary;
                  }
                }(),
                backgroundColor: FlutterFlowTheme.of(context).alternate,
              ),
          ],
        ),
      ),
    );
  }
}
