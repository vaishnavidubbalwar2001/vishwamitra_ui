

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:vishwamitra_uinewdesign/utils/appColor.dart';

class newOpportunities extends StatefulWidget {
  @override
  _NewOpportunitiesState createState() => _NewOpportunitiesState();
}

class _NewOpportunitiesState extends State<newOpportunities> {

bool _volunteerByOwnChecked = false;
bool _otherChecked = false;

  List<Map<String, dynamic>> _allItems = [
    {
      'srNo': 1,
      'heading': 'Robinhood Academy ',
      'companyName': 'Tech Innovators, Inc.',
      'city': 'San Francisco',
      'time': 'Mon & Fri, 9am-12pm',
      'opportunities': '10',
      'readTime': '5 mins',
      'profile': '20',
      'totalImages': '2',
      'images': [
        'https://cdn.downtoearth.org.in/library/large/2022-02-25/0.25794500_1645773147_istock-870402320.jpg',
        'https://i0.wp.com/goodworks.org.in/wp-content/uploads/2023/11/NGOs-working-for-education-in-India-1.jpg?resize=1024%2C769&ssl=1',
      ],
      'link': 'www.robinhoodacademy.org',
      'companyImage':
          'https://i0.wp.com/goodworks.org.in/wp-content/uploads/2023/11/NGOs-working-for-education-in-India-1.jpg?resize=1024%2C769&ssl=1',
    },
    {
      'srNo': 2,
      'heading': 'Robinhood Academy',
      'companyName': 'Green Earth Solutions',
      'city': 'Berlin',
      'opportunities': '10',
      'time': 'Mon & Fri, 9am-12pm',
      'readTime': '4 mins',
      'profile': '16',
      'totalImages': '5',
      'images': [
        'https://cdn.downtoearth.org.in/library/large/2022-02-25/0.25794500_1645773147_istock-870402320.jpg',
        'https://i0.wp.com/goodworks.org.in/wp-content/uploads/2023/11/NGOs-working-for-education-in-India-1.jpg?resize=1024%2C769&ssl=1',
        'https://careerninja.in/wp-content/uploads/2018/10/pexels-photo-461049-640x519.jpeg',
        'https://cdn.downtoearth.org.in/library/large/2022-02-25/0.25794500_1645773147_istock-870402320.jpg',
        'https://i0.wp.com/goodworks.org.in/wp-content/uploads/2023/11/NGOs-working-for-education-in-India-1.jpg?resize=1024%2C769&ssl=1',
      ],
      'link': 'www.robinhoodacademy.org',
      'companyImage':
          'https://careerninja.in/wp-content/uploads/2018/10/pexels-photo-461049-640x519.jpeg',
    },
    {
      'srNo': 3,
      'heading': 'Robinhood Academy ',
      'companyName': 'NextGen Health',
      'city': 'Tokyo',
      'opportunities': '10',
      'time': 'Mon & Fri, 9am-12pm',
      'readTime': '6 mins',
      'profile': '10',
      'totalImages': '4',
      'images': [
        'https://cdn.downtoearth.org.in/library/large/2022-02-25/0.25794500_1645773147_istock-870402320.jpg',
        'https://i0.wp.com/goodworks.org.in/wp-content/uploads/2023/11/NGOs-working-for-education-in-India-1.jpg?resize=1024%2C769&ssl=1',
        'https://careerninja.in/wp-content/uploads/2018/10/pexels-photo-461049-640x519.jpeg',
        'https://cdn.downtoearth.org.in/library/large/2022-02-25/0.25794500_1645773147_istock-870402320.jpg',
      ],
      'link': 'www.robinhoodacademy.org',
      'companyImage':
          'https://cdn.downtoearth.org.in/library/large/2022-02-25/0.25794500_1645773147_istock-870402320.jpg',
    },
    {
      'srNo': 4,
      'heading': 'Fintech Revolutions',
      'companyName': 'Money Matters',
      'city': 'New York',
      'opportunities': '10',
      'time': 'Mon & Fri, 9am-12pm',
      'readTime': '5 mins',
      'profile': '1',
      'totalImages': '3',
      'images': [
        'https://cdn.downtoearth.org.in/library/large/2022-02-25/0.25794500_1645773147_istock-870402320.jpg',
        'https://i0.wp.com/goodworks.org.in/wp-content/uploads/2023/11/NGOs-working-for-education-in-India-1.jpg?resize=1024%2C769&ssl=1',
        'https://careerninja.in/wp-content/uploads/2018/10/pexels-photo-461049-640x519.jpeg',
      ],
      'link': 'www.robinhoodacademy.org',
      'companyImage':
          'https://img.freepik.com/free-psd/gerbera-daisy-flower-png-isolated-transparent-background_191095-11452.jpg?size=338&ext=jpg&ga=GA1.1.735520172.1710806400&semt=ais',
    },
    {
      'srNo': 5,
      'heading': 'Renewable Energy',
      'companyName': 'SunPower Innovations',
      'city': 'Amsterdam',
      'opportunities': '10',
      'profile': '6',
      'time': 'Mon & Fri, 9am-12pm',
      'readTime': '7 mins',
      'totalImages': '6',
      'images': [
        'https://cdn.downtoearth.org.in/library/large/2022-02-25/0.25794500_1645773147_istock-870402320.jpg',
        'https://i0.wp.com/goodworks.org.in/wp-content/uploads/2023/11/NGOs-working-for-education-in-India-1.jpg?resize=1024%2C769&ssl=1',
        'https://careerninja.in/wp-content/uploads/2018/10/pexels-photo-461049-640x519.jpeg',
        'https://cdn.downtoearth.org.in/library/large/2022-02-25/0.25794500_1645773147_istock-870402320.jpg',
        'https://i0.wp.com/goodworks.org.in/wp-content/uploads/2023/11/NGOs-working-for-education-in-India-1.jpg?resize=1024%2C769&ssl=1',
        'https://careerninja.in/wp-content/uploads/2018/10/pexels-photo-461049-640x519.jpeg',
      ],
      'link': 'www.robinhoodacademy.org',
      'companyImage':
          'https://thumbs.dreamstime.com/b/sun-flower-transparent-background-additional-png-file-greeting-cards-holiday-wishes-sun-flower-transparent-129371261.jpg',
    }
  ];



