import 'package:firebase/firebase.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
h  runApp(MaterialApp(debugShowCheckedModeBanner: false,
  home: firebase()));
}

