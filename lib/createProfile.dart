
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:vishwamitra_uidesign/detailsPage.dart';

class CreateProfile extends StatefulWidget {
  @override
  State<CreateProfile> createState() => _CreateProfileState();
}

class _CreateProfileState extends State<CreateProfile> {

final _formKey = GlobalKey<FormState>();

  TextEditingController _fullNameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _phoneNoController = TextEditingController();



 bool isValidEmail(String email) {
    final emailRegex = RegExp(
      r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$',
    );
    return emailRegex.hasMatch(email);
  }



  void  submit() async{
    if (_formKey.currentState!.validate()) {
                 
                  // ScaffoldMessenger.of(context).showSnackBar(
                  //   SnackBar(content: Text('Processing Data')),
                  // );
                   Get.to(() =>  deatilsPage());
                 
                }
  }




  @override
  Widget build(BuildContext context) {
    return
     
     Scaffold(
    appBar:AppBar(
          ),

        body: 
    
        SingleChildScrollView(
          child: Column(
            children: [
          
                Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
               crossAxisAlignment: CrossAxisAlignment.center, 
                children: [
          Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 32,
                    height: 32,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue.shade400, width: 2),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: const CircleAvatar(
                      minRadius: BorderSide.strokeAlignOutside,
                      backgroundColor: Colors.transparent,
                      child: Text('1', style: TextStyle(color: Colors.black)),
                    ),
                  ),
                  SizedBox(
                    width: 100,
                    height: 1,
                    child: Container(
                      color: Color(0xFFD8D8D8),
                    ),
                  ),
                  Container(
                    height: 32,
                    width: 32,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xFFD8D8D8),width: 2),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      child: Text('2', style: TextStyle(color: Color(0xFFD8D8D8))),
                    ),
                  ),
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'About me',
                    style: TextStyle(
                        color: Color(0xFF1694EF),
                        fontWeight: FontWeight.w600,
                        fontSize: 14),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: Text(
                      'Deatils',
                      style: TextStyle(
                          color: Color(0xFFD8D8D8),
                          fontWeight: FontWeight.w400,
                          fontSize: 14),
                    ),
                  ),
                ],
              ),
                ],
              ),
            ),
          
          
              SingleChildScrollView(
                child: Padding(
                      padding: const EdgeInsets.only(left :16.0, top: 40, right: 16),
                      child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("About Me", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    SizedBox(height: 16,),
                    Text('Full Name', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                    SizedBox(height: 4,),
                    TextFormField(
                      controller: _fullNameController,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0)),
                        hintText: "e.g. Anand Sharma",
                        hintStyle: const TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                                  validator: (value) {
                        if (value!.isEmpty ) {
                          return 'Please enter your Name';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 16),
                    Text('Email (Optional)',
                     style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                     SizedBox(height: 4,),
                                TextFormField(
                      controller: _emailController,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0)),
                        hintText: "e.g. anandsharma123@gmail.com",
                        hintStyle: const TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                      
                                        validator: (value) {
                          if (value!.isNotEmpty && !isValidEmail(value)) {
                          
                            return 'Please enter a valid email';
                          }
                         
                          return null;
                        }
                                      ),
                    const Row(
                      children: [
                        Icon(Icons.info, size: 10),
                        Text(" Receive updates on volunteer service opportunities & app.", style: TextStyle(fontSize: 11, color: Colors.grey)),
                      ],
                    ),
                    SizedBox(height: 16),
                    Text('Phone Number', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                    SizedBox(height: 4,),
                             
                    TextFormField(
                      controller: _phoneNoController,
                      keyboardType: TextInputType.phone,
                      maxLength: 10,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0)),
                        hintText: "e.g. 6276483564",
                        hintStyle: const TextStyle(fontSize: 14, color: Colors.grey),
                        counterText: "",
                      ),
                      validator: (value) {
                        if (value!.isEmpty || value.length != 10) {
                          return 'Please enter a valid phone number';
                        }
                        return null;
                      },
                    ),
                  ],
                ),
                      ),
                    ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Padding(
              padding: const EdgeInsets.fromLTRB(40,25,40,44),
                        child: CupertinoButton(
              color: Colors.blue,
              child: Text('Next'),
              onPressed: () {
                submit();
              },
            ),

           ), 
      );
   
  }


 }


