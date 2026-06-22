import 'package:flutter/material.dart';
import '../../core/theme/app_colors.dart';

/// HoverCard wraps content in a card that lifts and glows
/// with a purple border when the mouse hovers over it.
/// Used for project cards and experience items.
///
/// Usage:
/// HoverCard(child: ProjectContent())
class HoverCard extends StatefulWidget {
  /// The content inside the card
  final Widget child;

  /// Optional fixed height for the card
  final double? height;

  const HoverCard({
    super.key,
    required this.child,
    this.height,
  });

  @override
  State<HoverCard> createState() => _HoverCardState();
}

class _HoverCardState extends State<HoverCard> {
  /// Tracks whether mouse is hovering
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final accentColor = isDark ? AppColors.primaryDark : AppColors.primaryLight;
    final borderColor = isDark ? AppColors.darkBorder : AppColors.lightBorder;
    final surfaceColor =
        isDark ? AppColors.darkSurface : AppColors.lightSurface;

    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        height: widget.height,
        decoration: BoxDecoration(
          color: surfaceColor,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            // Purple border on hover, subtle border otherwise
            color: _isHovered ? accentColor : borderColor,
            width: _isHovered ? 1 : 0.5,
          ),
          boxShadow: _isHovered
              ? [
                  BoxShadow(
                    // Purple glow effect on hover
                    color: accentColor.withOpacity(0.15),
                    blurRadius: 20,
                    offset: const Offset(0, 4),
                  )
                ]
              : [],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: widget.child,
        ),
      ),
    );
  }
}
