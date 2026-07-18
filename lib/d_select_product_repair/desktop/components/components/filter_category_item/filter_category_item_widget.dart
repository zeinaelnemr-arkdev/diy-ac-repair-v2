import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'filter_category_item_model.dart';
export 'filter_category_item_model.dart';

class FilterCategoryItemWidget extends StatefulWidget {
  const FilterCategoryItemWidget({
    super.key,
    this.icon,
    String? label,
  }) : this.label = label ?? 'MOTOR';

  final Widget? icon;
  final String label;

  @override
  State<FilterCategoryItemWidget> createState() =>
      _FilterCategoryItemWidgetState();
}

class _FilterCategoryItemWidgetState extends State<FilterCategoryItemWidget> {
  late FilterCategoryItemModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FilterCategoryItemModel());

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
        borderRadius: BorderRadius.circular(0.0),
        shape: BoxShape.rectangle,
      ),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Container(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              widget.icon!,
              Text(
                valueOrDefault<String>(
                  widget.label,
                  'MOTOR',
                ),
                style: FlutterFlowTheme.of(context).titleMedium.override(
                      fontFamily:
                          FlutterFlowTheme.of(context).titleMediumFamily,
                      color: FlutterFlowTheme.of(context).primaryText,
                      fontSize: 16.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.bold,
                      lineHeight: 1.3,
                      useGoogleFonts:
                          !FlutterFlowTheme.of(context).titleMediumIsCustom,
                    ),
              ),
            ].divide(SizedBox(width: 24.0)),
          ),
        ),
      ),
    );
  }
}
