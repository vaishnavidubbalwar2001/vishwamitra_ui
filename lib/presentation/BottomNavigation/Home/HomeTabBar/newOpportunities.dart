import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:vishwamitra_uidesign/utils/appColor.dart';



class ItemListWidget extends StatefulWidget {
  @override
  _ItemListWidgetState createState() => _ItemListWidgetState();
}

class _ItemListWidgetState extends State<ItemListWidget> {
   List<Map<String, dynamic>> _allItems = [
   
  {
    'srNo': 1,
    'heading': 'Green Life Foundation: Photography Volunteer!',
    'companyName': 'Tech Innovators, Inc.',
    'city': 'San Francisco',
    'time': '10:00 AM',
    'opportunities': '10',
    'readTime': '5 mins',
    'companyImage': 'https://img.freepik.com/premium-psd/daisy-flower-transparent-background-png-clipart_88754-438.jpg',
  },
  {
    'srNo': 2,
    'heading': 'Eco-Friendly Solutions',
    'companyName': 'Green Earth Solutions',
    'city': 'Berlin',
    'opportunities': '10',
    'time': '11:30 AM',
    'readTime': '4 mins',
    'companyImage': 'https://static.vecteezy.com/system/resources/previews/021/779/395/non_2x/beautiful-natural-red-rose-flowers-bouquet-free-png.png',
  },
  {
    'srNo': 3,
    'heading': 'AI in Healthcare',
    'companyName': 'NextGen Health',
    'city': 'Tokyo',
    'opportunities': '10',
    'time': '2:00 PM',
    'readTime': '6 mins',
    'companyImage': 'https://img.freepik.com/free-psd/3d-pink-flower-isolated-transparent-background_191095-16624.jpg?size=338&ext=jpg&ga=GA1.1.735520172.1710806400&semt=ais',
  },
  {
    'srNo': 4,
    'heading': 'Fintech Revolutions',
    'companyName': 'Money Matters',
    'city': 'New York',
    'opportunities': '10',
    'time': '4:00 PM',
    'readTime': '5 mins',
    'companyImage': 'https://img.freepik.com/free-psd/gerbera-daisy-flower-png-isolated-transparent-background_191095-11452.jpg?size=338&ext=jpg&ga=GA1.1.735520172.1710806400&semt=ais',
  },
  {
    'srNo': 5,
    'heading': 'Renewable Energy',
    'companyName': 'SunPower Innovations',
    'city': 'Amsterdam',
    'opportunities': '10',
    'time': '9:00 AM',
    'readTime': '7 mins',
    'companyImage': 'https://thumbs.dreamstime.com/b/sun-flower-transparent-background-additional-png-file-greeting-cards-holiday-wishes-sun-flower-transparent-129371261.jpg',
  },
  {
    'srNo': 6,
    'heading': 'Smart City Solutions',
    'companyName': 'UrbanTech',
    'city': 'Singapore',
    'opportunities': '10',
    'time': '3:45 PM',
    'readTime': '8 mins',
    'companyImage': 'https://media.istockphoto.com/id/1365376571/vector/sakura-flower-cherry-vector.jpg?s=612x612&w=0&k=20&c=eZI_m0pseKXm0AmFrvkO1hfxw-TIywTPUuXgjzMshaY=',
  },
  {
    'srNo': 7,
    'heading': 'Blockchain Breakthroughs',
    'companyName': 'Chain Innovations',
    'city': 'London',
    'opportunities': '10',
    'time': '1:00 PM',
    'readTime': '5 mins',
    'companyImage': 'https://images.creativefabrica.com/products/previews/2023/10/28/aHwmQ5WDf/2XNXBSL7e1TC2xqGck9AO3FJ2dM-mobile.jpg',
  },
  {
    'srNo': 8,
    'heading': 'The Future of Transport',
    'companyName': 'MoveFast Technologies',
    'city': 'Paris',
    'opportunities': '10',
    'time': '10:15 AM',
    'readTime': '3 mins',
    'companyImage': 'https://t3.ftcdn.net/jpg/05/34/46/36/360_F_534463666_QomJJFNvUzlKqapOZnHOZ14o8pPSWD8H.jpg',
  },
  {
    'srNo': 9,
    'heading': 'Cybersecurity Trends',
    'companyName': 'SecureNet Tech',
    'opportunities': '10',
    'city': 'Moscow',
    'time': '12:00 PM',
    'readTime': '6 mins',
    'companyImage': 'https://i.pinimg.com/originals/75/cf/0e/75cf0e7bf32afcf8fc4271a66682e94d.jpg',
  },
  {
    'srNo': 10,
    'heading': 'Augmented Reality in Education',
    'companyName': 'EduFuture',
    'city': 'Sydney',
    'opportunities': '10',
    'time': '8:30 AM',
    'readTime': '4 mins',
    'companyImage': 'https://images.rawpixel.com/image_png_800/czNmcy1wcml2YXRlL3Jhd3BpeGVsX2ltYWdlcy93ZWJzaXRlX2NvbnRlbnQvbHIvcm00MjgtZWxlbWVudC0yMC5wbmc.png',
  }

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Flutter Demo'),
        ),
      body: ListView.builder(
        itemCount: _allItems.length,
        itemBuilder: (context, index) {
          return Container(

            margin: EdgeInsets.all(8.0),
            padding: EdgeInsets.all(8.0),
            // decoration: BoxDecoration(
            //   image: DecorationImage(
            //     image: NetworkImage(_allItems[index]['companyImage']),
            //     fit: BoxFit.cover,
            //   ),
            //   borderRadius: BorderRadius.circular(12.0),
            // ),

             decoration: BoxDecoration(
                border: Border.all(color: app_colors.librarylistborder, width: 1), 
              //   image: DecorationImage(
              //   image: NetworkImage(_allItems[index]['companyImage']),
              //   fit: BoxFit.cover,
              // ),
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(10),
              
            ),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 142 ,
                  width: 334,
            //        decoration: BoxDecoration(
            //   image: DecorationImage(
            //     image: NetworkImage(_allItems[index]['companyImage']),
            //     fit: BoxFit.cover,
            //   ),
            //   borderRadius: BorderRadius.circular(12.0),
            // ),
            
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(_allItems[index]['companyImage']),
                            fit: BoxFit.cover,
                            // Apply color filter here
                            colorFilter: ColorFilter.mode(
                              Colors.black.withOpacity(0.5), // This creates a 50% opacity black filter
                              BlendMode.dstATop, // This blend mode applies the color filter on top of the image
                            ),
                          ),
                          borderRadius: BorderRadius.circular(12.0),
                        ),

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 10,left: 10,top: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Text(
                                _allItems[index]['heading'],
                                style: TextStyle(color: Colors.white, fontSize: 18),
                              ),
                            ),
                            // CupertinoButton(
                            //   padding: EdgeInsets.zero,
                            //   borderRadius: BorderRadius.circular(10),
                            //   color: Colors.white,
                            //   child: Row(
                            //     children: [
                            //       Icon(Icons.heart_broken, color: Colors.red,size: 10,),
                            //      Text(_allItems[index]['opportunities'],style: TextStyle(fontSize:10,color: Colors.black),),
                            //     ],
                            //   ),
                              
