import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'limit_badge_model.dart';
export 'limit_badge_model.dart';

class LimitBadgeWidget extends StatefulWidget {
  const LimitBadgeWidget({
    super.key,
    String? text,
  }) : this.text = text ?? 'DIRTY AIR FILTER (CHECK/REPLACE BEFORE DIAGNOSIS).';

  final String text;

  @override
  State<LimitBadgeWidget> createState() => _LimitBadgeWidgetState();
}

class _LimitBadgeWidgetState extends State<LimitBadgeWidget> {
  late LimitBadgeModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LimitBadgeModel());

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
      height: 92.27,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        shape: BoxShape.rectangle,
        border: Border.all(
          color: FlutterFlowTheme.of(context).primaryText,
          width: 1.0,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Container(
          child: Wrap(
            spacing: 0.0,
            runSpacing: 0.0,
            alignment: WrapAlignment.start,
            crossAxisAlignment: WrapCrossAlignment.start,
            direction: Axis.horizontal,
            runAlignment: WrapAlignment.start,
            verticalDirection: VerticalDirection.down,
            clipBehavior: Clip.none,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.cancel_outlined,
                    color: FlutterFlowTheme.of(context).error,
                    size: 20.0,
                  ),
                  Expanded(
                    flex: 1,
                    child: Text(
                      valueOrDefault<String>(
                        widget.text,
                        'DIRTY AIR FILTER (CHECK/REPLACE BEFORE DIAGNOSIS).',
                      ),
                      maxLines: 4,
                      style: FlutterFlowTheme.of(context).labelSmall.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).labelSmallFamily,
                            color: FlutterFlowTheme.of(context).primaryText,
                            fontSize: 18.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.bold,
                            lineHeight: 1.2,
                            useGoogleFonts: !FlutterFlowTheme.of(context)
                                .labelSmallIsCustom,
                          ),
                      overflow: TextOverflow.clip,
                    ),
                  ),
                ].divide(SizedBox(width: 16.0)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
