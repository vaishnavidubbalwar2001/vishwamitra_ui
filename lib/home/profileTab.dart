// import 'package:flutter/material.dart';

// class ProfileTab extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('My Profile'),
//       ),
//       body: Container(
//         child:  Row(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: <Widget>[
//             CircleAvatar(
//               radius: 50,
//               backgroundImage: NetworkImage('https://via.placeholder.com/150'), // Placeholder image
//             ),

//             Column(
//   crossAxisAlignment: CrossAxisAlignment.start,
//   children: [
    
//     Row(
//       children: [
        
//         Text(
//           'User Name',
//           style: TextStyle(fontSize: 20),
//         ),
//         IconButton(
//           iconSize: 20,
//           icon: Icon(Icons.edit), 
//           onPressed: () {
           
//           },
//         ),
//       ],
//     ),
//         Text(
//           'Profession',
//           style: TextStyle(fontSize: 16),
//         ),
    
//     Row(
//       children: [
//         IconButton(
//             iconSize: 20,
//           icon: Icon(Icons.email), 
//           onPressed: () {
            
//           },
//         ),
//         Text('email@example.com'),
//       ],
//     ),
//     Row(
//       children: [
//         IconButton(
//             iconSize: 20,
//           icon: Icon(Icons.phone), 
//           onPressed: () {
       
//           },
//         ),
//         Text('+123456789'),
//       ],
//     ),
//     Row(
//       children: [
//         IconButton(
//             iconSize: 20,
//           icon: Icon(Icons.location_pin),
//           onPressed: () {
         
//           },
//         ),
//         Text('Location'),
//       ],
//     ),
//   ],
// )

//           ],
//         ),
//       ),
//     );
//   }
// }



import 'package:flutter/material.dart';

class ProfileTab extends StatefulWidget {
  @override
  State<ProfileTab> createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          
          
           decoration: BoxDecoration(
           
            border: Border.all(color: Colors.black, width: 1), 
            borderRadius: BorderRadius.circular(12), 
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                height: 180,
                width: 125,
                  decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(12), 
            image: DecorationImage(
              image: AssetImage('assets/images/123456.jpeg'),
              fit: BoxFit.cover,
              alignment: Alignment.topCenter,
            ),
          
          ), 
                child: Padding(
                  padding: const EdgeInsets.only(left: 16,top: 20,right: 16,bottom: 76),
                  child: CircleAvatar(
                    // radius: 15,
                    backgroundImage:  AssetImage('assets/images/pexels-lisa-2106037.webp'), 
                  ),
                ),
              ),
        
              Padding(
                padding: const EdgeInsets.only(left: 16, top: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                        Row(
                          children: [
                            Text(
                              'User Name',
                              style: TextStyle(fontSize: 20),
                            ),
                            SizedBox(width: 16,),
                            IconButton(onPressed:(){

                            },
                            iconSize: 20,
                             icon: Icon(Icons.edit))
                          ],
                        ),
                    Text(
                      'Profession',
                      style: TextStyle(fontSize: 16),
                    ),
                    Text('email@example.com',),
                 Text('+123456789'),
                 Text('Location'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


