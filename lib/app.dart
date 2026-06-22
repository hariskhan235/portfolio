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
//import 'features/hero/view/home_page.dart';

/// Root widget of the portfolio app.
/// MultiBlocProvider makes all BLoCs available to every widget in the tree.
class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        // ThemeCubit — manages dark/light mode toggle
        BlocProvider(create: (_) => ThemeCubit()),

        // HeroBloc — manages hero section state
        BlocProvider(create: (_) => HeroBloc()..add(LoadHero())),

        // AboutBloc — manages about section state
        BlocProvider(create: (_) => AboutBloc()..add(LoadAbout())),

        // SkillsBloc — manages skills section state
        BlocProvider(create: (_) => SkillsBloc()..add(LoadSkills())),

        // ProjectsBloc — manages projects section state
        BlocProvider(create: (_) => ProjectsBloc()..add(LoadProjects())),

        // ExperienceBloc — manages experience section state
        BlocProvider(create: (_) => ExperienceBloc()..add(LoadExperience())),

        // ContactBloc — manages contact form state
        BlocProvider(create: (_) => ContactBloc()),
      ],

      // BlocBuilder listens to ThemeCubit and rebuilds the app when theme changes
      child: BlocBuilder<ThemeCubit, ThemeMode>(
        builder: (context, themeMode) {
          return MaterialApp(
            title: 'Haris Khan | Flutter Developer',

            // Hide the debug banner in the top right corner
            debugShowCheckedModeBanner: false,

            // Apply our custom purple dark and light themes
            theme: AppTheme.lightTheme,
            darkTheme: AppTheme.darkTheme,
            themeMode: themeMode,

            // Home page contains all sections stacked in a scroll view
            home: const HomePage(),
          );
        },
      ),
    );
  }
}

/// HomePage is the main scroll view that stacks all portfolio sections.
/// We will fill this in section by section as we build each feature.
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Portfolio coming soon...'),
      ),
    );
  }
}
