import '/components/button36_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'address_card3_model.dart';
export 'address_card3_model.dart';

class AddressCard3Widget extends StatefulWidget {
  const AddressCard3Widget({
    super.key,
    String? city,
    String? label,
    String? recipient,
    String? state,
    String? street,
    String? zip,
    bool? isDefault,
  })  : this.city = city ?? 'San Francisco',
        this.label = label ?? 'Home',
        this.recipient = recipient ?? 'John Doe',
        this.state = state ?? 'CA',
        this.street = street ?? '123 Neo-Tokyo Blvd',
        this.zip = zip ?? '94105',
        this.isDefault = isDefault ?? true;

  final String city;
  final String label;
  final String recipient;
  final String state;
  final String street;
  final String zip;
  final bool isDefault;

  @override
  State<AddressCard3Widget> createState() => _AddressCard3WidgetState();
}

class _AddressCard3WidgetState extends State<AddressCard3Widget> {
  late AddressCard3Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddressCard3Model());

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
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
      child: Container(
        child: Container(
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            shape: BoxShape.rectangle,
            border: Border.all(
              color: FlutterFlowTheme.of(context).primaryText,
              width: 2.0,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(24.0),
            child: Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 18.0,
                            height: 18.0,
                            child: Stack(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              children: [
                                if (widget.isDefault ? true : false)
                                  Icon(
                                    Icons.push_pin_rounded,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    size: 24.0,
                                  ),
                                if (widget.isDefault ? false : true)
                                  Icon(
                                    Icons.location_on_rounded,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    size: 18.0,
                                  ),
                              ],
                            ),
                          ),
                          Text(
                            valueOrDefault<String>(
                              widget.label,
                              'Home',
                            ),
                            style: FlutterFlowTheme.of(context)
                                .titleMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .titleMediumFamily,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                  lineHeight: 1.2,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .titleMediumIsCustom,
                                ),
                          ),
                        ].divide(SizedBox(width: 8.0)),
                      ),
                      if (valueOrDefault<bool>(
                        widget.isDefault,
                        true,
                      ))
                        Container(
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).primary,
                            borderRadius: BorderRadius.circular(2.0),
                            shape: BoxShape.rectangle,
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                8.0, 4.0, 8.0, 4.0),
                            child: Container(
                              child: Text(
                                'DEFAULT',
                                style: FlutterFlowTheme.of(context)
                                    .labelSmall
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .labelSmallFamily,
                                      color: Colors.white,
                                      fontSize: 20.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                      lineHeight: 1.2,
                                      useGoogleFonts:
                                          !FlutterFlowTheme.of(context)
                                              .labelSmallIsCustom,
                                    ),
                              ),
                            ),
                          ),
                        ),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        valueOrDefault<String>(
                          widget.recipient,
                          'John Doe',
                        ),
                        style: FlutterFlowTheme.of(context).bodyLarge.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyLargeFamily,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w600,
                              lineHeight: 1.5,
                              useGoogleFonts: !FlutterFlowTheme.of(context)
                                  .bodyLargeIsCustom,
                            ),
                      ),
                      Text(
                        valueOrDefault<String>(
                          widget.street,
                          '123 Neo-Tokyo Blvd',
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyMediumFamily,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              letterSpacing: 0.0,
                              lineHeight: 1.5,
                              useGoogleFonts: !FlutterFlowTheme.of(context)
                                  .bodyMediumIsCustom,
                            ),
                      ),
                      Text(
                        '${widget.city}, ${widget.state} ${widget.zip}',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyMediumFamily,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              letterSpacing: 0.0,
                              lineHeight: 1.5,
                              useGoogleFonts: !FlutterFlowTheme.of(context)
                                  .bodyMediumIsCustom,
                            ),
                      ),
                    ].divide(SizedBox(height: 4.0)),
                  ),
                  Divider(
                    height: 16.0,
                    thickness: 1.0,
                    indent: 0.0,
                    endIndent: 0.0,
                    color: FlutterFlowTheme.of(context).alternate,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      wrapWithModel(
                        model: _model.buttonModel1,
                        updateCallback: () => safeSetState(() {}),
                        child: Button36Widget(
                          content: 'Edit',
                          icon: Icon(
                            Icons.edit_rounded,
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: 16.0,
                          ),
                          iconPresent: true,
                          iconEndPresent: false,
                          variant: 'outline',
                          size: 'small',
                          fullWidth: false,
                          loading: false,
                          disabled: false,
                        ),
                      ),
                      wrapWithModel(
                        model: _model.buttonModel2,
                        updateCallback: () => safeSetState(() {}),
                        child: Button36Widget(
                          content: 'Delete',
                          icon: Icon(
                            Icons.delete_outline_rounded,
                            color: Colors.white,
                            size: 16.0,
                          ),
                          iconPresent: true,
                          iconEndPresent: false,
                          variant: 'destructive',
                          size: 'small',
                          fullWidth: false,
                          loading: false,
                          disabled: false,
                        ),
                      ),
                      Spacer(),
                      if (widget.isDefault ? false : true)
                        wrapWithModel(
                          model: _model.buttonModel3,
                          updateCallback: () => safeSetState(() {}),
                          child: Button36Widget(
                            content: 'Set as Default',
                            iconPresent: false,
                            iconEndPresent: false,
                            variant: 'ghost',
                            size: 'small',
                            fullWidth: false,
                            loading: false,
                            disabled: false,
                          ),
                        ),
                    ].divide(SizedBox(width: 16.0)),
                  ),
                ].divide(SizedBox(height: 16.0)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
