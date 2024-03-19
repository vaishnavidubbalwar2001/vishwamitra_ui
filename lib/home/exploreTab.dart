// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

//   class SearchExploreTab extends StatefulWidget {
//     @override
//     State<SearchExploreTab> createState() => _SearchExploreTabState();
//   }

//   class _SearchExploreTabState extends State<SearchExploreTab> {


//  final TextEditingController _searchController = TextEditingController();
  
// // List<Map<String, dynamic>> _allItems = [
// //   {
// //     'srNo': 1,
// //     'heading': 'New Tech Innovations',
// //     'companyName': 'Tech Innovators, Inc.',
// //     'city': 'San Francisco',
// //     'time': '10:00 AM',
// //     'readTime': '5 mins',
// //     'companyImage': 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.vecteezy.com%2Ffree-png%2Fflowers&psig=AOvVaw02uU9NX_e_GaxI6eBqmcl9&ust=1710939586304000&source=images&cd=vfe&opi=89978449&ved=0CBMQjRxqFwoTCNitg-ewgIUDFQAAAAAdAAAAABAD',
// //   },
// //   {
// //     'srNo': 2,
// //     'heading': 'Eco-Friendly Solutions',
// //     'companyName': 'Green Earth Solutions',
// //     'city': 'Berlin',
// //     'time': '11:30 AM',
// //     'readTime': '4 mins',
// //     'companyImage': 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.vecteezy.com%2Ffree-png%2Fflower&psig=AOvVaw02uU9NX_e_GaxI6eBqmcl9&ust=1710939586304000&source=images&cd=vfe&opi=89978449&ved=0CBMQjRxqFwoTCNitg-ewgIUDFQAAAAAdAAAAABAI',
// //   },
// //   {
// //     'srNo': 3,
// //     'heading': 'AI in Healthcare',
// //     'companyName': 'NextGen Health',
// //     'city': 'Tokyo',
// //     'time': '2:00 PM',
// //     'readTime': '6 mins',
// //     'companyImage': 'https://img.freepik.com/free-psd/3d-pink-flower-isolated-transparent-background_191095-16624.jpg?size=338&ext=jpg&ga=GA1.1.735520172.1710806400&semt=ais',
// //   },
// //   {
// //     'srNo': 4,
// //     'heading': 'Fintech Revolutions',
// //     'companyName': 'Money Matters',
// //     'city': 'New York',
// //     'time': '4:00 PM',
// //     'readTime': '5 mins',
// //     'companyImage': 'https://img.freepik.com/free-psd/gerbera-daisy-flower-png-isolated-transparent-background_191095-11452.jpg?size=338&ext=jpg&ga=GA1.1.735520172.1710806400&semt=ais',
// //   },
// //   {
// //     'srNo': 5,
// //     'heading': 'Renewable Energy',
// //     'companyName': 'SunPower Innovations',
// //     'city': 'Amsterdam',
// //     'time': '9:00 AM',
// //     'readTime': '7 mins',
// //     'companyImage': 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.pngegg.com%2Fen%2Fsearch%3Fq%3DFLOWER&psig=AOvVaw02uU9NX_e_GaxI6eBqmcl9&ust=1710939586304000&source=images&cd=vfe&opi=89978449&ved=0CBMQjRxqFwoTCNitg-ewgIUDFQAAAAAdAAAAABAo',
// //   },
// //   {
// //     'srNo': 6,
// //     'heading': 'Smart City Solutions',
// //     'companyName': 'UrbanTech',
// //     'city': 'Singapore',
// //     'time': '3:45 PM',
// //     'readImage': '8 mins',
// //     'companyImage': 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.rawpixel.com%2Fsearch%2Fflower%2520png&psig=AOvVaw02uU9NX_e_GaxI6eBqmcl9&ust=1710939586304000&source=images&cd=vfe&opi=89978449&ved=0CBMQjRxqFwoTCNitg-ewgIUDFQAAAAAdAAAAABA4',
// //   },
// //   {
// //     'srNo': 7,
// //     'heading': 'Blockchain Breakthroughs',
// //     'companyName': 'Chain Innovations',
// //     'city': 'London',
// //     'time': '1:00 PM',
// //     'readTime': '5 mins',
// //     'companyImage': 'https://w7.pngwing.com/pngs/526/806/png-transparent-pink-and-red-petaled-flowers-painting-flower-decoupage-flower-watercolor-flower-arranging-photography-poster.png',
// //   },
// //   {
// //     'srNo': 8,
// //     'heading': 'The Future of Transport',
// //     'companyName': 'MoveFast Technologies',
// //     'city': 'Paris',
// //     'time': '10:15 AM',
// //     'readTime': '3 mins',
// //     'companyImage': 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.pngkit.com%2Fbigpic%2Fu2q8i1y3w7a9y3i1%2F&psig=AOvVaw02uU9NX_e_GaxI6eBqmcl9&ust=1710939586304000&source=images&cd=vfe&opi=89978449&ved=0CBMQjRxqFwoTCNitg-ewgIUDFQAAAAAdAAAAABBI',
// //   },
// //   {
// //     'srNo': 9,
// //     'heading': 'Cybersecurity Trends',
// //     'companyName': 'SecureNet Tech',
// //     'city': 'Moscow',
// //     'time': '12:00 PM',
// //     'readTime': '6 mins',
// //     'companyImage': 'https://gallery.yopriceville.com/var/albums/Free-Clipart-Pictures/Flowers-PNG/Beautiful_Flower_PNG_Transparent_Clipart.png?m=1618394732',
// //   },
// //   {
// //     'srNo': 10,
// //     'heading': 'Augmented Reality in Education',
// //     'companyName': 'EduFuture',
// //     'city': 'Sydney',
// //     'time': '8:30 AM',
// //     'readTime': '4 mins',
// //     'companyImage': 'https://png.pngtree.com/png-vector/20230918/ourmid/pngtree-beautiful-flower-png-free-png-image_10123485.png',
// //   }
// // ];


