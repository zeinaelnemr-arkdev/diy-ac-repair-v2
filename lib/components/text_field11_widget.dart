import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'text_field11_model.dart';
export 'text_field11_model.dart';

class TextField11Widget extends StatefulWidget {
  const TextField11Widget({
    super.key,
    String? label,
    bool? labelPresent,
    String? helper,
    bool? helperPresent,
    String? hint,
    String? value,
    this.leadingIcon,
    bool? leadingIconPresent,
    this.trailingIcon,
    bool? trailingIconPresent,
    int? maxLines,
    String? variant,
    bool? error,
  })  : this.label = label ?? 'Address Label',
        this.labelPresent = labelPresent ?? true,
        this.helper = helper ?? '',
        this.helperPresent = helperPresent ?? false,
        this.hint = hint ?? 'e.g. Vacation Home',
        this.value = value ?? '',
        this.leadingIconPresent = leadingIconPresent ?? false,
        this.trailingIconPresent = trailingIconPresent ?? false,
        this.maxLines = maxLines ?? 4,
        this.variant = variant ?? 'outlined',
        this.error = error ?? false;

  final String label;
  final bool labelPresent;
  final String helper;
  final bool helperPresent;
  final String hint;
  final String value;
  final Widget? leadingIcon;
  final bool leadingIconPresent;
  final Widget? trailingIcon;
  final bool trailingIconPresent;
  final int maxLines;
  final String variant;
  final bool error;

  @override
  State<TextField11Widget> createState() => _TextField11WidgetState();
}

