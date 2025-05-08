import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testing_flutter/simple_bloc_observer.dart';

import 'app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyD-xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
      appId: "1:1234567890:android:xxxxxxxxxxxxxxxxxxxxxx",
      messagingSenderId: "1234567890",
      projectId: "your-project-id",
    ),
  );

  Bloc.observer = SimpleBlocObserver();

  runApp(const MyApp());
}