//  List<String> _allItems = [];
//   List<String> _filteredItems = [];
//   // This should be List<Map<String, dynamic>> to match _allItems



// @override
//   void initState() {
//     super.initState();
//     _prepareItems();
//   }
  

//  void _filterItems(String query) {
//     if (query.isEmpty) {
//       _filteredItems = List.from(_allItems); // No query? Show all items.
//     } else {
//       _filteredItems = _allItems
//           .where((item) => item.toLowerCase().contains(query.toLowerCase()))
//           .toList();
//     }
//     setState(() {});
//   }





//   void _prepareItems() {
//     // Simulate a list of items
//     _allItems = List.generate(20 , (index) => 'Item $index');
//     _filteredItems = List.from(_allItems); // Initially, all items are shown
//   }

//     @override
//     Widget build(BuildContext context) {
//       return Scaffold(
//         appBar: AppBar(
//           title: Text('Explore'),
//         ),
//         body: Column(
//           children: <Widget>[
//             Padding(
//               padding: const EdgeInsets.only(bottom: 8,left: 16,top: 16,right: 16),
//               child: SizedBox(
//                   height: 32.h,
//                 child: TextField(
//                   controller: _searchController,
//               onChanged: _filterItems,
//                   decoration: InputDecoration(
//                     contentPadding: EdgeInsets.symmetric(vertical: 0.0),
//                     hintText: 'Search Opportunities',
//                     prefixIcon: Icon(Icons.search,size: 20,),
//                     suffixIcon: Row(
//                       mainAxisSize: MainAxisSize.min, // This is needed to keep the row tight around the children
//                       children: [
//                         // Vertical divider
//                         Container(
//                           height: 20.h,
//                           width: 1, 
//                           color: Colors.grey, 
//                         ),
                      
//                         IconButton(
//                           onPressed: () {
                          
