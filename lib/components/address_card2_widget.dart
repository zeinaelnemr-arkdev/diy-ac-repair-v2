import '/components/button27_widget.dart';
import '/components/button36_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'address_card2_model.dart';
export 'address_card2_model.dart';

class AddressCard2Widget extends StatefulWidget {
  const AddressCard2Widget({
    super.key,
    String? city,
    String? name,
    String? state,
    String? street,
    String? zip,
    bool? is_default,
    String? type,
  })  : this.city = city ?? 'San Francisco',
        this.name = name ?? 'John Doe',
        this.state = state ?? 'CA',
        this.street = street ?? '123 Neo-Tokyo Blvd',
        this.zip = zip ?? '94105',
        this.is_default = is_default ?? true,
        this.type = type ?? 'home';

  final String city;
  final String name;
  final String state;
  final String street;
  final String zip;
  final bool is_default;
  final String type;

  @override
  State<AddressCard2Widget> createState() => _AddressCard2WidgetState();
}

class _AddressCard2WidgetState extends State<AddressCard2Widget> {
  late AddressCard2Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddressCard2Model());

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
              color: FlutterFlowTheme.of(context).primary,
              width: 2.0,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(16.0),
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
                            width: 20.0,
                            height: 20.0,
                            child: Stack(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              children: [
                                if (widget.type == 'warehouse' ? false : true)
                                  Icon(
                                    Icons.home_rounded,
                                    color: FlutterFlowTheme.of(context).primary,
                                    size: 20.0,
                                  ),
                              ],
                            ),
                          ),
                          Text(
                            valueOrDefault<String>(
                              widget.type,
                              'home',
                            ),
                            style: FlutterFlowTheme.of(context)
                                .titleMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .titleMediumFamily,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  letterSpacing: 0.0,
                                  lineHeight: 1.3,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .titleMediumIsCustom,
                                ),
                          ),
                        ].divide(SizedBox(width: 8.0)),
                      ),
                      if (valueOrDefault<bool>(
                        widget.is_default,
                        true,
                      ))
                        Container(
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).tertiary,
                            shape: BoxShape.rectangle,
                            border: Border.all(
                              color: FlutterFlowTheme.of(context).primary,
                              width: 1.0,
                            ),
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
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      letterSpacing: 0.0,
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
                          widget.name,
                          'John Doe',
                        ),
                        style: FlutterFlowTheme.of(context).bodyLarge.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyLargeFamily,
                              color: FlutterFlowTheme.of(context).primaryText,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.bold,
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
                              lineHeight: 1.4,
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
                              lineHeight: 1.4,
                              useGoogleFonts: !FlutterFlowTheme.of(context)
                                  .bodyMediumIsCustom,
                            ),
                      ),
                    ].divide(SizedBox(height: 4.0)),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      if (widget.is_default ? false : true)
                        Container(
                          child: wrapWithModel(
                            model: _model.buttonModel,
                            updateCallback: () => safeSetState(() {}),
                            child: Button27Widget(
                              content: 'SET AS DEFAULT',
                              icon_present: false,
                              icon_end_present: false,
                              variant: 'ghost',
                              size: 'small',
                              full_width: false,
                              loading: false,
                              disabled: false,
                            ),
                          ),
                        ),
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
                    ].divide(SizedBox(width: 8.0)),
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
