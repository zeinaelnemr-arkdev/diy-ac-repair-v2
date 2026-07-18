import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'text_field2_model.dart';
export 'text_field2_model.dart';

class TextField2Widget extends StatefulWidget {
  const TextField2Widget({
    super.key,
    bool? label,
    bool? helper,
    String? hint,
    String? value,
    this.leading_icon,
    bool? leading_icon_present,
    this.trailing_icon,
    bool? trailing_icon_present,
    String? variant,
    bool? error,
  })  : this.label = label ?? false,
        this.helper = helper ?? false,
        this.hint = hint ?? '',
        this.value = value ?? '',
        this.leading_icon_present = leading_icon_present ?? false,
        this.trailing_icon_present = trailing_icon_present ?? false,
        this.variant = variant ?? 'ghost',
        this.error = error ?? false;

  final bool label;
  final bool helper;
  final String hint;
  final String value;
  final Widget? leading_icon;
  final bool leading_icon_present;
  final Widget? trailing_icon;
  final bool trailing_icon_present;
  final String variant;
  final bool error;

  @override
  State<TextField2Widget> createState() => _TextField2WidgetState();
}

class _TextField2WidgetState extends State<TextField2Widget> {
  late TextField2Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TextField2Model());

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
          if (widget.label ? true : false)
            Text(
              widget.label.toString(),
              style: FlutterFlowTheme.of(context).labelMedium.override(
                    fontFamily: FlutterFlowTheme.of(context).labelMediumFamily,
                    color: widget.error
                        ? FlutterFlowTheme.of(context).error
                        : FlutterFlowTheme.of(context).primaryText,
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
                    widget.leading_icon_present,
                    false,
                  ))
                    widget.leading_icon!,
                  Expanded(
                    flex: 1,
                    child: TextFormField(
                      controller: _model.inputTextController,
                      focusNode: _model.inputFocusNode,
                      obscureText: false,
                      decoration: InputDecoration(
                        isDense: true,
                        hintText: widget.hint,
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
                    widget.trailing_icon_present,
                    false,
                  ))
                    widget.trailing_icon!,
                ],
              ),
            ),
          ),
          if (widget.helper ? true : false)
            Text(
              widget.helper.toString(),
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
