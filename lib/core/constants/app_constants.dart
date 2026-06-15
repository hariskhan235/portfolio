/// AppConstants holds all the personal content for the portfolio.
/// ✅ This is the ONLY file you need to edit when updating your personal info.
/// After editing, just do git push and your live site updates automatically.
class AppConstants {
  AppConstants._();

  // ─── PERSONAL INFO ────────────────────────────────────────────
  static const String name = 'Haris Khan';
  static const String role = 'Flutter Developer';
  static const String tagline =
      'Building beautiful cross-platform apps with Flutter & Dart';
  static const String about =
      'I am a passionate Flutter developer with experience building '
      'cross-platform mobile and web applications. I love clean architecture, '
      'great user experiences, and writing maintainable code using BLoC. '
      'Always looking for exciting new projects to work on.';
  static const String location = 'UK';
  static const String availabilityStatus = 'Available for work';
  static const bool isAvailable = true;

  // ─── STATS (shown next to avatar in hero) ─────────────────────
  static const String statProjects = '10+';
  static const String statProjectsLabel = 'Projects';
  static const String statYears = '3';
  static const String statYearsLabel = 'Years Exp';
  static const String statClients = '5';
  static const String statClientsLabel = 'Clients';

  // ─── SKILLS (name, proficiency 0.0 to 1.0) ───────────────────
  /// Each skill is a map with 'name' and 'level' (0.0 = 0%, 1.0 = 100%)
  static const List<Map<String, dynamic>> skills = [
    {'name': 'Flutter', 'level': 0.95},
    {'name': 'Dart', 'level': 0.90},
    {'name': 'BLoC', 'level': 0.85},
    {'name': 'Firebase', 'level': 0.80},
    {'name': 'REST APIs', 'level': 0.75},
    {'name': 'Git', 'level': 0.90},
    {'name': 'Figma', 'level': 0.70},
    {'name': 'CI/CD', 'level': 0.65},
  ];

  // ─── PROJECTS ─────────────────────────────────────────────────
  /// Each project has: name, description, tech stack tags, github, live url
  static const List<Map<String, dynamic>> projects = [
    {
      'name': 'E-Commerce App',
      'description':
          'A full Flutter shopping app with Firebase backend, BLoC state management, and Stripe payment integration.',
      'stack': ['Flutter', 'Firebase', 'BLoC', 'Stripe'],
      'github': 'https://github.com/hariskhan235',
      'live': '', // add live URL when available
      'emoji': '🛒',
    },
    {
      'name': 'Task Manager',
      'description':
          'A cross-platform productivity app with offline-first architecture, local notifications, and cloud sync.',
      'stack': ['Flutter', 'Hive', 'BLoC'],
      'github': 'https://github.com/hariskhan235',
      'live': '',
      'emoji': '✅',
    },
    {
      'name': 'Portfolio Website',
      'description':
          'This portfolio — a fully responsive Flutter web app with dark/light mode, animations, and BLoC.',
      'stack': ['Flutter Web', 'BLoC', 'Vercel'],
      'github': 'https://github.com/hariskhan235/portfolion_website',
      'live': '', // will be added after Vercel deployment
      'emoji': '🌐',
    },
  ];

  // ─── EXPERIENCE ───────────────────────────────────────────────
  /// Each role has: title, company, dates, description
  static const List<Map<String, dynamic>> experience = [
    {
      'title': 'Flutter Developer',
      'company': 'Freelance',
      'dates': '2022 – Present',
      'description': 'Building cross-platform mobile and web apps for clients.',
    },
    {
      'title': 'Junior Mobile Developer',
      'company': 'Tech Startup',
      'dates': '2021 – 2022',
      'description':
          'Developed and maintained Flutter apps for iOS and Android.',
    },
  ];

  // ─── CONTACT & SOCIALS ────────────────────────────────────────
  static const String email =
      'haris@email.com'; // ← update with your real email
  static const String github = 'https://github.com/hariskhan235';
  static const String linkedin =
      'https://linkedin.com/in/hariskhan'; // ← update
  static const String cvUrl = ''; // ← add your CV link when ready
}
