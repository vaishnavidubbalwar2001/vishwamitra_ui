
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchExploreTab extends StatefulWidget {
  @override
  State<SearchExploreTab> createState() => _SearchExploreTabState();
}

class _SearchExploreTabState extends State<SearchExploreTab> {
  

  List<Map<String, dynamic>> _allItems = [
   
  {
    'srNo': 1,
    'heading': 'Green Life Foundation: Photography Volunteer!',
    'companyName': 'Tech Innovators, Inc.',
    'city': 'San Francisco',
    'time': '10:00 AM',
    'readTime': '5 mins',
    'companyImage': 'https://img.freepik.com/premium-psd/daisy-flower-transparent-background-png-clipart_88754-438.jpg',
  },
  {
    'srNo': 2,
    'heading': 'Eco-Friendly Solutions',
    'companyName': 'Green Earth Solutions',
    'city': 'Berlin',
    'time': '11:30 AM',
    'readTime': '4 mins',
    'companyImage': 'https://static.vecteezy.com/system/resources/previews/021/779/395/non_2x/beautiful-natural-red-rose-flowers-bouquet-free-png.png',
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
    'companyImage': 'https://thumbs.dreamstime.com/b/sun-flower-transparent-background-additional-png-file-greeting-cards-holiday-wishes-sun-flower-transparent-129371261.jpg',
  },
  {
    'srNo': 6,
    'heading': 'Smart City Solutions',
    'companyName': 'UrbanTech',
    'city': 'Singapore',
    'time': '3:45 PM',
    'readTime': '8 mins',
    'companyImage': 'https://media.istockphoto.com/id/1365376571/vector/sakura-flower-cherry-vector.jpg?s=612x612&w=0&k=20&c=eZI_m0pseKXm0AmFrvkO1hfxw-TIywTPUuXgjzMshaY=',
  },
  {
    'srNo': 7,
    'heading': 'Blockchain Breakthroughs',
    'companyName': 'Chain Innovations',
    'city': 'London',
    'time': '1:00 PM',
    'readTime': '5 mins',
    'companyImage': 'https://images.creativefabrica.com/products/previews/2023/10/28/aHwmQ5WDf/2XNXBSL7e1TC2xqGck9AO3FJ2dM-mobile.jpg',
  },
  {
    'srNo': 8,
    'heading': 'The Future of Transport',
    'companyName': 'MoveFast Technologies',
    'city': 'Paris',
    'time': '10:15 AM',
    'readTime': '3 mins',
    'companyImage': 'https://t3.ftcdn.net/jpg/05/34/46/36/360_F_534463666_QomJJFNvUzlKqapOZnHOZ14o8pPSWD8H.jpg',
  },
  {
    'srNo': 9,
    'heading': 'Cybersecurity Trends',
    'companyName': 'SecureNet Tech',
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
    'time': '8:30 AM',
    'readTime': '4 mins',
    'companyImage': 'https://images.rawpixel.com/image_png_800/czNmcy1wcml2YXRlL3Jhd3BpeGVsX2ltYWdlcy93ZWJzaXRlX2NvbnRlbnQvbHIvcm00MjgtZWxlbWVudC0yMC5wbmc.png',
  }

  ];


  List<Map<String, dynamic>> _filteredItems = [];
final TextEditingController _searchController = TextEditingController();

final TextEditingController _locationController = TextEditingController();
 
  @override
void initState() {
  super.initState();
  _searchController.addListener(() {
    
    _filterItems(_searchController.text);
    
  });
  _locationController.addListener(() {
    setState(() {}); 
  });
  _filteredItems = List.from(_allItems); 
}


  @override
void dispose() {
  _searchController.dispose();
  _locationController.dispose();
  super.dispose();
}

  void _filterItems(String query) {
    if (query.isEmpty) {
      _filteredItems = List.from(_allItems); 
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
                   Padding(
                    padding: const EdgeInsets.only(bottom: 8, left: 16, top: 16, right: 16),
                    child: SizedBox(
                      height: 32.h,
                      child: TextField(
                        controller: _searchController,
                        onChanged: (value) {
                          setState(() {
                            _filterItems(value);
                          });
                        },
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 0.0),
                          hintText: 'Search Opportunities',hintStyle: TextStyle(fontSize: 12,fontWeight: FontWeight.w400),
                          prefixIcon: Icon(
                            Icons.search,
                            size: 20,
                          ),
                          suffixIcon: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              if (_searchController.text.isNotEmpty)
                                IconButton(
                                  onPressed: () {
                                    setState(() {
                                      _searchController.clear();
                                      _filterItems('');
                                    });
                                  },
                                  iconSize: 20.sp,
                                  icon: Icon(Icons.close),
                                ),
                              
                                Container(
                                  height: 20.h,
                                  width: 1,
                                  color: Colors.grey,
                                ),
                              IconButton(
                                onPressed: () {
                                },
                                iconSize: 20.sp,
                                icon: Icon(
                                  Icons.mic,
                                ),
                              ),
                            ],
                          ),
                          filled: true,
                          fillColor: Colors.blueGrey[50],
                          border: InputBorder.none,
                          enabledBorder: InputBorder.none,
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
                              controller: _locationController,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(vertical: 0.0),
                                hintText: 'Location',hintStyle: TextStyle(fontSize: 12,fontWeight: FontWeight.w400),
                                prefixIcon: Icon(Icons.location_on_outlined, size: 20),
                                suffixIcon: _locationController.text.isNotEmpty
                                    ? IconButton(
                                        icon: Icon(Icons.close, size: 20.sp),
                                        onPressed: () {
                                          _locationController.clear(); 
                                          setState(() {}); 
                                        },
                                      )
                        : null, 
                    filled: true,
                    fillColor: Colors.blueGrey[50],
                    border: InputBorder.none,
                    enabledBorder: InputBorder.none,
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
            child:ListView.builder(
                    itemCount: _filteredItems.length,
                    itemBuilder: (context, index) {
                      final item = _filteredItems[index];
                      // final item = _allItems[index];
                      return Container(
                        margin: EdgeInsets.all(8.w),
                        padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
                        decoration: BoxDecoration(
                          color: Colors.white,
                                    ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.all(8.w),
                              decoration: BoxDecoration(
                                // color: Colors.blue[100],
                                // borderRadius: BorderRadius.circular(5),
                              ),
                              child: Text(
                                '${item['srNo']}',
                                style: TextStyle(
                                  color: Color(0xFFE8E8E8
                                    ),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 40.sp,
                                ),
                              ),
                            ),
                            SizedBox(width: 10.w),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Image.network(
                                        item['companyImage'],
                                        width: 16.w,
                                        height: 16.h,
                                        fit: BoxFit.cover,
                                        errorBuilder: (context, error, stackTrace) => Icon(Icons.error, size: 16.w),
                                      ),
                                      SizedBox(width: 10.w),
                                      Expanded(
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              item['companyName'],
                                              style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                            SizedBox(width: 5.w),
                                            Text("in",style: TextStyle(fontSize: 12, color: Colors.grey),),
                                            SizedBox(width: 5.w),
                                            Text(item['city'],style: TextStyle( fontSize: 12,
                                                fontWeight: FontWeight.w400),),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 5.h),
                                  Text(
                                    item['heading'],
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  SizedBox(height: 5.h),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(' ${item['time']}',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Colors.grey),),
                                      Text(" . ",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Colors.grey),),
                                      Text('${item['readTime']}',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Colors.grey),),
                                      Text(" read",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Colors.grey),),
                                    ],
                                  ),
                                ],
                              ),
                            ),
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
