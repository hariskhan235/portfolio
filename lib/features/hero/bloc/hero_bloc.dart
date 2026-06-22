import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import '../../../core/constants/app_constants.dart';

// ─── EVENTS ───────────────────────────────────────────────────
/// Events are things that happen — like the page loading
abstract class HeroEvent extends Equatable {
  @override
  List<Object> get props => [];
}

/// Fired when the hero section first loads
class LoadHero extends HeroEvent {}

// ─── STATES ───────────────────────────────────────────────────
/// States represent what the UI should show at any given moment
abstract class HeroState extends Equatable {
  @override
  List<Object> get props => [];
}

/// Initial state before anything loads
class HeroInitial extends HeroState {}

/// State when hero data is successfully loaded
class HeroLoaded extends HeroState {
  final String name;
  final String role;
  final String tagline;
  final bool isAvailable;
  final String availability;
  final String statProjects;
  final String statProjectsLabel;
  final String statYears;
  final String statYearsLabel;
  final String statClients;
  final String statClientsLabel;

  HeroLoaded({
    required this.name,
    required this.role,
    required this.tagline,
    required this.isAvailable,
    required this.availability,
    required this.statProjects,
    required this.statProjectsLabel,
    required this.statYears,
    required this.statYearsLabel,
    required this.statClients,
    required this.statClientsLabel,
  });

  @override
  List<Object> get props => [name, role, tagline, isAvailable];
}

// ─── BLOC ─────────────────────────────────────────────────────
/// HeroBloc listens to HeroEvents and emits HeroStates
class HeroBloc extends Bloc<HeroEvent, HeroState> {
  HeroBloc() : super(HeroInitial()) {
    // When LoadHero event fires, load data from AppConstants
    on<LoadHero>(_onLoadHero);
  }

  void _onLoadHero(LoadHero event, Emitter<HeroState> emit) {
    // Load all hero data from AppConstants and emit loaded state
    emit(HeroLoaded(
      name: AppConstants.name,
      role: AppConstants.role,
      tagline: AppConstants.tagline,
      isAvailable: AppConstants.isAvailable,
      availability: AppConstants.availabilityStatus,
      statProjects: AppConstants.statProjects,
      statProjectsLabel: AppConstants.statProjectsLabel,
      statYears: AppConstants.statYears,
      statYearsLabel: AppConstants.statYearsLabel,
      statClients: AppConstants.statClients,
      statClientsLabel: AppConstants.statClientsLabel,
    ));
  }
}