//                           },
//                           iconSize: 20.sp,
//                           icon: Icon(Icons.mic,),
//                         ),
//                       ],
//                     ),
//                     filled: true, // Enable the fill color
//                        fillColor: Colors.blueGrey[50],
//                    border: InputBorder.none, // Remove border
//                     enabledBorder: InputBorder.none, // Remove border in default state
//                     focusedBorder: InputBorder.none, 
//                   ),
//                 ),
//               ),
//             ),
//               Padding(
//               padding: const EdgeInsets.only(bottom: 16,left: 16,top: 8,right: 16),
//               child: SizedBox(
//                   height: 32.h,
//                 child: TextField(
//                   decoration: InputDecoration(
//                     contentPadding: EdgeInsets.symmetric(vertical: 0.0),
//                     hintText: 'Location',
//                     prefixIcon: Icon(Icons.location_on_outlined,size: 20,),
//                     suffixIcon: Row(
//                       mainAxisSize: MainAxisSize.min, // This is needed to keep the row tight around the children
//                       children: [
//                         IconButton(
//                           onPressed: () {
                          
//                           },
//                           iconSize: 20.sp,
//                           icon: Icon(Icons.close),
//                         ),
//                       ],
//                     ),
//                     filled: true, // Enable the fill color
//                        fillColor: Colors.blueGrey[50],
//                    border: InputBorder.none, // Remove border
//                     enabledBorder: InputBorder.none, // Remove border in default state
//                     focusedBorder: InputBorder.none, 
//                   ),
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(left: 16,right: 16),
//               child: Row(
//   children: [
//     Container(
//       padding: EdgeInsets.all(2), // Add padding inside the container if needed
//       decoration: BoxDecoration(
//         // This is where you define the border
//         border: Border.all(
//           color: Colors.black, // Set border color
//           width: 1, // Set border width
//         ),
//         borderRadius: BorderRadius.circular(5), // Optional: if you want the border to be rounded
//       ),
//       child: Icon(
//         Icons.trending_up,
//         size: 8,
//       ),
//     ),
//     SizedBox(width: 5),
//     Text("TRENDING ON VISHWAMITRA",style: TextStyle(fontSize: 12),),
//   ],
// )

//             ),
          
//             Expanded  (
//               child: ListView.builder(
//                  itemCount: _filteredItems.length, // Just as an example
//                 itemBuilder: (context, index) {
//                   return ListTile(
//                     title:Text(_filteredItems[index]),
//                   );
//                 },
//               ),
//             ),


//           ],
//         ),
//       );
//     }
//   }




import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchExploreTab extends StatefulWidget {
  @override
  State<SearchExploreTab> createState() => _SearchExploreTabState();
}

class _SearchExploreTabState extends State<SearchExploreTab> {
  final TextEditingController _searchController = TextEditingController();

