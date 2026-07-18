import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'filter_item_model.dart';
export 'filter_item_model.dart';

class FilterItemWidget extends StatefulWidget {
  const FilterItemWidget({
    super.key,
    this.icon,
    String? label,
    Color? bg,
    double? radius,
    this.active,
  })  : this.label = label ?? 'Brand',
        this.bg = bg ?? Colors.black,
        this.radius = radius ?? 0.0;

  final Widget? icon;
  final String label;
  final Color bg;
  final double radius;
  final bool? active;

  @override
  State<FilterItemWidget> createState() => _FilterItemWidgetState();
}

class _FilterItemWidgetState extends State<FilterItemWidget> {
  late FilterItemModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FilterItemModel());

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
      decoration: BoxDecoration(
        color: widget.active!
            ? FlutterFlowTheme.of(context).onSurface
            : FlutterFlowTheme.of(context).secondaryBackground,
        shape: BoxShape.rectangle,
        border: Border.all(
          color: FlutterFlowTheme.of(context).alternate,
          width: 1.0,
        ),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 16.0, 8.0),
        child: Container(
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 1,
                child: Text(
                  valueOrDefault<String>(
                    widget.label,
                    'Brand',
                  ),
                  maxLines: 1,
                  style: FlutterFlowTheme.of(context).labelSmall.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).labelSmallFamily,
                        color: widget.active!
                            ? FlutterFlowTheme.of(context).primaryBackground
                            : FlutterFlowTheme.of(context).primaryText,
                        letterSpacing: 0.0,
                        lineHeight: 1.0,
                        useGoogleFonts:
                            !FlutterFlowTheme.of(context).labelSmallIsCustom,
                      ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ].divide(SizedBox(width: 8.0)),
          ),
        ),
      ),
    );
  }
}
