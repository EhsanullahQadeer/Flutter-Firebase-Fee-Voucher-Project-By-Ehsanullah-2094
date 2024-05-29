import 'package:feeproject/Studentscreen.dart';
import 'package:feeproject/Studentscreen.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(

    options: FirebaseOptions(apiKey: "AIzaSyBPL9x1jf3Rlj61BJBMjw7W-lMG6K8j_l8",
        appId: "1:408776344184:android:8d696fec9695b7fe07e38d",
        messagingSenderId: "408776344184",
        projectId: "feeproject-b858b")
  );

  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Studentscreen(),
    );

  }
}