 void showSaveToBottomSheet(context) {
    showModalBottomSheet(
      context: context,
      builder: ( context) {
        return
        StatefulBuilder( // Use StatefulBuilder to manage state inside the bottom sheet
        builder: (BuildContext context, StateSetter setState) {
          return Container(
          height: 300,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Save to",
                      style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context); // Example of closing the bottom sheet
                      },
                      child: Text(
                        "Done",
                        style: TextStyle(color: Colors.blue, fontSize: 14, fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 18.0),
                child: Text("Create new list...", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.blue)),
              ),
              ListTile(
                leading: Checkbox(
                  value: _volunteerByOwnChecked,
                  onChanged: ( value) {
                    setState(() {
                      _volunteerByOwnChecked = value!;
                    });
                  },
                ),
                title: Text("Volunteer by Own", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400)),
                trailing: Icon(Icons.lock),
                onTap: () {},
              ),
              ListTile(
                leading: Checkbox(
                  value: _otherChecked,
                  onChanged: ( value) {
                    setState(() {
                      _otherChecked = value!;
                    });
                  },
                ),
                title: Text("Other", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400)),
                trailing: Icon(Icons.lock),
                onTap: () {},
              ),
            ],
          ),
        );
      
      },
      );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Flexible(
        child: ListView.builder(
          itemCount: _allItems.length,
          itemBuilder: (context, index) {
            int imageCount = _allItems[index]['images'].length;
            return Container(
              margin: const EdgeInsets.all(14.0),
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                border:
                    Border.all(color: app_colors.librarylistborder, width: 1),
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  
                  Container(
                    height: 142,
                    width: 334,
                   
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(_allItems[index]['companyImage']),
                        fit: BoxFit.cover,
                       
                        colorFilter: ColorFilter.mode(
                          const Color(0xFF000000).withOpacity(
                              0.5), 
                          BlendMode
                              .dstATop, 
                        ),
                      ),
                      borderRadius: BorderRadius.circular(12.0),
                    ),

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              right: 10, left: 10, top: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Row(
                                  children: [
                                    Text(
                                      _allItems[index]['heading'],
                                      style: const TextStyle(
                                          color: Colors.white, fontSize: 18),
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      _allItems[index]['totalImages'],
                                      style: const TextStyle(
                                          color: Colors.white, fontSize: 18),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                height: 17,
                                width: 34, 
                                child: CupertinoButton(
                                  padding: EdgeInsets.zero,
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                  child: Row(
                                    mainAxisSize: MainAxisSize
                                        .min, 
                                    children: [
                                      const Icon(Icons.heart_broken,
                                          color: Colors.red, size: 10),
                                      Text(
                                        _allItems[index]['opportunities'],
                                        style: const TextStyle(
                                            fontSize: 10, color: Colors.black),
                                      ),
                                    ],
                                  ),
                                  onPressed: () {
                                    
                                  },
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              IconButton(
                                icon: const Icon(Icons.bookmark_add_outlined,
                                    color: Colors.white),
                                onPressed: () {
                                    showSaveToBottomSheet(context);
                                
                                },
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Icon(Icons.share, color: Colors.white),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Expanded(
                        
                          child: Column(
                            //  mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                _allItems[index]['heading'],
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600),
                              ),
                              Row(
                                children: [
                                  const Icon(Icons.location_history, size: 12),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    _allItems[index]['city'],
                                    style: const TextStyle(
                                        color: Colors.grey, fontSize: 12),
                                  ),
                                  const Icon(Icons.nordic_walking, size: 12),
                                  const Text(
                                    "(3 km)",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 12),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  const Icon(Icons.location_history, size: 12),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    _allItems[index]['time'],
                                    style: const TextStyle(
                                        color: Colors.grey, fontSize: 12),
                                  ),
                                  const Text(
                                    " (Onsite)",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 12),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  const Icon(Icons.timelapse, size: 12),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    _allItems[index]['link'],
                                    style: const TextStyle(
                                        color: Colors.blue, fontSize: 12),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              width:
                                  72, 
                              height:
                                  32, 
                              child: Stack(
                                children: <Widget>[
                                  for (var i = 0;
                                      i < (imageCount > 3 ? 3 : imageCount);
                                      i++) 
                                    Positioned(
                                      left: i *
                                          15.0, 
                                      child: Container(
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                            color: Colors.white, 
                                            width: 2, 
                                          ),
                                        ),
                                        child: CircleAvatar(
                                          backgroundImage: NetworkImage(
                                              _allItems[index]['images'][i]),
                                          radius: 12, 
                                        ),
                                      ),
                                    ),
                                  if (imageCount > 3)
                                    Positioned(
                                      left: 2 *
                                          22.0, // Position the count on the third avatar
                                      child: Container(
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                            color: Colors.white, // Border color
                                            width: 2, // Border width
                                          ),
                                        ),
                                        child: CircleAvatar(
                                          radius: 12,
                                          backgroundColor: Colors.blue,
                                          child: Text(
                                            '+${imageCount - 3}',
                                            style: const TextStyle(fontSize: 12),
                                          ),
                                        ),
                                      ),
                                    ),
                                ],
                              ),
                            ),

                            const SizedBox(height: 10),
                            Container(
                              height: 24,
                              width: 72,
                              child: CupertinoButton(
                                padding: EdgeInsets.zero,
                                borderRadius: BorderRadius.circular(2),
                                color: Colors.blue,
                                child: const Text(
                                  'Apply Now',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400),
                                ),
                                onPressed: () {},
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
// horizontal imange count dots
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      imageCount,
                      (index) => Container(
                        margin: const EdgeInsets.symmetric(horizontal: 4.0),
                        height: 8,
                        width: 8,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.black, // Change color as needed
                        ),
                      ),
                    ),
                  ),
                  const Divider(
                    color: Colors.grey,
                    thickness: 1,
                    indent: 5,
                    endIndent: 5,
                  ),
                  Center(
                    child: IconButton(
                        onPressed: () {}, icon: const Icon(Icons.arrow_drop_down)),
                  )
                  // Your existing widgets...
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
