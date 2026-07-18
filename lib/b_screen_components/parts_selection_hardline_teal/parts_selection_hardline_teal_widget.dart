import '/app_state.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/schema/structs/index.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/flutter_flow_util.dart';
import '/a_pages/a_main_pages/e_review_your_order/e_review_your_order_widget.dart';
import '/a_pages/a_main_pages/i_about/i_about_widget.dart';
import '/a_pages/a_main_pages/l_user_profile/g_track_and_find_my_order/g_track_and_find_my_order_widget.dart';
import '/a_pages/a_main_pages/b_diagnosis/b_diagnosis_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// Real screen: "Select Motor / Contactor / Capacitor" (route `/products`,
/// FlutterFlow name `D-Select_Product_Repair`). Same Firestore-backed data
/// and cart behavior as the live app, restyled in the Hardline Teal system.
///
/// Data flow is unchanged from the live app: this widget calls the exact
/// same custom actions (`filterMotorItems` / `filterContactorItems` /
/// `filterCapacitorItems`) that the FlutterFlow version calls, against the
/// same `MotorSpec` / `ContactorSpec` / `CapacitorSpec` / `Items` collections
/// in the `diy-ac-44e10` Firestore project. Add-to-cart writes to the same
/// `FFAppState().Cart.cartItems` list the rest of the app already reads.
class HardlineTeal {
  static const surface = Color(0xFFF9F9F9);
  static const primary = Color(0xFF000000);
  static const onPrimary = Color(0xFFFFFFFF);
  static const teal = Color(0xFF00B5AD);
  static const error = Color(0xFFBA1A1A);
  static const onSurfaceVariant = Color(0xFF4C4546);
  static const surfaceContainer = Color(0xFFEEEEEE);
  static const outline = Color(0xFF7E7576);
}

class HardlineBreakpoints {
  static const mobileMax = 600.0;
  static const tabletMax = 1024.0;
}

enum _Tier { mobile, tablet, desktop }

TextStyle _spaceGrotesk({
  required double fontSize,
  required FontWeight fontWeight,
  Color color = HardlineTeal.primary,
  double? letterSpacing,
  double? height,
}) =>
    GoogleFonts.spaceGrotesk(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
      letterSpacing: letterSpacing,
      height: height,
    );

class PartsSelectionHardlineTealWidget extends StatefulWidget {
  const PartsSelectionHardlineTealWidget({super.key, this.part = Parts.MOTOR});

  static String routeName = 'D-Select_Product_Repair';
  static String routePath = '/products';

  final Parts part;

  @override
  State<PartsSelectionHardlineTealWidget> createState() =>
      _PartsSelectionHardlineTealWidgetState();
}

