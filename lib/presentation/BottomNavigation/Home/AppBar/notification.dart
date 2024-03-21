



// import 'package:flutter/material.dart';

// class notification extends StatefulWidget {
//   @override
//   _notificationState createState() => _notificationState();
// }

// class _notificationState extends State<notification> {
//   final List<Map<String, dynamic>> _people = [
//     {
//       'image': 'https://img.freepik.com/premium-psd/daisy-flower-transparent-background-png-clipart_88754-438.jpg',
//       'name': 'John Doe',
//       'profession': 'Software Engineer ',
//       'professionInfo': 'Specializes in mobile development',
//       'lastDate': '2 days left',
//       'readTime': '5 mins',
//     },
//     {
//       'image': 'https://static.vecteezy.com/system/resources/previews/021/779/395/non_2x/beautiful-natural-red-rose-flowers-bouquet-free-png.png',
//       'name': 'Jane Smith',
//       'profession': 'Graphic Designer',
//       'professionInfo': 'Focuses on digital art ',
//       'lastDate': 'Started following you',
//       'readTime': '10 mins',
//     },
   
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Notifications"),
//       ),
//       body: ListView.builder(
//         itemCount: _people.length,
//         itemBuilder: (context, index) {
//           var person = _people[index];
//           return Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Row(
//               children: [
//                 CircleAvatar(
//                   backgroundImage: NetworkImage(person['image']),
//                   radius: 38,
//                 ),
//                 SizedBox(width: 10),
//                 Expanded(
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Row(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             person['name'],
//                             style: TextStyle(fontWeight: FontWeight.bold),
//                             // overflow: TextOverflow.ellipsis,
//                           ),
//                           Text(" ,"),
//                           Flexible(
//                             child: Text(
//                               person['profession'],
//                                 overflow: TextOverflow.ellipsis,
//                             ),
//                           ),
//                         ],
//                       ),
//                       Text(person['professionInfo']),
//                       Text(person['lastDate']),
//                     ],
//                   ),
//                 ),
//                 Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   // mainAxisSize: MainAxisSize.min,
//                   children: [
//                     Text(person['readTime']),
//                     IconButton(
//                       icon: Icon(Icons.more_horiz),
//                       onPressed: () {
//                         // Handle more button press
//                       },
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           );
//         },
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  final List<Map<String, dynamic>> _people = [
    {
      'image': 'https://img.freepik.com/premium-psd/daisy-flower-transparent-background-png-clipart_88754-438.jpg',
      'name': 'John Doe',
      'profession': 'Software Engineer ',
      'professionInfo': 'Specializes in mobile development',
      'lastDate': '2 days left',
      'readTime': '5 mins',
    },
    {
      'image': 'https://static.vecteezy.com/system/resources/previews/021/779/395/non_2x/beautiful-natural-red-rose-flowers-bouquet-free-png.png',
      'name': 'Jane Smith',
      'profession': 'Graphic Designer',
      'professionInfo': 'Focuses on digital art',
      'lastDate': 'Started following you',
      'readTime': '10 mins',
    },
    {
      'image': 'https://img.freepik.com/premium-psd/daisy-flower-transparent-background-png-clipart_88754-438.jpg',
      'name': 'John Doe',
      'profession': 'Software Engineer ',
      'professionInfo': 'Specializes in mobile development',
      'lastDate': '2 days left',
      'readTime': '5 mins',
    }
  ];

  final Set<int> _readNotifications = Set<int>();

  @override
  Widget build(BuildContext context) {
    return
    //  Scaffold(
      // appBar: AppBar(
      //   // leading: IconButton(icon: Icon(Icons.arrow_back),
      //   // onPressed: () {
         
      //   // },),
      //   title: Text("Notifications"),
      // ),
      // body:
       ListView.builder(
        itemCount: _people.length,
        itemBuilder: (context, index) {
          var person = _people[index];
          bool isRead = _readNotifications.contains(index);
          return GestureDetector(
            onTap: () {
              setState(() {
                _readNotifications.add(index); // Mark as read when tapped
              });
            },
            child: Container(
              color: isRead ? Colors.transparent : Color(0xFFCFEBFF).withOpacity(0.51)  ,
              child: Row(
                children: [
                  Container(
                    width: 5,
                    height: 100,
                    color: isRead ? Colors.transparent : Color(0xFF159DFF), // Line color changes based on read status
                  ),
                  SizedBox(width: 10),
                  CircleAvatar(
                    backgroundImage: NetworkImage(person['image']),
                    radius: 38,
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              person['name'],
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(", "),
                            Flexible(
                              child: Text(
                                person['profession'],
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                        Text(person['professionInfo']),
                        Text(person['lastDate']),
                      ],
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(person['readTime']),
                      IconButton(
                        icon: Icon(Icons.more_horiz),
                        onPressed: () {
                          // Handle more button press
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      );
    // );
  }
}


