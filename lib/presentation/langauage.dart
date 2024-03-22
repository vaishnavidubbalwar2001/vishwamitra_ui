



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vishwamitra_uinewdesign/presentation/createProfile.dart';
import 'package:vishwamitra_uinewdesign/utils/appColor.dart';


class LanguageSelection extends StatefulWidget {
  @override
  _LanguageSelectionPageState createState() => _LanguageSelectionPageState();
}

class _LanguageSelectionPageState extends State<LanguageSelection> {
  int _selectedLanguageIndex = -1; 


List<Map<String, String>> languages = [
    {'name': 'Marathi', 'script': 'अ'},
    {'name': 'English', 'script': 'A'},
    {'name': 'Hindi', 'script': 'अ'},
    {'name': 'Kannada', 'script': 'ಕ'},
    {'name': 'Bengali', 'script': 'অ'},
    {'name': 'Telugu', 'script': 'అ'},
    {'name': 'Tamil', 'script': 'அ'},
    {'name': 'Gujarati', 'script': 'અ'},
    {'name': 'Oriya', 'script': 'ଅ'},
    {'name': 'Assamese', 'script': 'অ'},
    {'name': 'Malayalam', 'script': 'അ'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text("Choose Language", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            Text("Welcome to Vishwamitra App", style: TextStyle(fontSize: 15) ,),
          ],
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              // padding: const EdgeInsets.all(50.0),
               padding: const EdgeInsets.only(top: 30, right: 50, left: 50) ,
             
               child: GridView.builder(
                itemCount: languages.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 18,
                  mainAxisSpacing: 18,
                  childAspectRatio: 1,
                ),
                itemBuilder: (context, index) {
                  bool isSelected = _selectedLanguageIndex == index;
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        _selectedLanguageIndex = index;
                      });
                    },
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: isSelected ? app_colors.blueBoxShadow : Colors.grey,
                          width: 1,
                        ),
                        boxShadow: isSelected
                            ? [BoxShadow(color: app_colors.blueBoxShadow, spreadRadius: 1, blurRadius: 3)]
                            : [],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                         Text(languages[index]['script']!, style: TextStyle(color: isSelected ? Colors.blue : Colors.black)),
                          Text(languages[index]['name']!, style: TextStyle(color: isSelected ? Colors.blue : Colors.black54)),
                        ],
                      ),
                    ),
                  );
                },

//                 itemBuilder: (context, index) {
//   bool isEnglish = languages[index]['name'] == 'English';
//   bool isSelected = _selectedLanguageIndex == index && isEnglish;

//   return GestureDetector(
//     onTap: () {
//       if (isEnglish) { // Only allow selecting the English language
//         setState(() {
//           _selectedLanguageIndex = index;
//         });
//       }
//     },
//     child: Container(
//       alignment: Alignment.center,
//       decoration: BoxDecoration(
//         color: Colors.white,
//         border: Border.all(
//           color: isSelected ? Colors.blue : Colors.grey,
//           width: 1,
//         ),
//         boxShadow: isSelected
//             ? [BoxShadow(color: Colors.blue.shade400, spreadRadius: 1, blurRadius: 5)]
//             : [],
//         borderRadius: BorderRadius.circular(8),
//       ),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//          Text(languages[index]['script']!, style: TextStyle(color: isSelected ? Colors.blue : Colors.black)),
//           Text(languages[index]['name']!, style: TextStyle(color: isSelected ? Colors.blue : Colors.black54)),
//         ],
//       ),
//     ),
//   );
// },

              ),
            ),
          ),
            Container(
            width: double.infinity,
            height: 130,
            margin: const EdgeInsets.only(left: 25, right: 25,bottom: 50),
            // margin: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 45.0 ),
            // padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: app_colors.mybackgroundBlue,
              // borderRadius: BorderRadius.circular(8), // Optional: rounds the corners
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'please choose a language from above.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color:app_colors. myCustomBlue, 
                    fontSize: 15, 
                  ),
                ),
                 Text(
                  'You can change language from',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: app_colors.myCustomBlue, 
                    fontSize: 15, 
                  ),
                ),
                 Text(
                  'profile setting later',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: app_colors.myCustomBlue, 
                    fontSize: 15, 
                  ),
                ),
              ],
            ),
            
          ),
          // Padding(
          //   padding: const EdgeInsets.all(20),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: SizedBox(
              // width: MediaQuery.of(context).size.width,
                          width:  280,
                          height: 50,
              
              child: CupertinoButton(
                child: Text('Continue'),
               color: _selectedLanguageIndex != -1 ? app_colors.continuebuttonBlue : app_colors.unselectcontinuebuttonBlue,
                onPressed: _selectedLanguageIndex != -1
                    ? () {
        //                showDialog(
        //   context: context,
        //   builder: (BuildContext context) {
        //     // Fetch the selected language's name
        //     String selectedLanguageName = languages[_selectedLanguageIndex]['name']!;
        //     return CupertinoAlertDialog(
        //       title: Text('Language Selected'),
        //       content: Text('You have selected $selectedLanguageName.'),
        //       actions: <Widget>[
        //         CupertinoDialogAction(
        //           child: Text('OK'),
        //           onPressed: () {
        //              Get.to(() =>  CreateProfile());
        //           },
        //         ),
        //       ],
        //     );
        //   },
        // );
         Get.to(() =>  CreateProfile());
                      }
                    : null,
              ),
                        ),
            ),
        ],
      ),
    );
  }
}
