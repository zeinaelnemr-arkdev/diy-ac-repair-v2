import '/b_screen_components/s01_navigatio_bar/s01_navigatio_bar_widget.dart';
import '/b_screen_components/s08_company_investors/s08_company_investors_widget.dart';
import '/b_screen_components/s12_footer/s12_footer_widget.dart';
import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/e_review_your_order/desktop/components/review_your_order_desktop/review_your_order_desktop_widget.dart';
import '/e_review_your_order/mobile/e_review_your_order_mobile/e_review_your_order_mobile_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'e_review_your_order_model.dart';
export 'e_review_your_order_model.dart';

class EReviewYourOrderWidget extends StatefulWidget {
  const EReviewYourOrderWidget({super.key});

  static String routeName = 'E-Review_Your_Order';
  static String routePath = '/cart';

  @override
  State<EReviewYourOrderWidget> createState() => _EReviewYourOrderWidgetState();
}

class _EReviewYourOrderWidgetState extends State<EReviewYourOrderWidget> {
  late EReviewYourOrderModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EReviewYourOrderModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (!(_model.tools.isNotEmpty)) {
        _model.toolACT = await queryItemsRecordOnce(
          queryBuilder: (itemsRecord) => itemsRecord.where(
            'hasMiscId',
            isEqualTo: true,
          ),
        );
        _model.tools = _model.toolACT!
            .where((e) => e.qtyOnHand > 0)
            .toList()
            .toList()
            .cast<ItemsRecord>();
        safeSetState(() {});
      }
      _model.shipping = await querySettingsRecordOnce(
        queryBuilder: (settingsRecord) => settingsRecord.where(
          'key',
          isEqualTo: SettingKeys.shipping.name,
        ),
        singleRecord: true,
      ).then((s) => s.firstOrNull);
      _model.tax = await querySettingsRecordOnce(
        queryBuilder: (settingsRecord) => settingsRecord.where(
          'key',
          isEqualTo: SettingKeys.tax.name,
        ),
        singleRecord: true,
      ).then((s) => s.firstOrNull);
      await actions.calculateCartTotal(
        _model.shipping?.value,
        _model.tax?.value,
      );
      safeSetState(() {});
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Align(
                  alignment: AlignmentDirectional(0.0, -1.0),
                  child: Container(
                    width: double.infinity,
                    constraints: BoxConstraints(
                      maxWidth: 2000.0,
                    ),
                    decoration: BoxDecoration(),
                    child: Align(
                      alignment: AlignmentDirectional(0.0, -1.0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 0.96,
                          decoration: BoxDecoration(),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: FlutterFlowTheme.of(context).primary,
                                    width: 1.0,
                                  ),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    wrapWithModel(
                                      model: _model.s01NavigatioBarModel,
                                      updateCallback: () => safeSetState(() {}),
                                      child: S01NavigatioBarWidget(),
                                    ),
                                    Divider(
                                      height: 1.0,
                                      thickness: 1.0,
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                    ),
                                    Divider(
                                      height: 1.0,
                                      thickness: 1.0,
                                      color:
                                          FlutterFlowTheme.of(context).tertiary,
                                    ),
                                    if (responsiveVisibility(
                                      context: context,
                                      phone: false,
                                      tablet: false,
                                    ))
                                      wrapWithModel(
                                        model:
                                            _model.reviewYourOrderDesktopModel,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        updateOnChange: true,
                                        child: ReviewYourOrderDesktopWidget(
                                          toolsCS: _model.tools,
                                        ),
                                      ),
                                    Divider(
                                      height: 1.0,
                                      thickness: 1.0,
                                      color:
                                          FlutterFlowTheme.of(context).tertiary,
                                    ),
                                    if (responsiveVisibility(
                                      context: context,
                                      tabletLandscape: false,
                                      desktop: false,
                                    ))
                                      wrapWithModel(
                                        model:
                                            _model.eReviewYourOrderMobileModel,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: EReviewYourOrderMobileWidget(
                                          toolsC: _model.tools,
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                              if (responsiveVisibility(
                                context: context,
                                phone: false,
                                tablet: false,
                              ))
                                wrapWithModel(
                                  model: _model.s08CompanyInvestorsModel,
                                  updateCallback: () => safeSetState(() {}),
                                  child: S08CompanyInvestorsWidget(),
                                ),
                              if (responsiveVisibility(
                                context: context,
                              ))
                                wrapWithModel(
                                  model: _model.s12FooterModel,
                                  updateCallback: () => safeSetState(() {}),
                                  child: S12FooterWidget(),
                                ),
                            ].divide(SizedBox(
                                height: valueOrDefault<double>(
                              MediaQuery.sizeOf(context).width <
                                      kBreakpointSmall
                                  ? 25.0
                                  : 50.0,
                              50.0,
                            ))),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ]
                  .addToStart(SizedBox(
                      height: valueOrDefault<double>(
                    MediaQuery.sizeOf(context).width < kBreakpointSmall
                        ? 32.0
                        : 64.0,
                    64.0,
                  )))
                  .addToEnd(SizedBox(
                      height: valueOrDefault<double>(
                    MediaQuery.sizeOf(context).width < kBreakpointSmall
                        ? 32.0
                        : 64.0,
                    64.0,
                  ))),
            ),
          ),
        ),
      ),
    );
  }
}
