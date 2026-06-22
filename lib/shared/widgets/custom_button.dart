import 'package:flutter/material.dart';
import '../../core/theme/app_colors.dart';

/// Defines the visual style of CustomButton
enum ButtonStyle2 { filled, outlined }

/// CustomButton is the reusable button used throughout the portfolio.
/// It comes in two styles: filled (purple bg) and outlined (purple border).
///
/// Usage:
/// CustomButton(label: 'View Projects', onTap: () {})
/// CustomButton(label: 'Download CV', onTap: () {}, style: ButtonStyle2.outlined)
class CustomButton extends StatefulWidget {
  /// Button label text
  final String label;

  /// Callback when button is tapped
  final VoidCallback onTap;

  /// Optional icon shown before the label
  final IconData? icon;

  /// Filled = purple background, Outlined = purple border
  final ButtonStyle2 style;

  const CustomButton({
    super.key,
    required this.label,
    required this.onTap,
    this.icon,
    this.style = ButtonStyle2.filled,
  });

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  /// Tracks whether the mouse is hovering over the button
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final accentColor = isDark ? AppColors.primaryDark : AppColors.primaryLight;
    final isFilled = widget.style == ButtonStyle2.filled;

    return MouseRegion(
      // Update hover state when mouse enters/exits
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: widget.onTap,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          decoration: BoxDecoration(
            // Filled: purple bg, Outlined: transparent bg
            color: isFilled
                ? (_isHovered ? AppColors.primaryGlow : accentColor)
                : Colors.transparent,
            borderRadius: BorderRadius.circular(999),
            border: Border.all(
              color: accentColor,
              width: 1,
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Optional icon
              if (widget.icon != null) ...[
                Icon(
                  widget.icon,
                  size: 16,
                  color: isFilled
                      ? (isDark ? AppColors.darkBg : AppColors.lightSurface)
                      : accentColor,
                ),
                const SizedBox(width: 8),
              ],

              // Label
              Text(
                widget.label,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: isFilled
                      ? (isDark ? AppColors.darkBg : AppColors.lightSurface)
                      : accentColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
