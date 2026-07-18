import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'text_field21_model.dart';
export 'text_field21_model.dart';

class TextField21Widget extends StatefulWidget {
  const TextField21Widget({
    super.key,
    String? label,
    bool? labelPresent,
    String? helper,
    bool? helperPresent,
    String? hint,
    String? value,
    String? onChange,
    String? onSubmit,
    this.leadingIcon,
    bool? leadingIconPresent,
    this.trailingIcon,
    bool? trailingIconPresent,
    String? variant,
    bool? error,
  })  : this.label = label ?? 'EMAIL ADDRESS',
        this.labelPresent = labelPresent ?? true,
        this.helper = helper ?? '',
        this.helperPresent = helperPresent ?? false,
        this.hint = hint ?? 'e.g. name@example.com',
        this.value = value ?? '',
        this.onChange = onChange ?? '',
        this.onSubmit = onSubmit ?? '',
        this.leadingIconPresent = leadingIconPresent ?? true,
        this.trailingIconPresent = trailingIconPresent ?? false,
        this.variant = variant ?? 'outlined',
        this.error = error ?? false;

  final String label;
  final bool labelPresent;
  final String helper;
  final bool helperPresent;
  final String hint;
  final String value;
  final String onChange;
  final String onSubmit;
  final Widget? leadingIcon;
  final bool leadingIconPresent;
  final Widget? trailingIcon;
  final bool trailingIconPresent;
  final String variant;
  final bool error;

  @override
  State<TextField21Widget> createState() => _TextField21WidgetState();
}

