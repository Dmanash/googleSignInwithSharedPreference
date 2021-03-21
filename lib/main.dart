import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'login/landingPage.dart';
import 'login/loginScreen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Test());
  }
}