  List<Map<String, dynamic>> _allItems = [
   
  {
    'srNo': 1,
    'heading': 'New Tech Innovations',
    'companyName': 'Tech Innovators, Inc.',
    'city': 'San Francisco',
    'time': '10:00 AM',
    'readTime': '5 mins',
    'companyImage': 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.vecteezy.com%2Ffree-png%2Fflowers&psig=AOvVaw02uU9NX_e_GaxI6eBqmcl9&ust=1710939586304000&source=images&cd=vfe&opi=89978449&ved=0CBMQjRxqFwoTCNitg-ewgIUDFQAAAAAdAAAAABAD',
  },
  {
    'srNo': 2,
    'heading': 'Eco-Friendly Solutions',
    'companyName': 'Green Earth Solutions',
    'city': 'Berlin',
    'time': '11:30 AM',
    'readTime': '4 mins',
    'companyImage': 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.vecteezy.com%2Ffree-png%2Fflower&psig=AOvVaw02uU9NX_e_GaxI6eBqmcl9&ust=1710939586304000&source=images&cd=vfe&opi=89978449&ved=0CBMQjRxqFwoTCNitg-ewgIUDFQAAAAAdAAAAABAI',
  },
  {
    'srNo': 3,
    'heading': 'AI in Healthcare',
    'companyName': 'NextGen Health',
    'city': 'Tokyo',
    'time': '2:00 PM',
    'readTime': '6 mins',
    'companyImage': 'https://img.freepik.com/free-psd/3d-pink-flower-isolated-transparent-background_191095-16624.jpg?size=338&ext=jpg&ga=GA1.1.735520172.1710806400&semt=ais',
  },
  {
    'srNo': 4,
    'heading': 'Fintech Revolutions',
    'companyName': 'Money Matters',
    'city': 'New York',
    'time': '4:00 PM',
    'readTime': '5 mins',
    'companyImage': 'https://img.freepik.com/free-psd/gerbera-daisy-flower-png-isolated-transparent-background_191095-11452.jpg?size=338&ext=jpg&ga=GA1.1.735520172.1710806400&semt=ais',
  },
  {
    'srNo': 5,
    'heading': 'Renewable Energy',
    'companyName': 'SunPower Innovations',
    'city': 'Amsterdam',
    'time': '9:00 AM',
    'readTime': '7 mins',
    'companyImage': 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.pngegg.com%2Fen%2Fsearch%3Fq%3DFLOWER&psig=AOvVaw02uU9NX_e_GaxI6eBqmcl9&ust=1710939586304000&source=images&cd=vfe&opi=89978449&ved=0CBMQjRxqFwoTCNitg-ewgIUDFQAAAAAdAAAAABAo',
  },
  {
    'srNo': 6,
    'heading': 'Smart City Solutions',
    'companyName': 'UrbanTech',
    'city': 'Singapore',
    'time': '3:45 PM',
    'readImage': '8 mins',
    'companyImage': 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.rawpixel.com%2Fsearch%2Fflower%2520png&psig=AOvVaw02uU9NX_e_GaxI6eBqmcl9&ust=1710939586304000&source=images&cd=vfe&opi=89978449&ved=0CBMQjRxqFwoTCNitg-ewgIUDFQAAAAAdAAAAABA4',
  },
  {
    'srNo': 7,
    'heading': 'Blockchain Breakthroughs',
    'companyName': 'Chain Innovations',
    'city': 'London',
    'time': '1:00 PM',
    'readTime': '5 mins',
    'companyImage': 'https://w7.pngwing.com/pngs/526/806/png-transparent-pink-and-red-petaled-flowers-painting-flower-decoupage-flower-watercolor-flower-arranging-photography-poster.png',
  },
  {
    'srNo': 8,
    'heading': 'The Future of Transport',
    'companyName': 'MoveFast Technologies',
    'city': 'Paris',
    'time': '10:15 AM',
    'readTime': '3 mins',
    'companyImage': 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.pngkit.com%2Fbigpic%2Fu2q8i1y3w7a9y3i1%2F&psig=AOvVaw02uU9NX_e_GaxI6eBqmcl9&ust=1710939586304000&source=images&cd=vfe&opi=89978449&ved=0CBMQjRxqFwoTCNitg-ewgIUDFQAAAAAdAAAAABBI',
  },
  {
    'srNo': 9,
    'heading': 'Cybersecurity Trends',
    'companyName': 'SecureNet Tech',
    'city': 'Moscow',
    'time': '12:00 PM',
    'readTime': '6 mins',
    'companyImage': 'https://gallery.yopriceville.com/var/albums/Free-Clipart-Pictures/Flowers-PNG/Beautiful_Flower_PNG_Transparent_Clipart.png?m=1618394732',
  },
  {
    'srNo': 10,
    'heading': 'Augmented Reality in Education',
    'companyName': 'EduFuture',
    'city': 'Sydney',
    'time': '8:30 AM',
    'readTime': '4 mins',
    'companyImage': 'https://png.pngtree.com/png-vector/20230918/ourmid/pngtree-beautiful-flower-png-free-png-image_10123485.png',
  }

  ];
  List<Map<String, dynamic>> _filteredItems = [];

