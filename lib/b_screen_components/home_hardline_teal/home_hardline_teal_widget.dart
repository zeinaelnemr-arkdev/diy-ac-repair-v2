// Home page — "Hardline Teal" design (Neo-Brutalism).
//
// Built directly from the Stitch export under design/stitch_export/ in this
// repo (home_hardline_teal_desktop + home_hardline_teal_mobile). Faithful to
// those two breakpoints; the 600-1023px tablet tier is a deliberate,
// documented interpolation (see comments below) since Stitch did not
// generate an explicit tablet screen for Home yet.
//
// Branding corrected from the mockups' placeholder "RAW AC REPAIR" back to
// the real product name, "DIY AC Repair", per direct confirmation.
//
// Colors/type/spacing are the exact tokens from design/stitch_export's
// Tailwind config for this screen (note: the shipped teal is #00b5ad, a
// more legible value than the #79f6ed in DESIGN.md's frontmatter — using
// the shipped value here since it's what actually renders and what the
// accessibility audit's contrast warning was resolved against).

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Real routes from the existing app -- same content, same Firebase project,
// same navigation graph. Stitch is the visual reference only; every nav
// target below points at the actual page that already queries Firestore
// (ac_makes/ac_models via FFAppState, videos, orders, technicians, etc.).
import '/a_pages/a_main_pages/b_diagnosis/b_diagnosis_widget.dart';
import '/a_pages/a_main_pages/i_about/i_about_widget.dart';
import '/a_pages/a_main_pages/c_library_video_flow/c_library_video_flow_widget.dart';
import '/a_pages/a_main_pages/l_user_profile/g_track_and_find_my_order/g_track_and_find_my_order_widget.dart';
import '/a_pages/a_main_pages/l_request_technical/l_request_technical_widget.dart';

class HardlineTeal {
  static const surface = Color(0xFFF9F9F9);
  static const surfaceContainer = Color(0xFFEEEEEE);
  static const primary = Color(0xFF000000); // "on-primary" surfaces are white
  static const onPrimary = Color(0xFFFFFFFF);
  static const onSurfaceVariant = Color(0xFF4C4546);
  static const teal = Color(0xFF00B5AD); // shipped accent (tertiary-fixed)
  static const error = Color(0xFFBA1A1A);
}

/// Breakpoints match the ones fixed in docs/DESIGN_SYSTEM.md /
/// docs/STITCH_DESIGN_PROMPT.md for this project — keep these three in sync
/// everywhere rather than introducing new numbers per screen.
class HardlineBreakpoints {
  static const mobileMax = 600.0;
  static const tabletMax = 1024.0;
}

enum _Tier { mobile, tablet, desktop }

class HomeHardlineTealWidget extends StatelessWidget {
  const HomeHardlineTealWidget({
    super.key,
    this.onStartDiagnosis,
    this.onNavGuides,
    this.onNavParts,
    this.onNavDiagnostics,
    this.onNavTechs,
    this.onVideoLibrary,
    this.onOrderTracking,
    this.onFindTech,
    this.onAboutUs,
    this.onLearnBasics,
  });

  final VoidCallback? onStartDiagnosis;
  final VoidCallback? onNavGuides;
  final VoidCallback? onNavParts;
  final VoidCallback? onNavDiagnostics;
  final VoidCallback? onNavTechs;
  final VoidCallback? onVideoLibrary;
  final VoidCallback? onOrderTracking;
  final VoidCallback? onFindTech;
  final VoidCallback? onAboutUs;
  final VoidCallback? onLearnBasics;