class _PartsSelectionHardlineTealWidgetState
    extends State<PartsSelectionHardlineTealWidget> {
  late Parts _category;
  bool _loading = true;
  String? _error;
  List<PartCardDTOStruct> _results = const [];
  String? _addedFlashItemId;

  // Motor filters (matches filterMotorItems(acModelRef, volt, hp, rpm, rotation))
  int? _motorVolt = 230;
  double? _motorHp;
  int? _motorRpm;
  String? _motorRotation;

  // Contactor filters (matches filterContactorItems(acModelRef, ratedVolt, ratedAmp, coilVoltage, numberOfPoles))
  double? _contRatedVolt;
  double? _contRatedAmp;
  double? _contCoilVoltage;
  int? _contPoles;

  // Capacitor filters (matches filterCapacitorItems(acModelRef, mfd1, mfd2, volt, type, shape))
  double? _capMfd1;
  double? _capMfd2;
  int? _capVolt;
  String? _capType;
  String? _capShape;

  @override
  void initState() {
    super.initState();
    _category = widget.part;
    _runQuery();
  }

  Future<void> _runQuery() async {
    setState(() {
      _loading = true;
      _error = null;
    });
    try {
      List<PartCardDTOStruct> data;
      switch (_category) {
        case Parts.MOTOR:
          data = await actions.filterMotorItems(
              null, _motorVolt, _motorHp, _motorRpm, _motorRotation);
          break;
        case Parts.CONTACTOR:
          data = await actions.filterContactorItems(
              null, _contRatedVolt, _contRatedAmp, _contCoilVoltage,
              _contPoles);
          break;
        case Parts.CAPACITOR:
          data = await actions.filterCapacitorItems(
              null, _capMfd1, _capMfd2, _capVolt, _capType, _capShape);
          break;
      }
      if (!mounted) return;
      setState(() {
        _results = data;
        _loading = false;
      });
    } catch (e) {
      if (!mounted) return;
      setState(() {
        _error = 'Could not load parts right now. Pull to refresh or try again.';
        _loading = false;
      });
    }
  }

  void _selectCategory(Parts p) {
    if (p == _category) return;
    setState(() => _category = p);
    _runQuery();
  }

  void _clearFilters() {
    setState(() {
      _motorVolt = null;
      _motorHp = null;
      _motorRpm = null;
      _motorRotation = null;
      _contRatedVolt = null;
      _contRatedAmp = null;
      _contCoilVoltage = null;
      _contPoles = null;
      _capMfd1 = null;
      _capMfd2 = null;
      _capVolt = null;
      _capType = null;
      _capShape = null;
    });
    _runQuery();
  }

  /// Same logic as the live app's product-card tap handler: if the item is
  /// already in the cart, bump its qty by 1 via the existing
  /// `updatecartItemsAction`; otherwise append a new `CartItemStruct`.
  Future<void> _addToCart(PartCardDTOStruct part) async {
    final existing = FFAppState()
        .Cart
        .cartItems
        .where((e) => e.itemId == part.id)
        .toList();
    if (existing.isEmpty) {
      FFAppState().updateCartStruct(
        (c) => c
          ..updateCartItems(
            (list) => list.add(CartItemStruct(
              itemId: part.id,
              title: part.title,
              specType: part.type,
              desc: part.desc,
              price: part.price,
              qty: 1,
              isReturnable: false,
            )),
          ),
      );
    } else {
      await actions.updatecartItemsAction(part.id!, existing.first.qty + 1);
    }
    if (!mounted) return;
    setState(() => _addedFlashItemId = part.id?.id);
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: HardlineTeal.primary,
        behavior: SnackBarBehavior.floating,
        shape: const RoundedRectangleBorder(),
        content: Semantics(
          liveRegion: true,
          child: Text(
            '${part.title} added to cart',
            style: _spaceGrotesk(
              fontSize: 14,
              fontWeight: FontWeight.w700,
              color: HardlineTeal.onPrimary,
            ),
          ),
        ),
      ),
    );
  }

  String get _categoryLabel => switch (_category) {
        Parts.MOTOR => 'MOTOR',
        Parts.CONTACTOR => 'CONTACTOR',
        Parts.CAPACITOR => 'CAPACITOR',
      };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HardlineTeal.surface,
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            final width = constraints.maxWidth;
            final tier = width < HardlineBreakpoints.mobileMax
                ? _Tier.mobile
                : width < HardlineBreakpoints.tabletMax
                    ? _Tier.tablet
                    : _Tier.desktop;
            return Column(
              children: [
                _TopNavBar(
                  tier: tier,
                  onNavAbout: () => context.pushNamed(IAboutWidget.routeName),
                  onNavTrackOrders: () =>
                      context.pushNamed(GTrackAndFindMyOrderWidget.routeName),
                  onNavHome: () => context.pushNamed(BDiagnosisWidget.routeName),
                  onCart: () =>
                      context.pushNamed(EReviewYourOrderWidget.routeName),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    padding: EdgeInsets.symmetric(
                      horizontal: tier == _Tier.mobile ? 16 : 32,
                      vertical: 24,
                    ),
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(maxWidth: 1280),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _Breadcrumb(categoryLabel: _categoryLabel),
                          const SizedBox(height: 12),
                          Text(
                            'SELECT $_categoryLabel',
                            style: _spaceGrotesk(
                              fontSize: tier == _Tier.mobile ? 32 : 44,
                              fontWeight: FontWeight.w800,
                              letterSpacing: -0.5,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            'Choose the specific $_categoryLabel that fits your AC unit model.',
                            style: _spaceGrotesk(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: HardlineTeal.onSurfaceVariant,
                            ),
                          ),
                          const SizedBox(height: 24),
                          if (tier == _Tier.desktop)
                            _DesktopLayout(
                              state: this,
                              category: _category,
                            )
                          else
                            _StackedLayout(
                              state: this,
                              category: _category,
                              tier: tier,
                            ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

class _Breadcrumb extends StatelessWidget {
  const _Breadcrumb({required this.categoryLabel});
  final String categoryLabel;

  @override
  Widget build(BuildContext context) {
    final crumbStyle = _spaceGrotesk(
      fontSize: 13,
      fontWeight: FontWeight.w600,
      color: HardlineTeal.onSurfaceVariant,
    );
    return Semantics(
      label: 'Breadcrumb: Home, AC Parts, $categoryLabel',
      child: ExcludeSemantics(
        child: Wrap(
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            Text('Home', style: crumbStyle),
            Text(' / ', style: crumbStyle),
            Text('AC Parts', style: crumbStyle),
            Text(' / ', style: crumbStyle),
            Text(categoryLabel,
                style: crumbStyle.copyWith(
                    color: HardlineTeal.primary, fontWeight: FontWeight.w800)),
          ],
        ),
      ),
    );
  }
}

class _TopNavBar extends StatelessWidget {
  const _TopNavBar({
    required this.tier,
    this.onNavHome,
    this.onNavAbout,
    this.onNavTrackOrders,
    this.onCart,
  });

  final _Tier tier;
  final VoidCallback? onNavHome;
  final VoidCallback? onNavAbout;
  final VoidCallback? onNavTrackOrders;
  final VoidCallback? onCart;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      padding: EdgeInsets.symmetric(horizontal: tier == _Tier.mobile ? 16 : 32),
      decoration: const BoxDecoration(
        color: HardlineTeal.surface,
        border: Border(bottom: BorderSide(color: HardlineTeal.primary, width: 2)),
      ),
      child: Row(
        children: [
          Semantics(
            button: true,
            label: 'DIY AC Repair, go to home',
            child: InkWell(
              onTap: onNavHome,
              child: Text(
                'DIY AC REPAIR',
                style: _spaceGrotesk(fontSize: 18, fontWeight: FontWeight.w800),
              ),
            ),
          ),
          const Spacer(),
          if (tier != _Tier.mobile) ...[
            _NavLink('ABOUT', onTap: onNavAbout),
            const SizedBox(width: 24),
            _NavLink('TRACK ORDERS', onTap: onNavTrackOrders),
            const SizedBox(width: 24),
          ],
          Semantics(
            button: true,
            label: 'View cart',
            child: InkWell(
              onTap: onCart,
              child: Container(
                width: 44,
                height: 44,
                color: HardlineTeal.primary,
                alignment: Alignment.center,
                child: const Icon(Icons.shopping_cart,
                    color: HardlineTeal.onPrimary, size: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _NavLink extends StatelessWidget {
  const _NavLink(this.label, {this.onTap});
  final String label;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Semantics(
      button: true,
      label: label,
      child: InkWell(
        onTap: onTap,
        child: Text(
          label,
          style: _spaceGrotesk(
            fontSize: 13,
            fontWeight: FontWeight.w700,
            color: HardlineTeal.onSurfaceVariant,
          ),
        ),
      ),
    );
  }
}

/// Desktop: left sidebar (part tabs + spec filter panel), right results grid —
/// matches the Stitch `technical_spec_selection_hardline_teal_desktop` layout.
class _DesktopLayout extends StatelessWidget {
  const _DesktopLayout({required this.state, required this.category});
  final _PartsSelectionHardlineTealWidgetState state;
  final Parts category;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 280,
          child: Column(
            children: [
              _PartsTabList(state: state, category: category),
              const SizedBox(height: 24),
              _FilterPanel(state: state, category: category),
            ],
          ),
        ),
        const SizedBox(width: 32),
        Expanded(child: _ResultsArea(state: state, category: category, columns: 3)),
      ],
    );
  }
}

/// Mobile / tablet: tabs, then a collapsible filter panel, then a
/// 1- or 2-column results grid stacked below (never a horizontal-scroll
/// table on small screens).
class _StackedLayout extends StatelessWidget {
  const _StackedLayout({
    required this.state,
    required this.category,
    required this.tier,
  });
  final _PartsSelectionHardlineTealWidgetState state;
  final Parts category;
  final _Tier tier;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _PartsTabList(state: state, category: category),
        const SizedBox(height: 16),
        _CollapsibleFilterPanel(state: state, category: category),
        const SizedBox(height: 24),
        _ResultsArea(
          state: state,
          category: category,
          columns: tier == _Tier.tablet ? 2 : 1,
        ),
      ],
    );
  }
}

class _PartsTabList extends StatelessWidget {
  const _PartsTabList({required this.state, required this.category});
  final _PartsSelectionHardlineTealWidgetState state;
  final Parts category;

  @override
  Widget build(BuildContext context) {
    final tabs = const [
      (Parts.MOTOR, 'MOTOR', Icons.settings),
      (Parts.CONTACTOR, 'CONTACTOR', Icons.build),
      (Parts.CAPACITOR, 'CAPACITOR', Icons.memory),
    ];
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: HardlineTeal.primary, width: 2),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text('PARTS',
                  style: _spaceGrotesk(fontSize: 22, fontWeight: FontWeight.w800)),
            ),
          ),
          for (final tab in tabs)
            _PartsTabRow(
              label: tab.$2,
              icon: tab.$3,
              selected: tab.$1 == category,
              onTap: () => state._selectCategory(tab.$1),
            ),
        ],
      ),
    );
  }
}

