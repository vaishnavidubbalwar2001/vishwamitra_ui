
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:vishwamitra_uidesign/createProfile.dart';
import 'package:vishwamitra_uidesign/firstScreen.dart';
import 'package:vishwamitra_uidesign/langauage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        // home: LanguageSelection(),
      //  home: MyCustomLayout(),
        // home: LanguageSelectionPage(),
//  home: HomePage(),
  home:  createProfile(),
    );
  }
}



// import 'package:flutter/material.dart';
// import 'package:vishwamitra_uidesign/langauage.dart';



// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: LanguageSelectionPage(),
//     );
//   }
// }