  @override
  Widget build(BuildContext context) {
    // Same content, same database, same navigation graph as the live app --
    // Stitch is the visual reference only. Each callback falls back to the
    // real existing route (Firestore-backed) rather than a dead end, so
    // this widget works correctly the moment it's dropped in as Home.
    final effectiveStartDiagnosis =
        onStartDiagnosis ?? () => context.pushNamed(BDiagnosisWidget.routeName);
    final effectiveVideoLibrary = onVideoLibrary ??
        () => context.pushNamed(CLibraryVideoFlowWidget.routeName);
    final effectiveOrderTracking = onOrderTracking ??
        () => context.pushNamed(GTrackAndFindMyOrderWidget.routeName);
    final effectiveFindTech =
        onFindTech ?? () => context.pushNamed(LRequestTechnicalWidget.routeName);
    final effectiveAboutUs = onAboutUs ?? () => context.pushNamed(IAboutWidget.routeName);
    // "Guides"/"Parts"/"Diagnostics"/"Techs" nav-bar labels map onto the same
    // four destinations as the quick-link cards below them.
    final effectiveNavGuides = onNavGuides ?? effectiveVideoLibrary;
    final effectiveNavParts = onNavParts ?? effectiveOrderTracking;
    final effectiveNavDiagnostics = onNavDiagnostics ?? effectiveStartDiagnosis;
    final effectiveNavTechs = onNavTechs ?? effectiveFindTech;
    final effectiveLearnBasics = onLearnBasics ?? effectiveStartDiagnosis;

    return Scaffold(
      backgroundColor: HardlineTeal.surface,
      body: LayoutBuilder(
        builder: (context, constraints) {
          final width = constraints.maxWidth;
          final tier = width < HardlineBreakpoints.mobileMax
              ? _Tier.mobile
              : width < HardlineBreakpoints.tabletMax
                  ? _Tier.tablet
                  : _Tier.desktop;

          return Stack(
            children: [
              SingleChildScrollView(
                padding: EdgeInsets.only(
                  top: 64,
                  bottom: tier == _Tier.mobile ? 96 : 0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    _HeroSection(tier: tier, onStartDiagnosis: effectiveStartDiagnosis),
                    _QuickLinksGrid(
                      tier: tier,
                      onVideoLibrary: effectiveVideoLibrary,
                      onOrderTracking: effectiveOrderTracking,
                      onFindTech: effectiveFindTech,
                      onAboutUs: effectiveAboutUs,
                    ),
                    if (tier == _Tier.desktop) const _MarqueeTicker(),
                    if (tier != _Tier.mobile)
                      _IdentifyFailureSection(
                          tier: tier, onLearnBasics: effectiveLearnBasics)
                    else
                      const _MobileStatusCard(),
                    if (tier != _Tier.mobile) const _Footer(),
                  ],
                ),
              ),
              _TopNavBar(
                tier: tier,
                onNavGuides: effectiveNavGuides,
                onNavParts: effectiveNavParts,
                onNavDiagnostics: effectiveNavDiagnostics,
                onNavTechs: effectiveNavTechs,
                onStartDiagnosis: effectiveStartDiagnosis,
              ),
              if (tier == _Tier.mobile)
                _MobileStickyCta(onStartDiagnosis: effectiveStartDiagnosis)
              else
                _Fab(onTap: effectiveStartDiagnosis),
            ],
          );
        },
      ),
    );
  }
}

// ---------------------------------------------------------------------------
// Top nav bar
// ---------------------------------------------------------------------------

class _TopNavBar extends StatelessWidget {
  const _TopNavBar({
    required this.tier,
    this.onNavGuides,
    this.onNavParts,
    this.onNavDiagnostics,
    this.onNavTechs,
    this.onStartDiagnosis,
  });

  final _Tier tier;
  final VoidCallback? onNavGuides;
  final VoidCallback? onNavParts;
  final VoidCallback? onNavDiagnostics;
  final VoidCallback? onNavTechs;
  final VoidCallback? onStartDiagnosis;

