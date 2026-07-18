import '/components/text_field8_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'dimension_input2_model.dart';
export 'dimension_input2_model.dart';

class DimensionInput2Widget extends StatefulWidget {
  const DimensionInput2Widget({
    super.key,
    String? label,
  }) : this.label = label ?? 'L';

  final String label;

  @override
  State<DimensionInput2Widget> createState() => _DimensionInput2WidgetState();
}

class _DimensionInput2WidgetState extends State<DimensionInput2Widget> {
  late DimensionInput2Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DimensionInput2Model());

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
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          '${widget.label} :',
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
          width: 48.0,
          height: 48.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            shape: BoxShape.rectangle,
            border: Border.all(
              color: FlutterFlowTheme.of(context).primaryText,
              width: 2.0,
            ),
          ),
          child: wrapWithModel(
            model: _model.textFieldModel,
            updateCallback: () => safeSetState(() {}),
            child: TextField8Widget(
              label: false,
              helper: false,
              hint: '',
              value: '',
              leading_icon_present: false,
              trailing_icon_present: false,
              variant: 'ghost',
              error: false,
            ),
          ),
        ),
      ].divide(SizedBox(width: 4.0)),
    );
  }
}
