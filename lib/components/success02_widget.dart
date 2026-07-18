import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'success02_model.dart';
export 'success02_model.dart';

class Success02Widget extends StatefulWidget {
  const Success02Widget({super.key});

  @override
  State<Success02Widget> createState() => _Success02WidgetState();
}

class _Success02WidgetState extends State<Success02Widget> {
  late Success02Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Success02Model());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