  @override
  Widget build(BuildContext context) {
    final isMobile = tier == _Tier.mobile;
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: Container(
        height: 64,
        padding: const EdgeInsets.symmetric(horizontal: 24),
        decoration: const BoxDecoration(
          color: HardlineTeal.surface,
          border: Border(
            bottom: BorderSide(color: HardlineTeal.primary, width: 4),
          ),
        ),
        child: Row(
          children: [
            if (isMobile)
              const Padding(
                padding: EdgeInsets.only(right: 12),
                child: Icon(Icons.menu, color: HardlineTeal.primary),
              ),
            Text(
              'DIY AC REPAIR',
              style: _spaceGrotesk(
                fontSize: isMobile ? 22 : 24,
                fontWeight: FontWeight.w900,
                letterSpacing: -0.5,
                color: HardlineTeal.primary,
              ),
            ),
            if (!isMobile && tier == _Tier.desktop) ...[
              const Spacer(),
              _NavLink('GUIDES', onTap: onNavGuides),
              const SizedBox(width: 32),
              _NavLink('PARTS', onTap: onNavParts),
              const SizedBox(width: 32),
              _NavLink('DIAGNOSTICS', active: true, onTap: onNavDiagnostics),
              const SizedBox(width: 32),
              _NavLink('TECHS', onTap: onNavTechs),
            ],
            const Spacer(),
            if (tier == _Tier.desktop)
              Container(
                margin: const EdgeInsets.only(right: 16),
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                decoration: BoxDecoration(
                  color: HardlineTeal.teal,
                  border: Border.all(color: HardlineTeal.primary, width: 2),
                ),
                child: Text(
                  'STEP 0: START',
                  style: _spaceGrotesk(
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            if (isMobile)
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                decoration: BoxDecoration(
                  color: HardlineTeal.teal,
                  border: Border.all(color: HardlineTeal.primary, width: 2),
                ),
                child: Text('STEP 0',
                    style: _spaceGrotesk(fontSize: 12, fontWeight: FontWeight.bold)),
              )
            else
              ElevatedButton(
                onPressed: onStartDiagnosis,
                style: ElevatedButton.styleFrom(
                  backgroundColor: HardlineTeal.primary,
                  foregroundColor: HardlineTeal.onPrimary,
                  shape: const RoundedRectangleBorder(),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                  elevation: 0,
                ),
                child: Text('GET STARTED',
                    style: _spaceGrotesk(fontWeight: FontWeight.bold, fontSize: 13)),
              ),
          ],
        ),
      ),
    );
  }
}

class _NavLink extends StatelessWidget {
  const _NavLink(this.label, {this.active = false, this.onTap});
  final String label;
  final bool active;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: active
            ? const BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: HardlineTeal.primary, width: 4),
                ),
              )
            : null,
        padding: const EdgeInsets.only(bottom: 4),
        child: Text(
          label,
          style: _spaceGrotesk(
            fontWeight: FontWeight.bold,
            fontSize: 14,
            letterSpacing: -0.2,
            color: active ? HardlineTeal.primary : HardlineTeal.onSurfaceVariant,
          ),
        ),
      ),
    );
  }
}

// ---------------------------------------------------------------------------
// Hero
// ---------------------------------------------------------------------------

class _HeroSection extends StatelessWidget {
  const _HeroSection({required this.tier, this.onStartDiagnosis});
  final _Tier tier;
  final VoidCallback? onStartDiagnosis;

