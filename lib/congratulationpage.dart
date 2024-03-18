import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Congratulation extends StatefulWidget {


  @override
  State<Congratulation> createState() => _MyWidgetState();
}


class _MyWidgetState extends State<Congratulation> {

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:Column(
        children: [
         Row(
          mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Icon(sparkles),
        //
        // // Use the icon data here.
        IconButton(
          onPressed: (){

          },
          color: Colors.yellow,
          icon: Icon(Icons.star,)),
        Text("Congratulations",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
        IconButton(
          onPressed: (){

          },
          color: Colors.yellow,
          icon: Icon(Icons.star,)),
        // Icon(sparkles),
      ],
    ),


    SizedBox(
      height: 23,
    ),



    Text("Your profile is being shared",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
    Text("with top HRs/Admin",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),

 SizedBox(
      height: 160,
    ),


     Text("Meanwhile, start applying to",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
    Text("volunteer services",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),)
        
        ],

      ),

       bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(40, 25, 40, 44),
        child: CupertinoButton(
          color: Colors.blue,
          child: Text('Apply Now'),
          onPressed: () {
            
          },
        ),
      ),

    );
  }
}