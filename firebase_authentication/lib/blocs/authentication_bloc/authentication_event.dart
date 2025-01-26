part of 'authentication_bloc.dart';

@immutable
abstract class AuthenticationEvent extends Equatable {
  const AuthenticationEvent();

  @override
  List<Object> get props => [];
}

@immutable
class AuthenticationUserChanged extends AuthenticationEvent {
  final User? user;

  const AuthenticationUserChanged(this.user);
}