class _TextField11WidgetState extends State<TextField11Widget> {
  late TextField11Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TextField11Model());

    _model.inputTextController ??= TextEditingController(text: widget.value);
    _model.inputFocusNode ??= FocusNode();

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
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          if (valueOrDefault<bool>(
            widget.labelPresent,
            true,
          ))
            Text(
              valueOrDefault<String>(
                widget.label,
                'Address Label',
              ),
              style: FlutterFlowTheme.of(context).labelMedium.override(
                    fontFamily: FlutterFlowTheme.of(context).labelMediumFamily,
                    color: widget.error
                        ? FlutterFlowTheme.of(context).error
                        : FlutterFlowTheme.of(context).primaryText,
                    fontSize: 24.0,
                    letterSpacing: 0.0,
                    lineHeight: 1.2,
                    useGoogleFonts:
                        !FlutterFlowTheme.of(context).labelMediumIsCustom,
                  ),
            ),
          Container(
            height: 40.0,
            decoration: BoxDecoration(
              color: () {
                if (widget.variant == 'filled') {
                  return FlutterFlowTheme.of(context).secondaryBackground;
                } else if (widget.variant == 'ghost') {
                  return Colors.transparent;
                } else {
                  return Colors.transparent;
                }
              }(),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(valueOrDefault<double>(
                  () {
                    if (widget.variant == 'filled') {
                      return 0.0;
                    } else if (widget.variant == 'ghost') {
                      return 0.0;
                    } else {
                      return 0.0;
                    }
                  }(),
                  0.0,
                )),
                topRight: Radius.circular(valueOrDefault<double>(
                  () {
                    if (widget.variant == 'filled') {
                      return 0.0;
                    } else if (widget.variant == 'ghost') {
                      return 0.0;
                    } else {
                      return 0.0;
                    }
                  }(),
                  0.0,
                )),
                bottomLeft: Radius.circular(valueOrDefault<double>(
                  () {
                    if (widget.variant == 'filled') {
                      return 0.0;
                    } else if (widget.variant == 'ghost') {
                      return 0.0;
                    } else {
                      return 0.0;
                    }
                  }(),
                  0.0,
                )),
                bottomRight: Radius.circular(valueOrDefault<double>(
                  () {
                    if (widget.variant == 'filled') {
                      return 0.0;
                    } else if (widget.variant == 'ghost') {
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
                color: () {
                  if (widget.error) {
                    return FlutterFlowTheme.of(context).error;
                  } else if (widget.variant == 'filled') {
                    return Colors.transparent;
                  } else if (widget.variant == 'ghost') {
                    return Colors.transparent;
                  } else {
                    return FlutterFlowTheme.of(context).alternate;
                  }
                }(),
                width: () {
                  if (widget.error) {
                    return 1.0;
                  } else if (widget.variant == 'filled') {
                    return 1.0;
                  } else if (widget.variant == 'ghost') {
                    return 0.0;
                  } else {
                    return 1.0;
                  }
                }(),
              ),
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(
                  valueOrDefault<double>(
                    () {
                      if (widget.variant == 'filled') {
                        return 8.0;
                      } else if (widget.variant == 'ghost') {
                        return 8.0;
                      } else {
                        return 8.0;
                      }
                    }(),
                    0.0,
                  ),
                  valueOrDefault<double>(
                    () {
                      if (widget.variant == 'filled') {
                        return 8.0;
                      } else if (widget.variant == 'ghost') {
                        return 8.0;
                      } else {
                        return 8.0;
                      }
                    }(),
                    0.0,
                  ),
                  valueOrDefault<double>(
                    () {
                      if (widget.variant == 'filled') {
                        return 8.0;
                      } else if (widget.variant == 'ghost') {
                        return 8.0;
                      } else {
                        return 8.0;
                      }
                    }(),
                    0.0,
                  ),
                  valueOrDefault<double>(
                    () {
                      if (widget.variant == 'filled') {
                        return 8.0;
                      } else if (widget.variant == 'ghost') {
                        return 8.0;
                      } else {
                        return 8.0;
                      }
                    }(),
                    0.0,
                  )),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  if (valueOrDefault<bool>(
                    widget.leadingIconPresent,
                    false,
                  ))
                    widget.leadingIcon!,
                  Expanded(
                    flex: 1,
                    child: TextFormField(
                      controller: _model.inputTextController,
                      focusNode: _model.inputFocusNode,
                      obscureText: false,
                      decoration: InputDecoration(
                        isDense: true,
                        hintText: valueOrDefault<String>(
                          widget.hint,
                          'e.g. Vacation Home',
                        ),
                        hintStyle: FlutterFlowTheme.of(context)
                            .bodyMedium
                            .override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyMediumFamily,
                              color: () {
                                if (widget.variant == 'filled') {
                                  return FlutterFlowTheme.of(context).accent3;
                                } else if (widget.variant == 'ghost') {
                                  return FlutterFlowTheme.of(context).accent3;
                                } else {
                                  return FlutterFlowTheme.of(context).accent3;
                                }
                              }(),
                              letterSpacing: 0.0,
                              lineHeight: 1.5,
                              useGoogleFonts: !FlutterFlowTheme.of(context)
                                  .bodyMediumIsCustom,
                            ),
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        focusedErrorBorder: InputBorder.none,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).bodyMediumFamily,
                            color: () {
                              if (widget.variant == 'filled') {
                                return FlutterFlowTheme.of(context).primaryText;
                              } else if (widget.variant == 'ghost') {
                                return FlutterFlowTheme.of(context).primaryText;
                              } else {
                                return FlutterFlowTheme.of(context).primaryText;
                              }
                            }(),
                            letterSpacing: 0.0,
                            lineHeight: 1.5,
                            useGoogleFonts: !FlutterFlowTheme.of(context)
                                .bodyMediumIsCustom,
                          ),
                      validator: _model.inputTextControllerValidator
                          .asValidator(context),
                    ),
                  ),
                  if (valueOrDefault<bool>(
                    widget.trailingIconPresent,
                    false,
                  ))
                    widget.trailingIcon!,
                ],
              ),
            ),
          ),
          if (valueOrDefault<bool>(
            widget.helperPresent,
            false,
          ))
            Text(
              widget.helper,
              style: FlutterFlowTheme.of(context).bodySmall.override(
                    fontFamily: FlutterFlowTheme.of(context).bodySmallFamily,
                    color: widget.error
                        ? FlutterFlowTheme.of(context).error
                        : FlutterFlowTheme.of(context).secondaryText,
                    letterSpacing: 0.0,
                    lineHeight: 1.4,
                    useGoogleFonts:
                        !FlutterFlowTheme.of(context).bodySmallIsCustom,
                  ),
            ),
        ].divide(SizedBox(height: 6.0)),
      ),
    );
  }
}
