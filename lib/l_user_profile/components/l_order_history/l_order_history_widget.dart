import '/flutter_flow/flutter_flow_util.dart';
import '/l_user_profile/l_orderhistory_02/l_orderhistory02_widget.dart';
import 'package:flutter/material.dart';
import 'l_order_history_model.dart';
export 'l_order_history_model.dart';

class LOrderHistoryWidget extends StatefulWidget {
  const LOrderHistoryWidget({super.key});

  @override
  State<LOrderHistoryWidget> createState() => _LOrderHistoryWidgetState();
}

class _LOrderHistoryWidgetState extends State<LOrderHistoryWidget> {
  late LOrderHistoryModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LOrderHistoryModel());

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
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 1,
          child: Container(
            decoration: BoxDecoration(),
            child: wrapWithModel(
              model: _model.lOrderhistory02Model,
              updateCallback: () => safeSetState(() {}),
              child: LOrderhistory02Widget(),
            ),
          ),
        ),
      ],
    );
  }
}
