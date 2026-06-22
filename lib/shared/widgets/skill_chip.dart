import 'package:flutter/material.dart';
import '../../core/theme/app_colors.dart';

/// SkillChip is a small rounded tag used to display tech stack labels
/// on project cards and in the skills section.
///
/// Usage:
/// SkillChip(label: 'Flutter')
/// SkillChip(label: 'Firebase', isHighlighted: true)
class SkillChip extends StatelessWidget {
  /// The text shown inside the chip
  final String label;

  /// Highlighted chips use the purple accent colour
  /// Non-highlighted chips use a subtle border style
  final bool isHighlighted;

  const SkillChip({
    super.key,
    required this.label,
    this.isHighlighted = false,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final accentColor = isDark ? AppColors.primaryDark : AppColors.primaryLight;
    final accentBg = isDark ? AppColors.darkAccentBg : AppColors.lightAccentBg;
    final borderColor =
        isDark ? AppColors.darkChipBorder : AppColors.lightChipBorder;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        // Highlighted chips get the purple accent background
        color: isHighlighted ? accentBg : Colors.transparent,
        borderRadius: BorderRadius.circular(999),
        border: Border.all(
          color: isHighlighted ? accentColor : borderColor,
          width: 0.5,
        ),
      ),
      child: Text(
        label,
        style: TextStyle(
          fontSize: 12,
          color: isHighlighted
              ? accentColor
              : (isDark ? AppColors.darkTextMuted : AppColors.lightTextMuted),
          fontWeight: isHighlighted ? FontWeight.w500 : FontWeight.normal,
        ),
      ),
    );
  }
}
