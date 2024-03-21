

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vishwamitra_uidesign/utils/appColor.dart';

class LibraryTab extends StatefulWidget {
  @override
  State<LibraryTab> createState() => _LibraryTabState();
}

class _LibraryTabState extends State<LibraryTab> {
  List<Map<String, dynamic>> _libraryList = [  
  {
    'srNo': 1,
    'heading': 'AI in Healthcare',
    'companyName': 'NextGen Health',
    'opportunities': '111',
    'time': '2:00 PM',
    'readTime': '6 mins',
    'companyImage': 'https://static.vecteezy.com/system/resources/previews/021/779/395/non_2x/beautiful-natural-red-rose-flowers-bouquet-free-png.png',
    'images': [
      'https://cdn.downtoearth.org.in/library/large/2022-02-25/0.25794500_1645773147_istock-870402320.jpg',
      'https://i0.wp.com/goodworks.org.in/wp-content/uploads/2023/11/NGOs-working-for-education-in-India-1.jpg?resize=1024%2C769&ssl=1', 
      'https://careerninja.in/wp-content/uploads/2018/10/pexels-photo-461049-640x519.jpeg',
    ],
  },
  {
    'srNo': 2,
    'heading': 'Fintech Revolutions',
    'companyName': 'Money Matters',
    'opportunities': '10',
    'time': '4:00 PM',
    'readTime': '5 mins',
    'companyImage': 'https://img.freepik.com/premium-psd/daisy-flower-transparent-background-png-clipart_88754-438.jpg',
    'images': [
      'https://cdn.downtoearth.org.in/library/large/2022-02-25/0.25794500_1645773147_istock-870402320.jpg',
      'https://i0.wp.com/goodworks.org.in/wp-content/uploads/2023/11/NGOs-working-for-education-in-India-1.jpg?resize=1024%2C769&ssl=1', 
      'https://careerninja.in/wp-content/uploads/2018/10/pexels-photo-461049-640x519.jpeg',
    ],
  },
  {
    'srNo': 3,
    'heading': 'Renewable Energy',
    'companyName': 'SunPower Innovations',
    'opportunities': '3',
    'time': '9:00 AM',
    'companyImage': 'https://t3.ftcdn.net/jpg/05/34/46/36/360_F_534463666_QomJJFNvUzlKqapOZnHOZ14o8pPSWD8H.jpg',
    'readTime': '7 mins',
    'images': [
      'https://cdn.downtoearth.org.in/library/large/2022-02-25/0.25794500_1645773147_istock-870402320.jpg',
      'https://i0.wp.com/goodworks.org.in/wp-content/uploads/2023/11/NGOs-working-for-education-in-India-1.jpg?resize=1024%2C769&ssl=1', 
      'https://careerninja.in/wp-content/uploads/2018/10/pexels-photo-461049-640x519.jpeg',
    ],
  },
   {
    'srNo': 3,
    'heading': 'Renewable Energy',
    'companyName': 'SunPower Innovations',
    'opportunities': '3',
    'time': '9:00 AM',
    'companyImage': 'https://t3.ftcdn.net/jpg/05/34/46/36/360_F_534463666_QomJJFNvUzlKqapOZnHOZ14o8pPSWD8H.jpg',
    'readTime': '7 mins',
    'images': [
      'https://cdn.downtoearth.org.in/library/large/2022-02-25/0.25794500_1645773147_istock-870402320.jpg',
      'https://i0.wp.com/goodworks.org.in/wp-content/uploads/2023/11/NGOs-working-for-education-in-India-1.jpg?resize=1024%2C769&ssl=1', 
      'https://careerninja.in/wp-content/uploads/2018/10/pexels-photo-461049-640x519.jpeg',
    ],
  },
   {
    'srNo': 3,
    'heading': 'Renewable Energy',
    'companyName': 'SunPower Innovations',
    'opportunities': '3',
    'time': '9:00 AM',
    'companyImage': 'https://t3.ftcdn.net/jpg/05/34/46/36/360_F_534463666_QomJJFNvUzlKqapOZnHOZ14o8pPSWD8H.jpg',
    'readTime': '7 mins',
    'images': [
      'https://cdn.downtoearth.org.in/library/large/2022-02-25/0.25794500_1645773147_istock-870402320.jpg',
      'https://i0.wp.com/goodworks.org.in/wp-content/uploads/2023/11/NGOs-working-for-education-in-India-1.jpg?resize=1024%2C769&ssl=1', 
      'https://careerninja.in/wp-content/uploads/2018/10/pexels-photo-461049-640x519.jpeg',
    ],
  },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Library',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
        ),
        actions: <Widget>[
          CupertinoButton(
            padding: EdgeInsets.only(right: 20, left: 20),
            borderRadius: BorderRadius.circular(30),
            color: Colors.blue,
            child: Row(
              children: [
                Icon(Icons.add, size: 15),
                Text(
                  ' New List',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: _libraryList.length,
        itemBuilder: (context, index) {
          final item = _libraryList[index];
          return Container(
            margin: EdgeInsets.all(14),
            // padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
                border: Border.all(color: app_colors.librarylistborder, width: 1), 
              color: app_colors.librarylistBackground,
              borderRadius: BorderRadius.circular(10),
              
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Row(
                     // padding: EdgeInsets.all(8),
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage(item['companyImage']),
                        radius: 10,
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          item['heading'],
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w400),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8,left: 8),
                  child: Text(item['companyName'],style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 32,right: 8,left: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text('${item['opportunities']} Opportunities',style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),),
                          SizedBox(width: 10),
                                               
                          SizedBox(width: 10),
                          Icon(Icons.lock,size: 16,),
                        ],
                      ),
                      // SizedBox(width: 134),
                      Row(
                        children: [
                          Icon(Icons.download_for_offline_outlined,size: 16,),
                          SizedBox(width: 10),
                          Icon(Icons.more_vert,size: 16,),
                        ],
                      ),
                      
                    ],
                  ),
                ),
                SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(item['images'].length, (imgIndex) {
                        var img = item['images'][imgIndex];
                        return Padding(
                          padding: const EdgeInsets.only(top: 16),
                          child: ClipRRect(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(imgIndex == 0 ? 10 : 0),
                              bottomRight: Radius.circular(imgIndex == item['images'].length - 1 ? 10 : 0),
                              // bottomRight: Radius.circular(imgIndex == 0 ? 10 : 0),
                            ),
                            child: Image.network(
                              img,
                              width: 115,
                              height: 139,
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      }),
                    ),
                  ),

              ],
            ),
          );
        },
      ),
    );
  }
}






// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// class LibraryTab extends StatefulWidget {
//   @override
//   State<LibraryTab> createState() => _LibraryTabState();
// }
// class _LibraryTabState extends State<LibraryTab> {

//  List<Map<String, dynamic>> _libraryList = [  
//   {
//     'srNo': 1,
//     'heading': 'AI in Healthcare',
//     'companyName': 'NextGen Health',
//     'opportunities': '9',
//     'time': '2:00 PM',
//     'readTime': '6 mins',
//     'companyImage': 'https://static.vecteezy.com/system/resources/previews/021/779/395/non_2x/beautiful-natural-red-rose-flowers-bouquet-free-png.png',
//     'images': [
//       'https://static.vecteezy.com/system/resources/previews/021/779/395/non_2x/beautiful-natural-red-rose-flowers-bouquet-free-png.png',
//       'https://img.freepik.com/free-psd/gerbera-daisy-flower-png-isolated-transparent-background_191095-11452.jpg?size=338&ext=jpg&ga=GA1.1.735520172.1710806400&semt=ais', 
//       'https://thumbs.dreamstime.com/b/sun-flower-transparent-background-additional-png-file-greeting-cards-holiday-wishes-sun-flower-transparent-129371261.jpg', 
//     ],
//   },
//   {
//     'srNo': 2,
//     'heading': 'Fintech Revolutions',
//     'companyName': 'Money Matters',
//     'opportunities': '10',
//     'time': '4:00 PM',
//     'readTime': '5 mins',
//     'companyImage': 'https://img.freepik.com/premium-psd/daisy-flower-transparent-background-png-clipart_88754-438.jpg',
//     'images': [
//       'https://static.vecteezy.com/system/resources/previews/021/779/395/non_2x/beautiful-natural-red-rose-flowers-bouquet-free-png.png',
//       'https://thumbs.dreamstime.com/b/sun-flower-transparent-background-additional-png-file-greeting-cards-holiday-wishes-sun-flower-transparent-129371261.jpg', 
//     ],
//   },
//   {
//     'srNo': 3,
//     'heading': 'Renewable Energy',
//     'companyName': 'SunPower Innovations',
//     'opportunities': '3',
//     'time': '9:00 AM',
//     'companyImage': 'https://t3.ftcdn.net/jpg/05/34/46/36/360_F_534463666_QomJJFNvUzlKqapOZnHOZ14o8pPSWD8H.jpg',
//     'readTime': '7 mins',
//     'images': [
//       'https://static.vecteezy.com/system/resources/previews/021/779/395/non_2x/beautiful-natural-red-rose-flowers-bouquet-free-png.png',
//     ],
//   }
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Library',style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),),
//         actions: <Widget>[
//           CupertinoButton(
//              padding: EdgeInsets.only(right: 20,left: 20),
//             borderRadius: BorderRadius.circular(30),
//             color: Colors.blue,
//             child: Row(
//               children: [
//                 Icon(Icons.downloading,size: 15,),
//                 Text( ' New List',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w600),),
//               ],
//             ),
//             onPressed: () {},
//           ),
//         ],
//       ),
//       body: ListView.builder(
//         itemCount: 10, // Just as an example
//         itemBuilder: (context, index) {
//           return ListTile(
//             title: Text('Book $index'),
//           );
//         },
//       ),
//     );
//   }
// }