                            //   onPressed: () {
                            //     // Your button action here
                            //   },
                            // ),
                        
                        Container(
                          height: 17,
                          width: 34, // Adjust this height as needed
                          child: CupertinoButton(
                            padding: EdgeInsets.zero,
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            child: Row(
                              mainAxisSize: MainAxisSize.min, // This makes the Row only as wide as its children
                              children: [
                                Icon(Icons.heart_broken, color: Colors.red, size: 10),
                                Text(
                                  _allItems[index]['opportunities'],
                                  style: TextStyle(fontSize: 10, color: Colors.black),
                                ),
                              ],
                            ),
                            onPressed: () {
                              // Your button action here
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
                            Icon(Icons.bookmark_add_outlined, color: Colors.white),
                            SizedBox(width: 10,),
                            Icon(Icons.share, color: Colors.white),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        //  mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text(
                              _allItems[index]['heading'],
                              style: TextStyle(color: Colors.black),
                            ),
                          
                          Text(
                            _allItems[index]['companyName'],
                            style: TextStyle(color: Colors.black),
                          ),
                          Text(
                            _allItems[index]['city'],
                            style: TextStyle(color: Colors.black),
                          ),
                          Text(
                            _allItems[index]['time'],
                            style: TextStyle(color: Colors.black),
                          ),
                          Text(
                            _allItems[index]['readTime'],
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: [

Text("Apply Now")

                      ],
                    )


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
