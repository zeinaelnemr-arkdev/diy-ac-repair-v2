import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'button_model.dart';
export 'button_model.dart';

class ButtonWidget extends StatefulWidget {
  const ButtonWidget({
    super.key,
    String? content,
    String? variant,
    String? size,
    this.icon,
    this.iconEnd,
    bool? iconPesent,
    bool? iconEndPresent,
    Color? color,
    Color? bg,
    bool? fullWidth,
    bool? loading,
    bool? disabled,
  })  : this.content = content ?? 'RESET FILTERS',
        this.variant = variant ?? 'outline',
        this.size = size ?? 'medium',
        this.iconPesent = iconPesent ?? false,
        this.iconEndPresent = iconEndPresent ?? false,
        this.color = color ?? Colors.black,
        this.bg = bg ?? const Color(0xEEFFFFFF),
        this.fullWidth = fullWidth ?? true,
        this.loading = loading ?? false,
        this.disabled = disabled ?? false;

  final String content;
  final String variant;
  final String size;
  final Widget? icon;
  final Widget? iconEnd;
  final bool iconPesent;
  final bool iconEndPresent;
  final Color color;
  final Color bg;
  final bool fullWidth;
  final bool loading;
  final bool disabled;

  @override
  State<ButtonWidget> createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  late ButtonModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ButtonModel());

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
          color: valueOrDefault<Color>(
            () {
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
            FlutterFlowTheme.of(context).primary,
          ),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(valueOrDefault<double>(
              () {
                if (widget.size == 'small') {
                  return 2.0;
                } else if (widget.size == 'large') {
                  return 8.0;
                } else {
                  return 4.0;
                }
              }(),
              4.0,
            )),
            topRight: Radius.circular(valueOrDefault<double>(
              () {
                if (widget.size == 'small') {
                  return 2.0;
                } else if (widget.size == 'large') {
                  return 8.0;
                } else {
                  return 4.0;
                }
              }(),
              8.0,
            )),
            bottomLeft: Radius.circular(valueOrDefault<double>(
              () {
                if (widget.size == 'small') {
                  return 2.0;
                } else if (widget.size == 'large') {
                  return 8.0;
                } else {
                  return 4.0;
                }
              }(),
              4.0,
            )),
            bottomRight: Radius.circular(valueOrDefault<double>(
              () {
                if (widget.size == 'small') {
                  return 2.0;
                } else if (widget.size == 'large') {
                  return 8.0;
                } else {
                  return 4.0;
                }
              }(),
              4.0,
            )),
          ),
          shape: BoxShape.rectangle,
          border: Border.all(
            color: valueOrDefault<Color>(
              widget.variant == 'outline'
                  ? FlutterFlowTheme.of(context).secondary
                  : FlutterFlowTheme.of(context).primary,
              FlutterFlowTheme.of(context).secondary,
            ),
            width: valueOrDefault<double>(
              widget.variant == 'outline' ? 1.0 : 0.0,
              0.0,
            ),
          ),
        ),
        child: Stack(
          alignment: AlignmentDirectional(0.0, 0.0),
          children: [
            if (responsiveVisibility(
              context: context,
              tablet: false,
              tabletLandscape: false,
            ))
              Opacity(
                opacity: valueOrDefault<double>(
                  widget.loading ? 0.0 : 1.0,
                  1.0,
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(
                      valueOrDefault<double>(
                        () {
                          if (widget.size == 'small') {
                            return 16.0;
                          } else if (widget.size == 'large') {
                            return 32.0;
                          } else {
                            return 24.0;
                          }
                        }(),
                        24.0,
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
                        8.0,
                      ),
                      valueOrDefault<double>(
                        () {
                          if (widget.size == 'small') {
                            return 16.0;
                          } else if (widget.size == 'large') {
                            return 32.0;
                          } else {
                            return 24.0;
                          }
                        }(),
                        24.0,
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
                        8.0,
                      )),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      if (valueOrDefault<bool>(
                        widget.iconPesent,
                        false,
                      ))
                        widget.icon!,
                      Text(
                        valueOrDefault<String>(
                          widget.content,
                          'RESET FILTERS',
                        ),
                        maxLines: 1,
                        style: FlutterFlowTheme.of(context)
                            .labelMedium
                            .override(
                              fontFamily: FlutterFlowTheme.of(context)
                                  .labelMediumFamily,
                              color: valueOrDefault<Color>(
                                () {
                                  if (widget.variant == 'secondary') {
                                    return FlutterFlowTheme.of(context)
                                        .primaryText;
                                  } else if (widget.variant == 'outline') {
                                    return FlutterFlowTheme.of(context)
                                        .secondary;
                                  } else if (widget.variant == 'ghost') {
                                    return FlutterFlowTheme.of(context).primary;
                                  } else if (widget.variant == 'destructive') {
                                    return FlutterFlowTheme.of(context).onError;
                                  } else {
                                    return FlutterFlowTheme.of(context)
                                        .onPrimary;
                                  }
                                }(),
                                FlutterFlowTheme.of(context).primary,
                              ),
                              fontSize: 16.0,
                              letterSpacing: 0.0,
                              lineHeight: 1.2,
                              useGoogleFonts: !FlutterFlowTheme.of(context)
                                  .labelMediumIsCustom,
                            ),
                        overflow: TextOverflow.clip,
                      ),
                      if (valueOrDefault<bool>(
                        widget.iconEndPresent,
                        false,
                      ))
                        widget.iconEnd!,
                    ].divide(SizedBox(width: 8.0)),
                  ),
                ),
              ),
            if (valueOrDefault<bool>(
              widget.loading ? true : false,
              false,
            ))
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