class _PartsTabRow extends StatelessWidget {
  const _PartsTabRow({
    required this.label,
    required this.icon,
    required this.selected,
    required this.onTap,
  });
  final String label;
  final IconData icon;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Semantics(
      button: true,
      selected: selected,
      label: '$label parts tab',
      child: InkWell(
        onTap: onTap,
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
          color: selected ? HardlineTeal.surfaceContainer : Colors.white,
          child: Row(
            children: [
              Icon(icon,
                  size: 18,
                  color: selected ? HardlineTeal.teal : HardlineTeal.onSurfaceVariant),
              const SizedBox(width: 12),
              Text(
                label,
                style: _spaceGrotesk(
                  fontSize: 14,
                  fontWeight: selected ? FontWeight.w800 : FontWeight.w600,
                  color: selected ? HardlineTeal.primary : HardlineTeal.onSurfaceVariant,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _FilterPanel extends StatefulWidget {
  const _FilterPanel({required this.state, required this.category});
  final _PartsSelectionHardlineTealWidgetState state;
  final Parts category;

  @override
  State<_FilterPanel> createState() => _FilterPanelState();
}

class _FilterPanelState extends State<_FilterPanel> {
  @override
  Widget build(BuildContext context) {
    return Semantics(
      container: true,
      label: '${_categoryTitle(widget.category)} filters',
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: HardlineTeal.primary, width: 2),
        ),
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('${_categoryTitle(widget.category)} SPECS',
                style: _spaceGrotesk(fontSize: 16, fontWeight: FontWeight.w800)),
            const SizedBox(height: 16),
            ..._fieldsFor(widget.category, widget.state, () => setState(() {})),
            const SizedBox(height: 8),
            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: widget.state._clearFilters,
                    style: OutlinedButton.styleFrom(
                      shape: const RoundedRectangleBorder(),
                      side: const BorderSide(color: HardlineTeal.primary, width: 2),
                      padding: const EdgeInsets.symmetric(vertical: 12),
                    ),
                    child: Text('CLEAR FORM',
                        style: _spaceGrotesk(fontSize: 12, fontWeight: FontWeight.w700)),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: ElevatedButton(
                    onPressed: widget.state._runQuery,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: HardlineTeal.teal,
                      foregroundColor: HardlineTeal.primary,
                      shape: const RoundedRectangleBorder(),
                      elevation: 0,
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      side: const BorderSide(color: HardlineTeal.primary, width: 2),
                    ),
                    child: Text('FILTER',
                        style: _spaceGrotesk(fontSize: 12, fontWeight: FontWeight.w800)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _CollapsibleFilterPanel extends StatefulWidget {
  const _CollapsibleFilterPanel({required this.state, required this.category});
  final _PartsSelectionHardlineTealWidgetState state;
  final Parts category;

  @override
  State<_CollapsibleFilterPanel> createState() => _CollapsibleFilterPanelState();
}

class _CollapsibleFilterPanelState extends State<_CollapsibleFilterPanel> {
  bool _open = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: HardlineTeal.primary, width: 2),
      ),
      child: Column(
        children: [
          Semantics(
            button: true,
            expanded: _open,
            label: 'Filter specs, ${_open ? "expanded" : "collapsed"}',
            child: InkWell(
              onTap: () => setState(() => _open = !_open),
              child: Container(
                width: double.infinity,
                color: HardlineTeal.teal,
                padding: const EdgeInsets.all(14),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('FILTER SPECS',
                        style: _spaceGrotesk(
                            fontSize: 16,
                            fontWeight: FontWeight.w800,
                            color: HardlineTeal.onPrimary)),
                    Icon(_open ? Icons.expand_less : Icons.expand_more,
                        color: HardlineTeal.onPrimary),
                  ],
                ),
              ),
            ),
          ),
          if (_open)
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ..._fieldsFor(widget.category, widget.state, () => setState(() {})),
                  Row(
                    children: [
                      Expanded(
                        child: OutlinedButton(
                          onPressed: widget.state._clearFilters,
                          style: OutlinedButton.styleFrom(
                            shape: const RoundedRectangleBorder(),
                            side: const BorderSide(color: HardlineTeal.primary, width: 2),
                            padding: const EdgeInsets.symmetric(vertical: 12),
                          ),
                          child: Text('CLEAR',
                              style:
                                  _spaceGrotesk(fontSize: 12, fontWeight: FontWeight.w700)),
                        ),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: widget.state._runQuery,
                          style: ElevatedButton.styleFrom(
                            backgroundColor: HardlineTeal.teal,
                            foregroundColor: HardlineTeal.primary,
                            shape: const RoundedRectangleBorder(),
                            elevation: 0,
                            padding: const EdgeInsets.symmetric(vertical: 12),
                            side: const BorderSide(color: HardlineTeal.primary, width: 2),
                          ),
                          child: Text('APPLY',
                              style:
                                  _spaceGrotesk(fontSize: 12, fontWeight: FontWeight.w800)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}

String _categoryTitle(Parts p) => switch (p) {
      Parts.MOTOR => 'MOTOR',
      Parts.CONTACTOR => 'CONTACTOR',
      Parts.CAPACITOR => 'CAPACITOR',
    };

/// Real spec fields per category — matches the exact params each existing
/// `filter*Items` custom action accepts, so filtering behaves identically
/// to the live app.
List<Widget> _fieldsFor(
    Parts category, _PartsSelectionHardlineTealWidgetState s, VoidCallback refresh) {
  TextStyle labelStyle() =>
      _spaceGrotesk(fontSize: 12, fontWeight: FontWeight.w700, color: HardlineTeal.onSurfaceVariant);
  InputDecoration deco(String hint) => InputDecoration(
        isDense: true,
        hintText: hint,
        contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.zero,
          borderSide: BorderSide(color: HardlineTeal.primary, width: 2),
        ),
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.zero,
          borderSide: BorderSide(color: HardlineTeal.primary, width: 2),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.zero,
          borderSide: BorderSide(color: HardlineTeal.teal, width: 3),
        ),
      );

  Widget field(String label, Widget input) => Padding(
        padding: const EdgeInsets.only(bottom: 14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(label.toUpperCase(), style: labelStyle()),
            const SizedBox(height: 6),
            input,
          ],
        ),
      );

  switch (category) {
    case Parts.MOTOR:
      return [
        field(
          'Rated Volt',
          TextFormField(
            initialValue: s._motorVolt?.toString(),
            keyboardType: TextInputType.number,
            style: _spaceGrotesk(fontSize: 14, fontWeight: FontWeight.w600),
            decoration: deco('e.g. 230'),
            onChanged: (v) => s._motorVolt = int.tryParse(v),
          ),
        ),
        field(
          'HP',
          TextFormField(
            initialValue: s._motorHp?.toString(),
            keyboardType: TextInputType.number,
            style: _spaceGrotesk(fontSize: 14, fontWeight: FontWeight.w600),
            decoration: deco('e.g. 0.33'),
            onChanged: (v) => s._motorHp = double.tryParse(v),
          ),
        ),
        field(
          'RPM',
          TextFormField(
            initialValue: s._motorRpm?.toString(),
            keyboardType: TextInputType.number,
            style: _spaceGrotesk(fontSize: 14, fontWeight: FontWeight.w600),
            decoration: deco('e.g. 1075'),
            onChanged: (v) => s._motorRpm = int.tryParse(v),
          ),
        ),
        field(
          'Rotation',
          DropdownButtonFormField<String>(
            initialValue: s._motorRotation,
            decoration: deco('Any'),
            style: _spaceGrotesk(fontSize: 14, fontWeight: FontWeight.w600),
            items: const [
              DropdownMenuItem(value: 'CW', child: Text('CW')),
              DropdownMenuItem(value: 'CCW', child: Text('CCW')),
              DropdownMenuItem(value: 'REV', child: Text('REV')),
            ],
            onChanged: (v) => s._motorRotation = v,
          ),
        ),
      ];
    case Parts.CONTACTOR:
      return [
        field(
          'Rated Amp',
          TextFormField(
            initialValue: s._contRatedAmp?.toString(),
            keyboardType: TextInputType.number,
            style: _spaceGrotesk(fontSize: 14, fontWeight: FontWeight.w600),
            decoration: deco('e.g. 40'),
            onChanged: (v) => s._contRatedAmp = double.tryParse(v),
          ),
        ),
        field(
          'Rated Coil Volt',
          TextFormField(
            initialValue: s._contCoilVoltage?.toString(),
            keyboardType: TextInputType.number,
            style: _spaceGrotesk(fontSize: 14, fontWeight: FontWeight.w600),
            decoration: deco('e.g. 24'),
            onChanged: (v) => s._contCoilVoltage = double.tryParse(v),
          ),
        ),
        field(
          'Number of Poles',
          TextFormField(
            initialValue: s._contPoles?.toString(),
            keyboardType: TextInputType.number,
            style: _spaceGrotesk(fontSize: 14, fontWeight: FontWeight.w600),
            decoration: deco('e.g. 2'),
            onChanged: (v) => s._contPoles = int.tryParse(v),
          ),
        ),
      ];
    case Parts.CAPACITOR:
      return [
        field(
          'MFD 1',
          TextFormField(
            initialValue: s._capMfd1?.toString(),
            keyboardType: TextInputType.number,
            style: _spaceGrotesk(fontSize: 14, fontWeight: FontWeight.w600),
            decoration: deco('e.g. 5'),
            onChanged: (v) => s._capMfd1 = double.tryParse(v),
          ),
        ),
        field(
          'MFD 2',
          TextFormField(
            initialValue: s._capMfd2?.toString(),
            keyboardType: TextInputType.number,
            style: _spaceGrotesk(fontSize: 14, fontWeight: FontWeight.w600),
            decoration: deco('e.g. 0'),
            onChanged: (v) => s._capMfd2 = double.tryParse(v),
          ),
        ),
        field(
          'Volt',
          TextFormField(
            initialValue: s._capVolt?.toString(),
            keyboardType: TextInputType.number,
            style: _spaceGrotesk(fontSize: 14, fontWeight: FontWeight.w600),
            decoration: deco('e.g. 370'),
            onChanged: (v) => s._capVolt = int.tryParse(v),
          ),
        ),
        field(
          'Shape',
          TextFormField(
            initialValue: s._capShape,
            style: _spaceGrotesk(fontSize: 14, fontWeight: FontWeight.w600),
            decoration: deco('Oval / Round'),
            onChanged: (v) => s._capShape = v.isEmpty ? null : v,
          ),
        ),
      ];
  }
}

class _ResultsArea extends StatelessWidget {
  const _ResultsArea({
    required this.state,
    required this.category,
    required this.columns,
  });
  final _PartsSelectionHardlineTealWidgetState state;
  final Parts category;
  final int columns;

  @override
  Widget build(BuildContext context) {
    if (state._loading) {
      return const Padding(
        padding: EdgeInsets.symmetric(vertical: 64),
        child: Center(
          child: CircularProgressIndicator(color: HardlineTeal.teal),
        ),
      );
    }
    if (state._error != null) {
      return Semantics(
        liveRegion: true,
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: HardlineTeal.error, width: 2),
          ),
          child: Text(state._error!,
              style: _spaceGrotesk(
                  fontSize: 14, fontWeight: FontWeight.w600, color: HardlineTeal.error)),
        ),
      );
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          color: HardlineTeal.primary,
          child: Text(
            'ALL ${_categoryTitle(category)} (${state._results.length})',
            style: _spaceGrotesk(
                fontSize: 16, fontWeight: FontWeight.w800, color: HardlineTeal.onPrimary),
          ),
        ),
        const SizedBox(height: 16),
        if (state._results.isEmpty)
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: HardlineTeal.primary, width: 2),
            ),
            child: Text(
              'No $category matched those specs. Try clearing a filter.',
              style: _spaceGrotesk(
                  fontSize: 14, fontWeight: FontWeight.w600, color: HardlineTeal.onSurfaceVariant),
            ),
          )
        else
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: state._results.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: columns,
              mainAxisSpacing: 16,
              crossAxisSpacing: 16,
              childAspectRatio: columns == 1 ? 1.7 : 1.05,
            ),
            itemBuilder: (context, i) => _PartCard(
              part: state._results[i],
              onAdd: () => state._addToCart(state._results[i]),
            ),
          ),
      ],
    );
  }
}

