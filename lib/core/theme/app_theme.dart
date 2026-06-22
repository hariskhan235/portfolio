import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart';

/// AppTheme defines the complete dark and light theme for the portfolio.
/// All colours come from AppColors so changing the palette is done in one place.
class AppTheme {
  AppTheme._();

  // ─── DARK THEME ───────────────────────────────────────────────
  static ThemeData get darkTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,

      // Background colours
      scaffoldBackgroundColor: AppColors.darkBg,

      // Colour scheme
      colorScheme: const ColorScheme.dark(
        primary: AppColors.primaryDark,
        secondary: AppColors.primaryDark,
        surface: AppColors.darkSurface,
        onPrimary: AppColors.darkBg,
        onSurface: AppColors.darkTextPrimary,
      ),

      // Typography — using Google Fonts Inter for a clean modern look
      textTheme:
          //GoogleFonts.interTextTheme(
          const TextTheme(
        // Hero name — large and bold
        displayLarge: TextStyle(
          fontSize: 48,
          fontWeight: FontWeight.w600,
          color: AppColors.darkTextPrimary,
          letterSpacing: -1.5,
        ),
        // Section titles
        headlineMedium: TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.w600,
          color: AppColors.darkTextPrimary,
          letterSpacing: -0.5,
        ),
        // Card titles
        titleLarge: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w500,
          color: AppColors.darkTextPrimary,
        ),
        // Body text
        bodyLarge: TextStyle(
          fontSize: 16,
          color: AppColors.darkTextMuted,
          height: 1.6,
        ),
        bodyMedium: TextStyle(
          fontSize: 14,
          color: AppColors.darkTextMuted,
          height: 1.6,
        ),
        // Small labels
        labelSmall: TextStyle(
          fontSize: 12,
          color: AppColors.darkTextMuted,
          letterSpacing: 0.5,
        ),
        //  ),
      ),

      // AppBar — transparent so it blends with background
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.darkBg,
        elevation: 0,
        scrolledUnderElevation: 0,
      ),

      // Card styling
      cardTheme: CardThemeData(
        color: AppColors.darkSurface,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: const BorderSide(color: AppColors.darkBorder, width: 0.5),
        ),
      ),

      // Divider
      dividerTheme: const DividerThemeData(
        color: AppColors.darkBorder,
        thickness: 0.5,
      ),
    );
  }

  // ─── LIGHT THEME ──────────────────────────────────────────────
  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,

      // Background colours
      scaffoldBackgroundColor: AppColors.lightBg,

      // Colour scheme
      colorScheme: const ColorScheme.light(
        primary: AppColors.primaryLight,
        secondary: AppColors.primaryLight,
        surface: AppColors.lightSurface,
        onPrimary: AppColors.lightSurface,
        onSurface: AppColors.lightTextPrimary,
      ),

      // Typography — same font, different colours for light mode
      textTheme:
          //GoogleFonts.interTextTheme(
          const TextTheme(
        // Hero name
        displayLarge: TextStyle(
          fontSize: 48,
          fontWeight: FontWeight.w600,
          color: AppColors.lightTextPrimary,
          letterSpacing: -1.5,
        ),
        // Section titles
        headlineMedium: TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.w600,
          color: AppColors.lightTextPrimary,
          letterSpacing: -0.5,
        ),
        // Card titles
        titleLarge: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w500,
          color: AppColors.lightTextPrimary,
        ),
        // Body text
        bodyLarge: TextStyle(
          fontSize: 16,
          color: AppColors.lightTextMuted,
          height: 1.6,
        ),
        bodyMedium: TextStyle(
          fontSize: 14,
          color: AppColors.lightTextMuted,
          height: 1.6,
        ),
        // Small labels
        labelSmall: TextStyle(
          fontSize: 12,
          color: AppColors.lightTextMuted,
          letterSpacing: 0.5,
        ),
      ),
      //   ),

      // AppBar
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.lightSurface,
        elevation: 0,
        scrolledUnderElevation: 0,
      ),

      // Card styling
      cardTheme: CardThemeData(
        color: AppColors.lightSurface,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: const BorderSide(color: AppColors.lightBorder, width: 0.5),
        ),
      ),

      // Divider
      dividerTheme: const DividerThemeData(
        color: AppColors.lightBorder,
        thickness: 0.5,
      ),
    );
  }
}
