import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// ThemeCubit manages the dark/light mode toggle across the entire app.
/// It extends Cubit<ThemeMode> meaning its state is a ThemeMode value.
class ThemeCubit extends Cubit<ThemeMode> {
  // Start in dark mode by default
  ThemeCubit() : super(ThemeMode.dark);

  /// Toggles between dark and light mode
  void toggleTheme() {
    emit(state == ThemeMode.dark ? ThemeMode.light : ThemeMode.dark);
  }

  /// Returns true if current theme is dark
  bool get isDark => state == ThemeMode.dark;
}