class _PartCard extends StatefulWidget {
  const _PartCard({required this.part, required this.onAdd});
  final PartCardDTOStruct part;
  final VoidCallback onAdd;

  @override
  State<_PartCard> createState() => _PartCardState();
}

class _PartCardState extends State<_PartCard> {
  bool _hover = false;

  List<String> _specLines() {
    final p = widget.part;
    switch (p.type.toUpperCase()) {
      case 'MOTOR':
        final m = p.motorCard;
        return [
          'RPM: ${m.motorRpm}',
          'Volt: ${m.motorVolt}',
          'Amp: ${m.motorAmp}',
          'HP/Speeds: ${m.motorNOSpeeds}',
          'Rotation: ${m.motorRotation}',
        ];
      case 'CONTACTOR':
      case 'CONTRACTOR':
        final c = p.contactorCard;
        return [
          'Rated Amp: ${c.contratedAmp}',
          'Rated Volt: ${c.contratedVolt}',
          'Coil Volt: ${c.contCoilVolt}',
        ];
      case 'CAPACITOR':
        final c = p.capacitorCard;
        return [
          'MFD1: ${c.capacMFD1}',
          'MFD2: ${c.capacMFD2}',
          'Diameter: ${c.capacDiameter}',
        ];
      default:
        return const [];
    }
  }

