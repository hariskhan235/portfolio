import 'package:flutter/material.dart';

/// SectionWrapper wraps every portfolio section with consistent
/// padding and a max width so the layout looks great on all screen sizes.
///
/// Usage:
/// SectionWrapper(child: HeroSection())
/// SectionWrapper(child: AboutSection(), color: Colors.red)
class SectionWrapper extends StatelessWidget {
  /// The section widget to wrap
  final Widget child;

  /// Optional background colour override
  final Color? color;

  const SectionWrapper({
    super.key,
    required this.child,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: color,
      child: Center(
        child: ConstrainedBox(
          // Max width keeps content readable on very wide screens
          constraints: const BoxConstraints(maxWidth: 1100),
          child: Padding(
            // Responsive padding: more on desktop, less on mobile
            padding: EdgeInsets.symmetric(
              horizontal: _horizontalPadding(context),
              vertical: 80,
            ),
            child: child,
          ),
        ),
      ),
    );
  }

  /// Returns padding based on screen width
  double _horizontalPadding(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    if (width > 1024) return 80; // desktop
    if (width > 600) return 40; // tablet
    return 24; // mobile
  }
}
