import 'dart:async';
import 'package:flutter/foundation.dart' show immutable;

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:user_repository/user_repository.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  final UserRepository userRepository;
  late final StreamSubscription<UserModel> _userSubscription;

  AuthenticationBloc({required this.userRepository})
      : super(const AuthenticationState.unknown()) {
    _userSubscription = userRepository.user.listen(
      (user) {
        add(AuthenticationUserChanged(user));
      },
    );

    on<AuthenticationUserChanged>(
      (event, emit) {
        if (event.user == UserModel.empty) {
          emit(
            const AuthenticationState.unauthenticated(),
          );
        } else {
          emit(
            AuthenticationState.authenticated(event.user),
          );
        }
      },
    );
  }

  @override
  Future<void> close() {
    _userSubscription.cancel();
    return super.close();
  }
}
