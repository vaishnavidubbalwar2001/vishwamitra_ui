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
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
      body: Column(
        children: [
          Padding(
            padding:  const EdgeInsets.all(16.0),
            child: Container(
              
              height: 180.h,
                 
               decoration: BoxDecoration(
               
                border: Border.all(color: Colors.black, width: 1), 
                borderRadius: BorderRadius.circular(12), 
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: 180.h,
                    width: 125.w,
                      decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(12), 
                image: const DecorationImage(
                  image: AssetImage('assets/images/123456.jpeg'),
                  fit: BoxFit.cover,
                  alignment: Alignment.topCenter,
                ),
              
              ), 
                    child: const Padding(
                      padding: EdgeInsets.only(left: 16,top: 20,right: 16,bottom: 76),
                      child: CircleAvatar(
                      
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
                                const Text(
                                  'User Name',
                                  style: TextStyle(fontSize: 20),
                                ),
                                 SizedBox(width: 10,),
                                Icon(Icons.edit,size: 20,)
                              ],
                            ),
                        const Text(
                          'Profession',
                          style: TextStyle(fontSize: 16),
                        ),
                        const Text('email@example.com',),
                     const Text('+123456789'),
                     const Text('Location'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
       
       SizedBox(
         height: 350.h,
        width: 360.w,
         child: DefaultTabController(
      length: 2, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              SizedBox(child: Tab(text: 'Journey')), // First tab
              Tab(text: 'About me'), // Second tab
            ],
          ),
        ),
        body: TabBarView(
          children: [
            // Replace these containers with your actual tab content
            Center(child: Text('Content of Tab 1')),
            Center(child: Text('Content of Tab 2')),
          ],
        ),
      ),
    ),
       )
       
        ],
      ),
    );
  }
}


