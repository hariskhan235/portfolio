import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import '../../../core/constants/app_constants.dart';

// ─── EVENTS ───────────────────────────────────────────────────
abstract class ProjectsEvent extends Equatable {
  @override
  List<Object> get props => [];
}

/// Fired when the projects section first loads
class LoadProjects extends ProjectsEvent {}

// ─── STATES ───────────────────────────────────────────────────
abstract class ProjectsState extends Equatable {
  @override
  List<Object> get props => [];
}

/// Initial state before anything loads
class ProjectsInitial extends ProjectsState {}

/// State when projects data is successfully loaded
class ProjectsLoaded extends ProjectsState {
  /// List of projects from AppConstants
  /// Each project has: name, description, stack, github, live, emoji
  final List<Map<String, dynamic>> projects;

  ProjectsLoaded({required this.projects});

  @override
  List<Object> get props => [projects];
}

// ─── BLOC ─────────────────────────────────────────────────────
/// ProjectsBloc listens to ProjectsEvents and emits ProjectsStates
class ProjectsBloc extends Bloc<ProjectsEvent, ProjectsState> {
  ProjectsBloc() : super(ProjectsInitial()) {
    on<LoadProjects>(_onLoadProjects);
  }

  void _onLoadProjects(LoadProjects event, Emitter<ProjectsState> emit) {
    // Load projects list from AppConstants
    emit(ProjectsLoaded(projects: AppConstants.projects));
  }
}