  @override
  Widget build(BuildContext context) {
    if (tier == _Tier.desktop) {
      return Container(
        color: HardlineTeal.teal,
        padding: const EdgeInsets.fromLTRB(64, 48, 64, 64),
        child: Container(
          decoration: const BoxDecoration(
            border: Border(bottom: BorderSide(color: HardlineTeal.primary, width: 4)),
          ),
          padding: const EdgeInsets.only(bottom: 48),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 8,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _heroHeadline(fontSize: 64),
                    const SizedBox(height: 16),
                    Text(
                      '90% of AC failures are simple electrical parts. You can fix it today.',
                      style: _spaceGrotesk(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 24),
                    _UnitIdField(onStartDiagnosis: onStartDiagnosis, wide: true),
                  ],
                ),
              ),
              const SizedBox(width: 48),
              Expanded(
                flex: 4,
                child: AspectRatio(
                  aspectRatio: 1,
                  child: _DiagramPlaceholder(caption: 'SYSTEM DIAGRAM 04-A'),
                ),
              ),
            ],
          ),
        ),
      );
    }

    // Tablet: same composition as mobile but with generous side padding and
    // a two-up quick-links grid handled separately — Stitch didn't render an
    // explicit tablet Home screen, so this keeps the mobile card layout
    // (verified against the code's own `hidden lg:block` on the hero image,
    // meaning even Stitch's own desktop build hides that image below 1024px).
    final horizontalPadding = tier == _Tier.tablet ? 48.0 : 24.0;
    return Padding(
      padding: EdgeInsets.all(horizontalPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: HardlineTeal.primary, width: 4),
              boxShadow: const [
                BoxShadow(color: HardlineTeal.primary, offset: Offset(8, 8)),
              ],
            ),
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _heroHeadline(fontSize: tier == _Tier.tablet ? 40 : 32, teal: true),
                const SizedBox(height: 16),
                Container(height: 4, color: HardlineTeal.primary),
                const SizedBox(height: 16),
                Text(
                  'SYSTEM DIAGNOSTICS ENGINE V1.04',
                  style: _spaceGrotesk(fontSize: 16, fontWeight: FontWeight.w900),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          SizedBox(
            height: 192,
            child: _DiagramPlaceholder(caption: null, shadow: true),
          ),
          const SizedBox(height: 16),
          _UnitIdField(onStartDiagnosis: onStartDiagnosis, wide: false),
        ],
      ),
    );
  }

  Widget _heroHeadline({required double fontSize, bool teal = false}) {
    if (teal) {
      // Mobile/tablet variant: "REPAIR YOUR AC // WITH CONFIDENCE" with the
      // slash accented in teal, per the Stitch mobile export.
      return RichText(
        text: TextSpan(
          style: _spaceGrotesk(
              fontSize: fontSize, fontWeight: FontWeight.w900, height: 1.0),
          children: [
            const TextSpan(text: 'REPAIR YOUR AC\n'),
            TextSpan(
                text: '//\n',
                style: _spaceGrotesk(
                    fontSize: fontSize, fontWeight: FontWeight.w900, color: HardlineTeal.teal)),
            const TextSpan(text: 'WITH CONFIDENCE'),
          ],
        ),
      );
    }
    return RichText(
      text: TextSpan(
        style: _spaceGrotesk(fontSize: fontSize, fontWeight: FontWeight.w900, height: 1.0),
        children: [
          const TextSpan(text: 'REPAIR YOUR AC WITH '),
          TextSpan(
            text: 'CONFIDENCE',
            style: _spaceGrotesk(
              fontSize: fontSize,
              fontWeight: FontWeight.w900,
              color: HardlineTeal.onPrimary,
              backgroundColor: HardlineTeal.primary,
            ),
          ),
        ],
      ),
    );
  }
}

/// Real, functional text entry (not a styled static box) so it's actually
/// usable via keyboard/screen reader -- per the accessibility audit's
/// keyboard-navigability and focus-visible findings. On focus the border
/// stays solid black and the fill tints pale teal, exactly as specified in
/// docs/DESIGN_SYSTEM.md's "Input Fields" component spec.
///
/// Carries the same intent as the current live app's make/model/serial
/// entry (same Firestore-backed ac_makes/ac_models data) but as Stitch's
/// simplified single free-text field; the Diagnosis page itself still does
/// the real make/model lookup against FFAppState/Firestore once opened, so
/// no data or functionality is lost by simplifying the entry point here.
class _UnitIdField extends StatefulWidget {
  const _UnitIdField({this.onStartDiagnosis, required this.wide});
  final VoidCallback? onStartDiagnosis;
  final bool wide;

  @override
  State<_UnitIdField> createState() => _UnitIdFieldState();
}

