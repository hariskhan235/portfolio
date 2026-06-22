import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import '../../../core/constants/app_constants.dart';

// ─── EVENTS ───────────────────────────────────────────────────
abstract class AboutEvent extends Equatable {
  @override
  List<Object> get props => [];
}

/// Fired when the about section first loads
class LoadAbout extends AboutEvent {}

// ─── STATES ───────────────────────────────────────────────────
abstract class AboutState extends Equatable {
  @override
  List<Object> get props => [];
}

/// Initial state before anything loads
class AboutInitial extends AboutState {}

/// State when about data is successfully loaded
class AboutLoaded extends AboutState {
  final String name;
  final String about;
  final String location;

  AboutLoaded({
    required this.name,
    required this.about,
    required this.location,
  });

  @override
  List<Object> get props => [name, about, location];
}

// ─── BLOC ─────────────────────────────────────────────────────
/// AboutBloc listens to AboutEvents and emits AboutStates
class AboutBloc extends Bloc<AboutEvent, AboutState> {
  AboutBloc() : super(AboutInitial()) {
    on<LoadAbout>(_onLoadAbout);
  }

  void _onLoadAbout(LoadAbout event, Emitter<AboutState> emit) {
    // Load about data from AppConstants
    emit(AboutLoaded(
      name: AppConstants.name,
      about: AppConstants.about,
      location: AppConstants.location,
    ));
  }
}
