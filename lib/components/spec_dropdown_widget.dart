import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'spec_dropdown_model.dart';
export 'spec_dropdown_model.dart';

class SpecDropdownWidget extends StatefulWidget {
  const SpecDropdownWidget({
    super.key,
    String? label,
    String? options,
    double? value,
    double? width,
  })  : this.label = label ?? 'Rated Volt:',
        this.options = options ?? '208/23,460,575',
        this.value = value ?? 0.0,
        this.width = width ?? 0.0;

  final String label;
  final String options;
  final double value;
  final double width;

  @override
  State<SpecDropdownWidget> createState() => _SpecDropdownWidgetState();
}

class _SpecDropdownWidgetState extends State<SpecDropdownWidget> {
  late SpecDropdownModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SpecDropdownModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          valueOrDefault<String>(
            widget.label,
            'Rated Volt:',
          ),
          style: FlutterFlowTheme.of(context).labelLarge.override(
                fontFamily: FlutterFlowTheme.of(context).labelLargeFamily,
                color: FlutterFlowTheme.of(context).primaryText,
                letterSpacing: 0.0,
                fontWeight: FontWeight.bold,
                lineHeight: 1.2,
                useGoogleFonts:
                    !FlutterFlowTheme.of(context).labelLargeIsCustom,
              ),
        ),
        Container(
          width: double.infinity,
          height: 48.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            shape: BoxShape.rectangle,
            border: Border.all(
              color: FlutterFlowTheme.of(context).primaryText,
              width: 2.0,
            ),
          ),
        ),
      ].divide(SizedBox(height: 4.0)),
    );
  }
}
