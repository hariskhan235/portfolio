import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import '../../../core/constants/app_constants.dart';

// ─── EVENTS ───────────────────────────────────────────────────
abstract class SkillsEvent extends Equatable {
  @override
  List<Object> get props => [];
}

/// Fired when the skills section first loads
class LoadSkills extends SkillsEvent {}

// ─── STATES ───────────────────────────────────────────────────
abstract class SkillsState extends Equatable {
  @override
  List<Object> get props => [];
}

/// Initial state before anything loads
class SkillsInitial extends SkillsState {}

/// State when skills data is successfully loaded
class SkillsLoaded extends SkillsState {
  /// List of skills from AppConstants
  /// Each skill is a map with 'name' and 'level' (0.0 to 1.0)
  final List<Map<String, dynamic>> skills;

  SkillsLoaded({required this.skills});

  @override
  List<Object> get props => [skills];
}

// ─── BLOC ─────────────────────────────────────────────────────
/// SkillsBloc listens to SkillsEvents and emits SkillsStates
class SkillsBloc extends Bloc<SkillsEvent, SkillsState> {
  SkillsBloc() : super(SkillsInitial()) {
    on<LoadSkills>(_onLoadSkills);
  }

  void _onLoadSkills(LoadSkills event, Emitter<SkillsState> emit) {
    // Load skills list from AppConstants
    emit(SkillsLoaded(skills: AppConstants.skills));
  }
}
