import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'form_label2_model.dart';
export 'form_label2_model.dart';

class FormLabel2Widget extends StatefulWidget {
  const FormLabel2Widget({
    super.key,
    String? label,
    this.isRequired,
  }) : this.label = label ?? 'Full Name';

  final String label;
  final bool? isRequired;

  @override
  State<FormLabel2Widget> createState() => _FormLabel2WidgetState();
}

class _FormLabel2WidgetState extends State<FormLabel2Widget> {
  late FormLabel2Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FormLabel2Model());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 4.0),
      child: Container(
        child: RichText(
          textScaler: MediaQuery.of(context).textScaler,
          text: TextSpan(
            children: [
              TextSpan(
                text: valueOrDefault<String>(
                  widget.label,
                  'Full Name',
                ),
                style: FlutterFlowTheme.of(context).labelLarge.override(
                      fontFamily: FlutterFlowTheme.of(context).labelLargeFamily,
                      color: FlutterFlowTheme.of(context).primaryText,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w600,
                      lineHeight: 1.3,
                      useGoogleFonts:
                          !FlutterFlowTheme.of(context).labelLargeIsCustom,
                    ),
              ),
              TextSpan(
                text: widget.isRequired! ? ' *' : '  ',
                style: TextStyle(
                  color: widget.isRequired!
                      ? FlutterFlowTheme.of(context).redColor
                      : FlutterFlowTheme.of(context).primaryText,
                  fontWeight: FontWeight.w600,
                  fontSize: 14.0,
                ),
              )
            ],
            style: FlutterFlowTheme.of(context).labelLarge.override(
                  fontFamily: FlutterFlowTheme.of(context).labelLargeFamily,
                  color: FlutterFlowTheme.of(context).primaryText,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.w600,
                  lineHeight: 1.3,
                  useGoogleFonts:
                      !FlutterFlowTheme.of(context).labelLargeIsCustom,
                ),
          ),
        ),
      ),
    );
  }
}