  @override
  Widget build(BuildContext context) {
    final part = widget.part;
    return MouseRegion(
      onEnter: (_) => setState(() => _hover = true),
      onExit: (_) => setState(() => _hover = false),
      child: Semantics(
        container: true,
        label: '${part.title}, ${part.desc}, \$${part.price.toStringAsFixed(2)}, in stock',
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 120),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: HardlineTeal.primary, width: 2),
            boxShadow: [
              BoxShadow(
                color: HardlineTeal.primary,
                offset: Offset(_hover ? 6 : 4, _hover ? 6 : 4),
              ),
            ],
          ),
          padding: const EdgeInsets.all(14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                      part.title,
                      style: _spaceGrotesk(fontSize: 16, fontWeight: FontWeight.w800),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                    color: HardlineTeal.teal.withOpacity(0.18),
                    child: Text('IN STOCK',
                        style: _spaceGrotesk(
                            fontSize: 10, fontWeight: FontWeight.w800, color: HardlineTeal.teal)),
                  ),
                ],
              ),
              const SizedBox(height: 2),
              Text(part.desc,
                  style: _spaceGrotesk(
                      fontSize: 12, fontWeight: FontWeight.w600, color: HardlineTeal.onSurfaceVariant)),
              const Divider(height: 16, thickness: 1, color: HardlineTeal.outline),
              Expanded(
                child: Wrap(
                  spacing: 12,
                  runSpacing: 4,
                  children: [
                    for (final line in _specLines())
                      Text(line,
                          style: _spaceGrotesk(fontSize: 11, fontWeight: FontWeight.w500)),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('\$${part.price.toStringAsFixed(2)}',
                      style: _spaceGrotesk(fontSize: 18, fontWeight: FontWeight.w800)),
                  Semantics(
                    button: true,
                    label: 'Add ${part.title} to cart',
                    child: InkWell(
                      onTap: widget.onAdd,
                      child: Container(
                        width: 36,
                        height: 36,
                        color: HardlineTeal.primary,
                        alignment: Alignment.center,
                        child: const Icon(Icons.add, color: HardlineTeal.onPrimary, size: 20),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