class _UnitIdFieldState extends State<_UnitIdField> {
  final _controller = TextEditingController();
  final _focusNode = FocusNode();
  bool _focused = false;

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(() => setState(() => _focused = _focusNode.hasFocus));
  }

  @override
  void dispose() {
    _controller.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final wide = widget.wide;
    return Semantics(
      container: true,
      label: 'Unit identification',
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: HardlineTeal.primary, width: wide ? 4 : 0),
          boxShadow: wide
              ? const [BoxShadow(color: HardlineTeal.primary, offset: Offset(8, 8))]
              : null,
        ),
        padding: EdgeInsets.all(wide ? 24 : 0),
        constraints: wide ? const BoxConstraints(maxWidth: 700) : null,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('UNIT IDENTIFICATION',
                style: _spaceGrotesk(fontSize: 13, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            Flex(
              direction: wide ? Axis.horizontal : Axis.vertical,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  flex: wide ? 1 : 0,
                  child: Container(
                    height: 56,
                    decoration: BoxDecoration(
                      // Focus treatment per DESIGN.md: border stays solid
                      // black, fill tints pale teal -- a highly visible,
                      // non-default-browser-outline focus indicator (the
                      // audit flagged this Brutalist style as one that
                      // often strips default focus rings).
                      color: _focused
                          ? HardlineTeal.teal.withOpacity(0.12)
                          : Colors.white,
                      border: Border.all(
                        color: HardlineTeal.primary,
                        width: _focused ? 4 : 3,
                      ),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    alignment: Alignment.centerLeft,
                    child: TextField(
                      controller: _controller,
                      focusNode: _focusNode,
                      textInputAction: TextInputAction.search,
                      onSubmitted: (_) => widget.onStartDiagnosis?.call(),
                      style: _spaceGrotesk(fontSize: 14, fontWeight: FontWeight.bold),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        isDense: true,
                        hintText: 'ENTER A/C BRAND, MODEL, OR SERIAL NUMBER',
                        hintStyle: _spaceGrotesk(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: HardlineTeal.onSurfaceVariant),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: wide ? 8 : 0, height: wide ? 0 : 8),
                SizedBox(
                  height: 56,
                  child: ElevatedButton(
                    onPressed: widget.onStartDiagnosis,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: HardlineTeal.primary,
                      foregroundColor: HardlineTeal.onPrimary,
                      shape: const RoundedRectangleBorder(),
                      elevation: 0,
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('START DIAGNOSIS',
                            style: _spaceGrotesk(fontWeight: FontWeight.bold, fontSize: 15)),
                        const SizedBox(width: 8),
                        const Icon(Icons.arrow_forward, size: 20),
                      ],
                    ),
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

class _DiagramPlaceholder extends StatelessWidget {
  const _DiagramPlaceholder({this.caption, this.shadow = true});
  final String? caption;
  final bool shadow;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: HardlineTeal.surfaceContainer,
        border: Border.all(color: HardlineTeal.primary, width: 4),
        boxShadow: shadow
            ? const [BoxShadow(color: HardlineTeal.primary, offset: Offset(4, 4))]
            : null,
      ),
      clipBehavior: Clip.hardEdge,
      child: Stack(
        children: [
          const Center(
            child: Icon(Icons.settings_input_component,
                size: 56, color: HardlineTeal.onSurfaceVariant),
          ),
          if (caption != null)
            Positioned(
              left: 12,
              bottom: 12,
              child: Container(
                color: HardlineTeal.primary,
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                child: Text(caption!,
                    style: _spaceGrotesk(
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                        color: HardlineTeal.onPrimary)),
              ),
            ),
        ],
      ),
    );
  }
}

// ---------------------------------------------------------------------------
// Quick links grid — 2 columns mobile & tablet, 4 columns desktop (matches
// the source's grid-cols-2 / md:grid-cols-2 / lg:grid-cols-4).
// ---------------------------------------------------------------------------

class _QuickLinksGrid extends StatelessWidget {
  const _QuickLinksGrid({
    required this.tier,
    this.onVideoLibrary,
    this.onOrderTracking,
    this.onFindTech,
    this.onAboutUs,
  });

  final _Tier tier;
  final VoidCallback? onVideoLibrary;
  final VoidCallback? onOrderTracking;
  final VoidCallback? onFindTech;
  final VoidCallback? onAboutUs;

  @override
  Widget build(BuildContext context) {
    final items = [
      (
        icon: tier == _Tier.mobile ? Icons.menu_book : Icons.play_circle,
        label: tier == _Tier.mobile ? 'GUIDES' : 'Video Library',
        desc: tier == _Tier.mobile
            ? null
            : 'Visual teardowns and step-by-step part replacements for all major brands.',
        onTap: onVideoLibrary,
      ),
      (
        icon: tier == _Tier.mobile ? Icons.settings_alert : Icons.local_shipping,
        label: tier == _Tier.mobile ? 'PARTS' : 'Order Tracking',
        desc: tier == _Tier.mobile
            ? null
            : 'Check the status of your OEM replacement parts and logistics timeline.',
        onTap: onOrderTracking,
      ),
      (
        icon: tier == _Tier.mobile ? Icons.analytics : Icons.engineering,
        label: tier == _Tier.mobile ? 'DIAGNOSTICS' : 'Find a Tech',
        desc: tier == _Tier.mobile
            ? null
            : 'Too complex? Connect with certified local technicians for hands-on assistance.',
        onTap: onFindTech,
      ),
      (
        icon: tier == _Tier.mobile ? Icons.support_agent : Icons.info_outline,
        label: tier == _Tier.mobile ? 'TECHS' : 'About Us',
        desc: tier == _Tier.mobile
            ? null
            : 'Our mission is to end the cycle of unnecessary unit replacements through education.',
        onTap: onAboutUs,
      ),
    ];

    final crossAxisCount = tier == _Tier.desktop ? 4 : 2;
    final padding = tier == _Tier.desktop
        ? const EdgeInsets.fromLTRB(64, 48, 64, 48)
        : const EdgeInsets.fromLTRB(24, 0, 24, 24);

    return Padding(
      padding: padding,
      child: GridView.count(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        crossAxisCount: crossAxisCount,
        mainAxisSpacing: tier == _Tier.desktop ? 24 : 16,
        crossAxisSpacing: tier == _Tier.desktop ? 24 : 16,
        childAspectRatio: tier == _Tier.desktop ? 1.1 : 1.0,
        children: [
          for (final item in items)
            _QuickLinkCard(
              icon: item.icon,
              label: item.label,
              description: item.desc,
              onTap: item.onTap,
            ),
        ],
      ),
    );
  }
}

class _QuickLinkCard extends StatefulWidget {
  const _QuickLinkCard(
      {required this.icon, required this.label, this.description, this.onTap});
  final IconData icon;
  final String label;
  final String? description;
  final VoidCallback? onTap;

  @override
  State<_QuickLinkCard> createState() => _QuickLinkCardState();
}

class _QuickLinkCardState extends State<_QuickLinkCard> {
  bool _hover = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _hover = true),
      onExit: (_) => setState(() => _hover = false),
      child: Semantics(
        button: true,
        label: widget.description != null
            ? '${widget.label}. ${widget.description}'
            : widget.label,
        child: InkWell(
        onTap: widget.onTap,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 100),
          decoration: BoxDecoration(
            color: _hover ? HardlineTeal.primary : Colors.white,
            border: Border.all(color: HardlineTeal.primary, width: 3),
            boxShadow: const [
              BoxShadow(color: HardlineTeal.primary, offset: Offset(4, 4)),
            ],
          ),
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(widget.icon,
                  size: widget.description != null ? 36 : 30,
                  color: _hover ? HardlineTeal.onPrimary : HardlineTeal.primary),
              const SizedBox(height: 8),
              Text(
                widget.label,
                style: _spaceGrotesk(
                  fontSize: widget.description != null ? 18 : 13,
                  fontWeight: FontWeight.bold,
                  color: _hover ? HardlineTeal.onPrimary : HardlineTeal.primary,
                ),
              ),
              if (widget.description != null) ...[
                const SizedBox(height: 6),
                Text(
                  widget.description!,
                  style: _spaceGrotesk(
                    fontSize: 13,
                    color: (_hover ? HardlineTeal.onPrimary : HardlineTeal.primary)
                        .withOpacity(0.7),
                  ),
                ),
              ],
            ],
          ),
        ),
        ),
      ),
    );
  }
}

