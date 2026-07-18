import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'bom_item2_model.dart';
export 'bom_item2_model.dart';

class BomItem2Widget extends StatefulWidget {
  const BomItem2Widget({
    super.key,
    this.icon,
    String? price,
    String? subtitle,
    String? title,
  })  : this.price = price ?? '\$32.40',
        this.subtitle = subtitle ?? '45+5 uF / 440V / ROUND',
        this.title = title ?? 'RUN CAPACITOR';

  final Widget? icon;
  final String price;
  final String subtitle;
  final String title;

  @override
  State<BomItem2Widget> createState() => _BomItem2WidgetState();
}

class _BomItem2WidgetState extends State<BomItem2Widget> {
  late BomItem2Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BomItem2Model());

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
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 16.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 48.0,
            height: 48.0,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              border: Border.all(
                color: FlutterFlowTheme.of(context).primaryText,
                width: 1.0,
              ),
            ),
            alignment: AlignmentDirectional(0.0, 0.0),
            child: widget.icon!,
          ),
          Expanded(
            flex: 1,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  valueOrDefault<String>(
                    widget.title,
                    'RUN CAPACITOR',
                  ),
                  style: FlutterFlowTheme.of(context).labelLarge.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).labelLargeFamily,
                        color: FlutterFlowTheme.of(context).primaryText,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.bold,
                        lineHeight: 1.2,
                        useGoogleFonts:
                            !FlutterFlowTheme.of(context).labelLargeIsCustom,
                      ),
                ),
                Text(
                  valueOrDefault<String>(
                    widget.subtitle,
                    '45+5 uF / 440V / ROUND',
                  ),
                  style: FlutterFlowTheme.of(context).labelSmall.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).labelSmallFamily,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        letterSpacing: 0.0,
                        lineHeight: 1.2,
                        useGoogleFonts:
                            !FlutterFlowTheme.of(context).labelSmallIsCustom,
                      ),
                ),
              ].divide(SizedBox(height: 4.0)),
            ),
          ),
          Text(
            valueOrDefault<String>(
              widget.price,
              '\$32.40',
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
        ].divide(SizedBox(width: 16.0)),
      ),
    );
  }
}
