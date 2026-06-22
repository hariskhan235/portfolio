import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

// ─── EVENTS ───────────────────────────────────────────────────
abstract class ContactEvent extends Equatable {
  @override
  List<Object> get props => [];
}

/// Fired when user taps email button
class ContactEmailTapped extends ContactEvent {}

/// Fired when user taps GitHub button
class ContactGithubTapped extends ContactEvent {}

/// Fired when user taps LinkedIn button
class ContactLinkedinTapped extends ContactEvent {}

// ─── STATES ───────────────────────────────────────────────────
abstract class ContactState extends Equatable {
  @override
  List<Object> get props => [];
}

/// Initial idle state
class ContactInitial extends ContactState {}

/// State when a contact link is being opened
class ContactLinkOpening extends ContactState {
  /// Which link is being opened: 'email', 'github', 'linkedin'
  final String type;
  ContactLinkOpening({required this.type});

  @override
  List<Object> get props => [type];
}

// ─── BLOC ─────────────────────────────────────────────────────
/// ContactBloc handles tapping on contact buttons
/// url_launcher will be used in the UI layer to actually open the links
class ContactBloc extends Bloc<ContactEvent, ContactState> {
  ContactBloc() : super(ContactInitial()) {
    on<ContactEmailTapped>(_onEmailTapped);
    on<ContactGithubTapped>(_onGithubTapped);
    on<ContactLinkedinTapped>(_onLinkedinTapped);
  }

  void _onEmailTapped(ContactEmailTapped event, Emitter<ContactState> emit) {
    emit(ContactLinkOpening(type: 'email'));
  }

  void _onGithubTapped(ContactGithubTapped event, Emitter<ContactState> emit) {
    emit(ContactLinkOpening(type: 'github'));
  }

  void _onLinkedinTapped(
      ContactLinkedinTapped event, Emitter<ContactState> emit) {
    emit(ContactLinkOpening(type: 'linkedin'));
  }
}
