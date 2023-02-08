import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:goodnight_ai/global/PageRouter.dart';
import 'package:goodnight_ai/specialists/work_manager.dart';
import 'specialists/firebase_options.dart';

Future<void> initializeFirebase() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}

Future<void> main() async {
  // needs to be initialized before using workmanager package
  WidgetsFlutterBinding.ensureInitialized();
  // Init firebase
  initializeFirebase();
  // Init bg worker
  WorkManagerRunner();
  //Run app
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          primaryColor: Colors.indigoAccent,
          useMaterial3: true),
      home: const PageRouter(),
    );
  }
}
