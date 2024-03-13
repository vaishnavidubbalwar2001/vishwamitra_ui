import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class createProfile extends StatefulWidget {
  @override
  State<createProfile> createState() => _createProfileState();
}

class _createProfileState extends State<createProfile> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
           toolbarHeight: 100.0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              // Handle back button action
            },
          ),
          title: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              _buildCircleButton("About Me", Colors.blue),
              Container(
                width: 50, // Adjust the line width to match your design
                height: 2, // Line thickness
                color: Colors.grey,
              ),
              _buildCircleButton("Details", Colors.grey),
            ],
          ),
        ),
        body: AboutMeForm(),
        bottomNavigationBar: BottomAppBar(
          color:  Colors.transparent,
          child: CupertinoButton(
            color: Colors.blue,
            child: Text('Next'),
            onPressed: () {
              // Handle next button action
            },
          ),
        ),
      ),
    );
  }

 Widget _buildCircleButton(String text, Color borderColor) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 25, // Circle diameter
            height: 25, // Circle diameter
            decoration: BoxDecoration(
              color: Colors.transparent,
              shape: BoxShape.circle,
              border: Border.all(color: borderColor, width: 2),
            ),
          ),
          SizedBox(height: 4), // Add some space between the circle and the text
          Text(
            text,
            style: TextStyle(
              fontSize: 14,
              color: text == "About Me" ? Colors.blue : Colors.black, // Change color based on the text
            ),
          ),
        ],
      ),
    );
  }
}

class AboutMeForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[

          Text("About Me", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold )),
          
          Text('Full Name',style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold )),
          TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 15),
                            border: OutlineInputBorder(borderRadius:BorderRadius.circular(5.0)),
                          hintText: "  e.g. Anand Sharma",
                         hintStyle: const TextStyle( fontSize: 14, color: Colors.grey)
                      ),
                    ),
          SizedBox(height: 16),
          Text('Email (Optional)',style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold )),
           TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 15),
                            border: OutlineInputBorder(borderRadius:BorderRadius.circular(5.0)),
                          hintText: "  e.g. anandsharma123@gmail.com",
                         hintStyle: const TextStyle( fontSize: 14, color: Colors.grey)
                      ),
                    ),
          // SizedBox(height: 5),
          const Row(
            children: [
              Icon(Icons.info, size: 10),
              Text("  Receive updates on volunteer service opportunities & app",style: TextStyle(fontSize: 11,
              color: Colors.grey))
            ],
          ), // Utility Icon
          SizedBox(height: 16),
          Text('Phone Number',style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold )),
          TextField(
                       keyboardType: TextInputType.phone,
                      
                      maxLength: 10,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 15),
                            border: OutlineInputBorder(borderRadius:BorderRadius.circular(5.0)),
                          hintText: "  e.g. 6276483564",
                            hintStyle: const TextStyle( fontSize: 14, color: Colors.grey),
                          counterText: ""
                      ),
                    ),
        ],
      ),
    );
  }
}

