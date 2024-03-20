import 'package:flutter/material.dart';



class PeopleList extends StatefulWidget {
  @override
  _PeopleListState createState() => _PeopleListState();
}

class _PeopleListState extends State<PeopleList> {
  // Sample data for our list
  final List<Map<String, dynamic>> _people = [
    {
      'image': 'https://img.freepik.com/premium-psd/daisy-flower-transparent-background-png-clipart_88754-438.jpg',
      'name': 'John Doe',
      'profession': 'Software Engineer',
      'professionInfo': 'Specializes in mobile development',
      'lastDate': '2024-03-19',
      'readTime': '5 mins',
    },
    {
      'image': 'https://static.vecteezy.com/system/resources/previews/021/779/395/non_2x/beautiful-natural-red-rose-flowers-bouquet-free-png.png',
      'name': 'Jane Smith',
      'profession': 'Graphic Designer',
      'professionInfo': 'Focuses on digital art',
      'lastDate': '2024-03-18',
      'readTime': '10 mins',
    },
    // Add more people as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notifications"),
      ),
      body: ListView.builder(
        itemCount: _people.length,
        itemBuilder: (context, index) {
          var person = _people[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                CircleAvatar(
                backgroundImage: AssetImage(person['image']),
                radius: 38, 
                ),
               Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(person['name']),
                      Text(","),
                      Text(person['profession']),
                    ],
                               ),
                
               Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  
                  Text(person['professionInfo']),
                  Text(person['lastDate']),
                ],
              ),
               ],
               ),
               Column(
                mainAxisSize: MainAxisSize.min,
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
          );
        },
      ),
    );
  }
}
