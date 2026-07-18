import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'methodology_item2_model.dart';
export 'methodology_item2_model.dart';

class MethodologyItem2Widget extends StatefulWidget {
  const MethodologyItem2Widget({
    super.key,
    String? description,
    String? title,
  })  : this.description = description ??
            'The vertical foundation of our grid. It represents the rigid constraints of the medium, the technical architecture that supports all visual expression.',
        this.title = title ?? 'WARP';

  final String description;
  final String title;

  @override
  State<MethodologyItem2Widget> createState() => _MethodologyItem2WidgetState();
}

class _MethodologyItem2WidgetState extends State<MethodologyItem2Widget> {
  late MethodologyItem2Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MethodologyItem2Model());

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
      padding: EdgeInsets.all(24.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            valueOrDefault<String>(
              widget.title,
              'WARP',
            ),
            style: FlutterFlowTheme.of(context).titleMedium.override(
                  fontFamily: FlutterFlowTheme.of(context).titleMediumFamily,
                  color: FlutterFlowTheme.of(context).primaryText,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.bold,
                  lineHeight: 1.2,
                  useGoogleFonts:
                      !FlutterFlowTheme.of(context).titleMediumIsCustom,
                ),
          ),
          Text(
            valueOrDefault<String>(
              widget.description,
              'The vertical foundation of our grid. It represents the rigid constraints of the medium, the technical architecture that supports all visual expression.',
            ),
            style: FlutterFlowTheme.of(context).bodySmall.override(
                  fontFamily: FlutterFlowTheme.of(context).bodySmallFamily,
                  color: FlutterFlowTheme.of(context).secondaryText,
                  letterSpacing: 0.0,
                  lineHeight: 1.6,
                  useGoogleFonts:
                      !FlutterFlowTheme.of(context).bodySmallIsCustom,
                ),
          ),
        ].divide(SizedBox(height: 16.0)),
      ),
    );
  }
}