class _TextField21WidgetState extends State<TextField21Widget> {
  late TextField21Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TextField21Model());

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
                'EMAIL ADDRESS',
              ),
              style: FlutterFlowTheme.of(context).labelMedium.override(
                    fontFamily: FlutterFlowTheme.of(context).labelMediumFamily,
                    color: valueOrDefault<Color>(
                      valueOrDefault<bool>(
                        widget.error,
                        false,
                      )
                          ? FlutterFlowTheme.of(context).error
                          : FlutterFlowTheme.of(context).primaryText,
                      FlutterFlowTheme.of(context).primaryText,
                    ),
                    letterSpacing: 0.0,
                    lineHeight: 1.2,
                    useGoogleFonts:
                        !FlutterFlowTheme.of(context).labelMediumIsCustom,
                  ),
            ),
          Container(
            height: 40.0,
            decoration: BoxDecoration(
              color: valueOrDefault<Color>(
                () {
                  if (valueOrDefault<String>(
                        widget.variant,
                        'outlined',
                      ) ==
                      'filled') {
                    return FlutterFlowTheme.of(context).secondaryBackground;
                  } else if (valueOrDefault<String>(
                        widget.variant,
                        'outlined',
                      ) ==
                      'ghost') {
                    return Colors.transparent;
                  } else {
                    return Colors.transparent;
                  }
                }(),
                Colors.transparent,
              ),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(valueOrDefault<double>(
                  () {
                    if (valueOrDefault<String>(
                          widget.variant,
                          'outlined',
                        ) ==
                        'filled') {
                      return 0.0;
                    } else if (valueOrDefault<String>(
                          widget.variant,
                          'outlined',
                        ) ==
                        'ghost') {
                      return 0.0;
                    } else {
                      return 0.0;
                    }
                  }(),
                  0.0,
                )),
                topRight: Radius.circular(valueOrDefault<double>(
                  () {
                    if (valueOrDefault<String>(
                          widget.variant,
                          'outlined',
                        ) ==
                        'filled') {
                      return 0.0;
                    } else if (valueOrDefault<String>(
                          widget.variant,
                          'outlined',
                        ) ==
                        'ghost') {
                      return 0.0;
                    } else {
                      return 0.0;
                    }
                  }(),
                  0.0,
                )),
                bottomLeft: Radius.circular(valueOrDefault<double>(
                  () {
                    if (valueOrDefault<String>(
                          widget.variant,
                          'outlined',
                        ) ==
                        'filled') {
                      return 0.0;
                    } else if (valueOrDefault<String>(
                          widget.variant,
                          'outlined',
                        ) ==
                        'ghost') {
                      return 0.0;
                    } else {
                      return 0.0;
                    }
                  }(),
                  0.0,
                )),
                bottomRight: Radius.circular(valueOrDefault<double>(
                  () {
                    if (valueOrDefault<String>(
                          widget.variant,
                          'outlined',
                        ) ==
                        'filled') {
                      return 0.0;
                    } else if (valueOrDefault<String>(
                          widget.variant,
                          'outlined',
                        ) ==
                        'ghost') {
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
                color: valueOrDefault<Color>(
                  () {
                    if (valueOrDefault<bool>(
                      widget.error,
                      false,
                    )) {
                      return FlutterFlowTheme.of(context).error;
                    } else if (valueOrDefault<String>(
                          widget.variant,
                          'outlined',
                        ) ==
                        'filled') {
                      return Colors.transparent;
                    } else if (valueOrDefault<String>(
                          widget.variant,
                          'outlined',
                        ) ==
                        'ghost') {
                      return Colors.transparent;
                    } else {
                      return FlutterFlowTheme.of(context).alternate;
                    }
                  }(),
                  FlutterFlowTheme.of(context).alternate,
                ),
                width: valueOrDefault<double>(
                  () {
                    if (valueOrDefault<bool>(
                      widget.error,
                      false,
                    )) {
                      return 1.0;
                    } else if (valueOrDefault<String>(
                          widget.variant,
                          'outlined',
                        ) ==
                        'filled') {
                      return 1.0;
                    } else if (valueOrDefault<String>(
                          widget.variant,
                          'outlined',
                        ) ==
                        'ghost') {
                      return 0.0;
                    } else {
                      return 1.0;
                    }
                  }(),
                  1.0,
                ),
              ),
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(
                  valueOrDefault<double>(
                    () {
                      if (valueOrDefault<String>(
                            widget.variant,
                            'outlined',
                          ) ==
                          'filled') {
                        return 8.0;
                      } else if (valueOrDefault<String>(
                            widget.variant,
                            'outlined',
                          ) ==
                          'ghost') {
                        return 8.0;
                      } else {
                        return 8.0;
                      }
                    }(),
                    8.0,
                  ),
                  valueOrDefault<double>(
                    () {
                      if (valueOrDefault<String>(
                            widget.variant,
                            'outlined',
                          ) ==
                          'filled') {
                        return 8.0;
                      } else if (valueOrDefault<String>(
                            widget.variant,
                            'outlined',
                          ) ==
                          'ghost') {
                        return 8.0;
                      } else {
                        return 8.0;
                      }
                    }(),
                    8.0,
                  ),
                  valueOrDefault<double>(
                    () {
                      if (valueOrDefault<String>(
                            widget.variant,
                            'outlined',
                          ) ==
                          'filled') {
                        return 8.0;
                      } else if (valueOrDefault<String>(
                            widget.variant,
                            'outlined',
                          ) ==
                          'ghost') {
                        return 8.0;
                      } else {
                        return 8.0;
                      }
                    }(),
                    8.0,
                  ),
                  valueOrDefault<double>(
                    () {
                      if (valueOrDefault<String>(
                            widget.variant,
                            'outlined',
                          ) ==
                          'filled') {
                        return 8.0;
                      } else if (valueOrDefault<String>(
                            widget.variant,
                            'outlined',
                          ) ==
                          'ghost') {
                        return 8.0;
                      } else {
                        return 8.0;
                      }
                    }(),
                    8.0,
                  )),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  if (valueOrDefault<bool>(
                    widget.leadingIconPresent,
                    true,
                  ))
                    widget.leadingIcon!,
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                      child: TextFormField(
                        controller: _model.inputTextController,
                        focusNode: _model.inputFocusNode,
                        obscureText: false,
                        decoration: InputDecoration(
                          isDense: true,
                          hintText: valueOrDefault<String>(
                            widget.hint,
                            'e.g. name@example.com',
                          ),
                          hintStyle: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyMediumFamily,
                                color: valueOrDefault<Color>(
                                  () {
                                    if (valueOrDefault<String>(
                                          widget.variant,
                                          'outlined',
                                        ) ==
                                        'filled') {
                                      return FlutterFlowTheme.of(context)
                                          .accent3;
                                    } else if (valueOrDefault<String>(
                                          widget.variant,
                                          'outlined',
                                        ) ==
                                        'ghost') {
                                      return FlutterFlowTheme.of(context)
                                          .accent3;
                                    } else {
                                      return FlutterFlowTheme.of(context)
                                          .accent3;
                                    }
                                  }(),
                                  FlutterFlowTheme.of(context).accent3,
                                ),
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
                              color: valueOrDefault<Color>(
                                () {
                                  if (valueOrDefault<String>(
                                        widget.variant,
                                        'outlined',
                                      ) ==
                                      'filled') {
                                    return FlutterFlowTheme.of(context)
                                        .primaryText;
                                  } else if (valueOrDefault<String>(
                                        widget.variant,
                                        'outlined',
                                      ) ==
                                      'ghost') {
                                    return FlutterFlowTheme.of(context)
                                        .primaryText;
                                  } else {
                                    return FlutterFlowTheme.of(context)
                                        .primaryText;
                                  }
                                }(),
                                FlutterFlowTheme.of(context).primaryText,
                              ),
                              letterSpacing: 0.0,
                              lineHeight: 1.5,
                              useGoogleFonts: !FlutterFlowTheme.of(context)
                                  .bodyMediumIsCustom,
                            ),
                        validator: _model.inputTextControllerValidator
                            .asValidator(context),
                      ),
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
                    color: valueOrDefault<Color>(
                      valueOrDefault<bool>(
                        widget.error,
                        false,
                      )
                          ? FlutterFlowTheme.of(context).error
                          : FlutterFlowTheme.of(context).secondaryText,
                      FlutterFlowTheme.of(context).secondaryText,
                    ),
                    letterSpacing: 0.0,
                    lineHeight: 1.5,
                    useGoogleFonts:
                        !FlutterFlowTheme.of(context).bodySmallIsCustom,
                  ),
            ),
        ].divide(SizedBox(height: 6.0)),
      ),
    );
  }
}
