import 'package:bloc/bloc.dart';
import 'package:firebase_authentication/app.dart';
import 'package:firebase_authentication/firebase_options.dart';
import 'package:firebase_authentication/simple_bloc_observer.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:user_repository/user_repository.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  Bloc.observer = SimpleBlocObserver();

  runApp(
    MyApp(
      FirebaseUserRepo(),
    ),
  );
}