// ---------------------------------------------------------------------------
// Marquee ticker (desktop only, matches the source's scrolling status strip)
// ---------------------------------------------------------------------------

class _MarqueeTicker extends StatefulWidget {
  const _MarqueeTicker();

  @override
  State<_MarqueeTicker> createState() => _MarqueeTickerState();
}

class _MarqueeTickerState extends State<_MarqueeTicker>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  final _scrollController = ScrollController();

  static const _text =
      'HVAC PROTOCOL V.4.02   •   VOLTAGE WARNING: 240V SYSTEMS   •   OEM CERTIFIED PARTS ONLY   •   DIAGNOSTIC ENGINE: READY   •   ';

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 20),
    )..addListener(() {
        if (!_scrollController.hasClients) return;
        final max = _scrollController.position.maxScrollExtent;
        _scrollController.jumpTo(max * _controller.value);
      });
    _controller.repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Purely decorative/ambient (the same safety copy is exposed properly
    // elsewhere -- the footer warning box on desktop/tablet, the teal status
    // card on mobile) so it's excluded from the semantics tree rather than
    // read out 3x over by screen readers, per the audit's guidance to mark
    // decorative repeating elements aria-hidden.
    return ExcludeSemantics(
      child: Container(
        color: HardlineTeal.primary,
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: SingleChildScrollView(
          controller: _scrollController,
          scrollDirection: Axis.horizontal,
          physics: const NeverScrollableScrollPhysics(),
          child: Text(
            _text * 3,
            maxLines: 1,
            softWrap: false,
            style: _spaceGrotesk(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.2,
              color: HardlineTeal.onPrimary,
            ),
          ),
        ),
      ),
    );
  }
}

