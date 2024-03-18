
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vishwamitra_uidesign/createProfile.dart';
import 'package:vishwamitra_uidesign/detailsPage.dart';
import 'package:vishwamitra_uidesign/firstScreen.dart';
import 'package:vishwamitra_uidesign/homeScreen.dart';
import 'package:vishwamitra_uidesign/langauage.dart';




void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
             home: LanguageSelection(), 
    );
  }
}








// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const HomePage(),
//     );
//   }
// }



