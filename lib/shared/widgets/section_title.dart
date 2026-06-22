import 'package:flutter/material.dart';
import '../../core/theme/app_colors.dart';

/// SectionTitle is the reusable heading used at the top of every section.
/// It shows the title text with a purple underline accent beneath it.
///
/// Usage:
/// SectionTitle(title: 'About Me')
/// SectionTitle(title: 'Projects', subtitle: 'Things I have built')
class SectionTitle extends StatelessWidget {
  /// The main heading text
  final String title;

  /// Optional smaller text shown below the title
  final String? subtitle;

  const SectionTitle({
    super.key,
    required this.title,
    this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final accentColor = isDark ? AppColors.primaryDark : AppColors.primaryLight;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Main title text
        Text(
          title,
          style: Theme.of(context).textTheme.headlineMedium,
        ),

        const SizedBox(height: 8),

        // Purple underline accent bar
        Container(
          width: 48,
          height: 3,
          decoration: BoxDecoration(
            color: accentColor,
            borderRadius: BorderRadius.circular(2),
          ),
        ),

        // Optional subtitle
        if (subtitle != null) ...[
          const SizedBox(height: 10),
          Text(
            subtitle!,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      ],
    );
  }
}
