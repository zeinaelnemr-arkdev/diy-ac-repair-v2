import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'installation_kit_card_model.dart';
export 'installation_kit_card_model.dart';

class InstallationKitCardWidget extends StatefulWidget {
  const InstallationKitCardWidget({
    super.key,
    String? desc,
    String? name,
    String? price,
    bool? selected,
  })  : this.desc = desc ??
            'Includes insulated pliers, terminals, and mounting straps.',
        this.name = name ?? 'Universal Capacitor Hardware Kit',
        this.price = price ?? '12.99',
        this.selected = selected ?? true;

  final String desc;
  final String name;
  final String price;
  final bool selected;

  @override
  State<InstallationKitCardWidget> createState() =>
      _InstallationKitCardWidgetState();
}

class _InstallationKitCardWidgetState extends State<InstallationKitCardWidget> {
  late InstallationKitCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => InstallationKitCardModel());

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
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
      child: Container(),
    );
  }
}
