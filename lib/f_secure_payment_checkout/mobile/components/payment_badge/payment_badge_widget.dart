import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'payment_badge_model.dart';
export 'payment_badge_model.dart';

class PaymentBadgeWidget extends StatefulWidget {
  const PaymentBadgeWidget({
    super.key,
    String? name,
  }) : this.name = name ?? 'VISA';

  final String name;

  @override
  State<PaymentBadgeWidget> createState() => _PaymentBadgeWidgetState();
}

class _PaymentBadgeWidgetState extends State<PaymentBadgeWidget> {
  late PaymentBadgeModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PaymentBadgeModel());

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
        borderRadius: BorderRadius.circular(2.0),
        shape: BoxShape.rectangle,
        border: Border.all(
          color: FlutterFlowTheme.of(context).alternate,
          width: 1.0,
        ),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(8.0, 4.0, 8.0, 4.0),
        child: Container(
          child: Text(
            valueOrDefault<String>(
              widget.name,
              'VISA',
            ),
            style: FlutterFlowTheme.of(context).labelSmall.override(
                  fontFamily: FlutterFlowTheme.of(context).labelSmallFamily,
                  color: FlutterFlowTheme.of(context).secondaryText,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.bold,
                  lineHeight: 1.2,
                  useGoogleFonts:
                      !FlutterFlowTheme.of(context).labelSmallIsCustom,
                ),
          ),
        ),
      ),
    );
  }
}