  @override
  void initState() {
    super.initState();
    _searchController.addListener(() {
      _filterItems(_searchController.text);
    });
    _filteredItems = List.from(_allItems); // Initially, all items are shown
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _filterItems(String query) {
    if (query.isEmpty) {
      _filteredItems = List.from(_allItems); // No query? Show all items.
    } else {
      _filteredItems = _allItems.where((item) {
        final titleLower = item['heading'].toLowerCase();
        final searchLower = query.toLowerCase();
        return titleLower.contains(searchLower);
      }).toList();
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: Size(360, 690)); // Ensure you initialize ScreenUtil with your design size

    return Scaffold(
      appBar: AppBar(
        title: Text('Explore'),
      ),
      body: Column(
        children: <Widget>[
          // Your search and other widgets here

            Padding(
              padding: const EdgeInsets.only(bottom: 8,left: 16,top: 16,right: 16),
              child: SizedBox(
                  height: 32.h,
                child: TextField(
                  controller: _searchController,
              onChanged: _filterItems,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 0.0),
                    hintText: 'Search Opportunities',
                    prefixIcon: Icon(Icons.search,size: 20,),
                    suffixIcon: Row(
                      mainAxisSize: MainAxisSize.min, // This is needed to keep the row tight around the children
                      children: [
                        // Vertical divider
                        Container(
                          height: 20.h,
                          width: 1, 
                          color: Colors.grey, 
                        ),
                      
                        IconButton(
                          onPressed: () {
                          
                          },
                          iconSize: 20.sp,
                          icon: Icon(Icons.mic,),
                        ),
                      ],
                    ),
                    filled: true, // Enable the fill color
                       fillColor: Colors.blueGrey[50],
                   border: InputBorder.none, // Remove border
                    enabledBorder: InputBorder.none, // Remove border in default state
                    focusedBorder: InputBorder.none, 
                  ),
                ),
              ),
            ),
              Padding(
              padding: const EdgeInsets.only(bottom: 16,left: 16,top: 8,right: 16),
              child: SizedBox(
                  height: 32.h,
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 0.0),
                    hintText: 'Location',
                    prefixIcon: Icon(Icons.location_on_outlined,size: 20,),
                    suffixIcon: Row(
                      mainAxisSize: MainAxisSize.min, // This is needed to keep the row tight around the children
                      children: [
                        IconButton(
                          onPressed: () {
                          
                          },
                          iconSize: 20.sp,
                          icon: Icon(Icons.close),
                        ),
                      ],
                    ),
                    filled: true, // Enable the fill color
                       fillColor: Colors.blueGrey[50],
                   border: InputBorder.none, // Remove border
                    enabledBorder: InputBorder.none, // Remove border in default state
                    focusedBorder: InputBorder.none, 
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16,right: 16),
              child: Row(
  children: [
    Container(
      padding: EdgeInsets.all(2), // Add padding inside the container if needed
      decoration: BoxDecoration(
        // This is where you define the border
        border: Border.all(
          color: Colors.black, // Set border color
          width: 1, // Set border width
        ),
        borderRadius: BorderRadius.circular(5), // Optional: if you want the border to be rounded
      ),
      child: Icon(
        Icons.trending_up,
        size: 8,
      ),
    ),
    SizedBox(width: 5),
    Text("TRENDING ON VISHWAMITRA",style: TextStyle(fontSize: 12),),
  ],
)

            ),
          Expanded(
            child: ListView.builder(
              itemCount: _filteredItems.length,
              itemBuilder: (context, index) {
                final item = _filteredItems[index];
                return Container(
                  margin: EdgeInsets.all(8.0),
                  padding: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item['heading'],
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16.sp,
                        ),
                      ),
                      SizedBox(height: 5.h),
                      Row(
                        children: [
                          Text(item['companyName']),
                          Spacer(),
                          Text(item['city']),
                        ],
                      ),
                      SizedBox(height: 5.h),
                      Text('Time: ${item['time']} - Read Time: ${item['readTime']}'),
                      Image.network(item['companyImage'], height: 100.h, width: double.infinity, fit: BoxFit.cover),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