// ---------------------------------------------------------------------------
// "Identify the failure before you buy" (tablet + desktop only — Stitch's
// own mobile export stops after the status card, so mobile keeps a shorter
// funnel straight to the sticky "Start Diagnosis" CTA).
// ---------------------------------------------------------------------------

class _IdentifyFailureSection extends StatelessWidget {
  const _IdentifyFailureSection({required this.tier, this.onLearnBasics});
  final _Tier tier;
  final VoidCallback? onLearnBasics;

  @override
  Widget build(BuildContext context) {
    final isDesktop = tier == _Tier.desktop;
    final textColumn = Container(
      decoration: const BoxDecoration(
        border: Border(left: BorderSide(color: HardlineTeal.primary, width: 8)),
      ),
      padding: const EdgeInsets.only(left: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('CRITICAL PROTOCOL',
              style: _spaceGrotesk(
                  fontSize: 13, fontWeight: FontWeight.bold, color: HardlineTeal.error)),
          const SizedBox(height: 8),
          Text(
            'Identify the failure\nbefore you buy.',
            style: _spaceGrotesk(
                fontSize: isDesktop ? 40 : 28, fontWeight: FontWeight.w900, height: 1.15),
          ),
          const SizedBox(height: 16),
          Text(
            'Don\'t guess. Our diagnostic tool matches your unit\'s symptoms to '
            'specific faulty components, saving you hundreds in "trial and error" '
            'parts buying.',
            style: _spaceGrotesk(fontSize: 18, fontWeight: FontWeight.w500, height: 1.5),
          ),
          const SizedBox(height: 24),
          OutlinedButton(
            onPressed: onLearnBasics,
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.white,
              side: const BorderSide(color: HardlineTeal.primary, width: 4),
              shape: const RoundedRectangleBorder(),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('LEARN THE BASICS',
                    style: _spaceGrotesk(
                        fontWeight: FontWeight.bold, color: HardlineTeal.primary)),
                const SizedBox(width: 12),
                const Icon(Icons.menu_book, color: HardlineTeal.primary, size: 20),
              ],
            ),
          ),
        ],
      ),
    );

    final imagesGrid = Row(
      children: [
        Expanded(
          child: AspectRatio(
            aspectRatio: 1,
            child: _DiagramPlaceholder(caption: null, shadow: false),
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(top: 32),
            child: AspectRatio(
              aspectRatio: 1,
              child: _DiagramPlaceholder(caption: null, shadow: false),
            ),
          ),
        ),
      ],
    );

    final padding = isDesktop
        ? const EdgeInsets.fromLTRB(64, 64, 64, 64)
        : const EdgeInsets.fromLTRB(48, 32, 48, 32);

    if (isDesktop) {
      return Padding(
        padding: padding,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(child: textColumn),
            const SizedBox(width: 32),
            Expanded(child: imagesGrid),
          ],
        ),
      );
    }
    return Padding(
      padding: padding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          textColumn,
          const SizedBox(height: 24),
          imagesGrid,
        ],
      ),
    );
  }
}

class _MobileStatusCard extends StatelessWidget {
  const _MobileStatusCard();

  @override
  Widget build(BuildContext context) {
    // aria-live equivalent per the audit: this is the safety-critical
    // message on mobile (there's no separate marquee ticker at this tier),
    // so it's announced as a live region rather than silently present.
    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 0, 24, 24),
      child: Semantics(
        liveRegion: true,
        child: Container(
        decoration: BoxDecoration(
          color: HardlineTeal.teal,
          border: Border.all(color: HardlineTeal.primary, width: 3),
        ),
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('CURRENT STATUS',
                      style: _spaceGrotesk(fontSize: 12, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 4),
                  Text(
                    'HIGH VOLTAGE WARNING: DISCONNECT POWER BEFORE ENTRY',
                    style: _spaceGrotesk(fontSize: 13, fontWeight: FontWeight.w900),
                  ),
                ],
              ),
            ),
            const Icon(Icons.warning_amber_rounded, size: 36, color: HardlineTeal.primary),
          ],
        ),
        ),
      ),
    );
  }
}

