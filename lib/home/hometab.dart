

// import 'package:flutter/material.dart';

// class HomeTab extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // Wrap your Scaffold with a DefaultTabController
//     return DefaultTabController(
//       length: 3, // Number of tabs
//       child: Scaffold(
//         appBar: AppBar(
//           leading: Icon(Icons.home),
//           title: Text('Welcome User'),
//           actions: <Widget>[
//             IconButton(
//               icon: Icon(Icons.notifications),
//               onPressed: () {},
//             ),
//           ],
//           bottom: TabBar(
//             // Define your tabs here
//             tabs: [
//               Tab(text: "New Opportunities (25)"),
//               Tab(text: "Ongoing Task (12)"),
//               Tab(text: "Completed Task"),
//             ],
//           ),
//         ),
//         body: TabBarView(
//           // Add your tab views here
//           children: [
//             SingleChildScrollView(
//               scrollDirection: Axis.vertical,
//               child: Column(
//                 children: [
//                   // Your first tab content here
//                   Text("Content for New Opportunities"),
//                 ],
//               ),
//             ),
//             SingleChildScrollView(
//               scrollDirection: Axis.vertical,
//               child: Column(
//                 children: [
//                   // Your second tab content here
//                   Text("Content for Ongoing Task"),
//                 ],
//               ),
//             ),
//             SingleChildScrollView(
//               scrollDirection: Axis.vertical,
//               child: Column(
//                 children: [
//                   // Your third tab content here
//                   Text("Content for Completed Task"),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }




import 'package:flutter/material.dart';

class HomeTab extends StatefulWidget {
  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // Adjust the number of tabs based on your content
      child: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.home),
          title: const Text('Welcome User'),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.notifications),
              onPressed: () {},
            ),
          ],
          bottom: const TabBar(
            tabAlignment: TabAlignment.start,
            isScrollable: true, // Enable scrolling for the tab bar
            tabs: [
              Tab(text: "New Opportunities (25)"),
              Tab(text: "Ongoing Task (12)"),
              Tab(text: "Completed Task(10)"),
              // You can add more tabs here and they will scroll horizontally if they overflow
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                 
                  Text("Content for New Opportunities"),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  
                  Text("Content for Ongoing Task"),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
               
                  Text("Content for Completed Task"),
                ],
              ),
            ),
           
          ],
        ),
      ),
    );
  }
}



