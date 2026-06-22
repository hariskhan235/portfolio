import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'core/theme/app_theme.dart';
import 'features/hero/bloc/hero_bloc.dart';
import 'features/about/bloc/about_bloc.dart';
import 'features/skills/bloc/skills_bloc.dart';
import 'features/projects/bloc/projects_bloc.dart';
import 'features/experience/bloc/experience_bloc.dart';
import 'features/contact/bloc/contact_bloc.dart';
import 'shared/widgets/theme_cubit.dart';
import 'app.dart';

void main() {
  // Ensures Flutter is fully initialised before running the app
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const PortfolioApp());
}