// ---------------------------------------------------------------------------
// Footer (tablet + desktop)
// ---------------------------------------------------------------------------

class _Footer extends StatelessWidget {
  const _Footer();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: HardlineTeal.primary,
      padding: const EdgeInsets.fromLTRB(48, 48, 48, 48),
      child: Wrap(
        runSpacing: 32,
        children: [
          SizedBox(
            width: 280,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('DIY AC REPAIR',
                    style: _spaceGrotesk(
                        fontSize: 18,
                        fontWeight: FontWeight.w900,
                        color: HardlineTeal.onPrimary)),
                const SizedBox(height: 12),
                Text(
                  'PROVIDING STRUCTURAL CLARITY AND MECHANICAL EMPOWERMENT SINCE 2024.',
                  style: _spaceGrotesk(
                      fontSize: 11,
                      letterSpacing: 1,
                      color: HardlineTeal.onPrimary.withOpacity(0.7)),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                for (final label in ['SITEMAP', 'LEGAL', 'SAFETY PROTOCOLS', 'API', 'CONTACT'])
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Text(label,
                        style: _spaceGrotesk(
                            fontSize: 11,
                            letterSpacing: 1,
                            color: HardlineTeal.onPrimary
                                .withOpacity(label == 'SAFETY PROTOCOLS' ? 1 : 0.7))),
                  ),
              ],
            ),
          ),
          SizedBox(
            width: 320,
            child: Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                border: Border.all(color: HardlineTeal.onPrimary.withOpacity(0.2)),
                color: HardlineTeal.onPrimary.withOpacity(0.1),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(Icons.warning_amber_rounded, color: HardlineTeal.error, size: 20),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Text(
                      'VOLTAGE WARNING: HIGH VOLTAGE SYSTEMS REQUIRE CERTIFIED HANDLING. '
                      'ALWAYS DISCONNECT POWER BEFORE OPENING CABINET.',
                      style: _spaceGrotesk(
                          fontSize: 10, color: HardlineTeal.onPrimary, height: 1.4),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ---------------------------------------------------------------------------
// FAB (tablet + desktop) / sticky bottom CTA (mobile)
// ---------------------------------------------------------------------------

class _Fab extends StatelessWidget {
  const _Fab({this.onTap});
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 32,
      right: 32,
      child: InkWell(
        onTap: onTap,
        child: Container(
          width: 64,
          height: 64,
          decoration: BoxDecoration(
            color: HardlineTeal.teal,
            border: Border.all(color: HardlineTeal.primary, width: 4),
            boxShadow: const [
              BoxShadow(color: HardlineTeal.primary, offset: Offset(4, 4)),
            ],
          ),
          child: const Icon(Icons.build, color: HardlineTeal.primary, size: 28),
        ),
      ),
    );
  }
}

class _MobileStickyCta extends StatelessWidget {
  const _MobileStickyCta({this.onStartDiagnosis});
  final VoidCallback? onStartDiagnosis;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0,
      right: 0,
      bottom: 0,
      child: Container(
        padding: const EdgeInsets.all(16),
        color: HardlineTeal.surface.withOpacity(0.92),
        child: SizedBox(
          height: 56,
          child: ElevatedButton(
            onPressed: onStartDiagnosis,
            style: ElevatedButton.styleFrom(
              backgroundColor: HardlineTeal.primary,
              foregroundColor: HardlineTeal.onPrimary,
              shape: const RoundedRectangleBorder(),
              elevation: 0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.bolt),
                const SizedBox(width: 10),
                Text('START DIAGNOSIS',
                    style: _spaceGrotesk(
                        fontSize: 18, fontWeight: FontWeight.bold, letterSpacing: 1)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

TextStyle _spaceGrotesk({
  required double fontSize,
  FontWeight fontWeight = FontWeight.normal,
  Color color = HardlineTeal.primary,
  double? letterSpacing,
  double? height,
  Color? backgroundColor,
}) {
  return GoogleFonts.spaceGrotesk(
    fontSize: fontSize,
    fontWeight: fontWeight,
    color: color,
    letterSpacing: letterSpacing,
    height: height,
    backgroundColor: backgroundColor,
  );
}
