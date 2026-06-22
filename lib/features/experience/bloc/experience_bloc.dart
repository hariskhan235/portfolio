import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import '../../../core/constants/app_constants.dart';

// ─── EVENTS ───────────────────────────────────────────────────
abstract class ExperienceEvent extends Equatable {
  @override
  List<Object> get props => [];
}

/// Fired when the experience section first loads
class LoadExperience extends ExperienceEvent {}

// ─── STATES ───────────────────────────────────────────────────
abstract class ExperienceState extends Equatable {
  @override
  List<Object> get props => [];
}

/// Initial state before anything loads
class ExperienceInitial extends ExperienceState {}

/// State when experience data is successfully loaded
class ExperienceLoaded extends ExperienceState {
  /// List of experience from AppConstants
  /// Each role has: title, company, dates, description
  final List<Map<String, dynamic>> experience;

  ExperienceLoaded({required this.experience});

  @override
  List<Object> get props => [experience];
}

// ─── BLOC ─────────────────────────────────────────────────────
/// ExperienceBloc listens to ExperienceEvents and emits ExperienceStates
class ExperienceBloc extends Bloc<ExperienceEvent, ExperienceState> {
  ExperienceBloc() : super(ExperienceInitial()) {
    on<LoadExperience>(_onLoadExperience);
  }

  void _onLoadExperience(LoadExperience event, Emitter<ExperienceState> emit) {
    // Load experience list from AppConstants
    emit(ExperienceLoaded(experience: AppConstants.experience));
  }
}
