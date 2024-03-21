
import 'package:flutter/material.dart';
import 'package:vishwamitra_uidesign/presentation/BottomNavigation/Home/AppBar/notification.dart';

class HomeTab extends StatefulWidget {
  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> with SingleTickerProviderStateMixin {
  bool showNotification = false;
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: showNotification ? NotificationPage() : _buildTabView(),
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      leading: showNotification
          ? IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                setState(() {
                  showNotification = false;
                });
              },
            )
          : const Icon(Icons.home),
      title: Text(showNotification ? 'Notifications' : 'Welcome User'),
      actions: <Widget>[
        if (!showNotification)
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {
              setState(() {
                showNotification = true;
              });
            },
          ),
      ],
      bottom: showNotification
          ? null
          : TabBar(
              tabAlignment: TabAlignment.start,
              controller: _tabController,
              isScrollable: true,
              tabs: [
                Tab(text: "New Opportunities (25)"),
                Tab(text: "Ongoing Task (12)"),
                Tab(text: "Completed Task(10)"),
              ],
            ),
    );
  }

  Widget _buildTabView() {
    return TabBarView(
      controller: _tabController,
      children: <Widget>[
        SingleChildScrollView(
          child: Column(
            children: [Text("Content for New Opportunities")],
          ),
        ),
        SingleChildScrollView(
          child: Column(
            children: [Text("Content for Ongoing Task")],
          ),
        ),
        SingleChildScrollView(
          child: Column(
            children: [Text("Content for Completed Task")],
          ),
        ),
      ],
    );
  }
}








//correct but not showing bottom navigation

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:vishwamitra_uidesign/presentation/BottomNavigation/Home/AppBar/notification.dart';


// class HomeTab extends StatefulWidget {
//   @override
//   State<HomeTab> createState() => _HomeTabState();
// }

// class _HomeTabState extends State<HomeTab> {
//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 3, // Adjust the number of tabs based on your content
//       child: Scaffold(
//         appBar: AppBar(
//           leading: const Icon(Icons.home),
//           title: const Text('Welcome User'),
//           actions: <Widget>[
//             IconButton(
//               icon: const Icon(Icons.notifications),
//               onPressed: () {

//                   Get.to(() => NotificationPage());
//               },
//             ),
//           ],
//           bottom: const TabBar(
//             tabAlignment: TabAlignment.start,
//             isScrollable: true, // Enable scrolling for the tab bar
//             tabs: [
//               Tab(text: "New Opportunities (25)"),
//               Tab(text: "Ongoing Task (12)"),
//               Tab(text: "Completed Task(10)"),
//               // You can add more tabs here and they will scroll horizontally if they overflow
//             ],
//           ),
//         ),
//         body:  TabBarView(
//           children: [
//             SingleChildScrollView(
//               scrollDirection: Axis.vertical,
//               child: Column(
//                 children: [
                 
//                   Text("Content for New Opportunities"),
//                 ],
//               ),
//             ),
//             SingleChildScrollView(
//               scrollDirection: Axis.vertical,
//               child: Column(
//                 children: [
                  
//                   Text("Content for Ongoing Task"),
//                 ],
//               ),
//             ),
//             SingleChildScrollView(
//               scrollDirection: Axis.vertical,
//               child: Column(
//                 children: [
               
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






//correct show navigation but  not hide home app bar app bar 

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:vishwamitra_uidesign/presentation/BottomNavigation/Home/AppBar/notification.dart';

// class HomeTab extends StatefulWidget {
//   @override
//   State<HomeTab> createState() => _HomeTabState();
// }

// class _HomeTabState extends State<HomeTab> {
//   // State to track whether to show the default tab view or the notification page
//   bool showNotification = false;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: showNotification ? null : _buildAppBar(context),
//       body: showNotification ? NotificationPage() : _buildTabView(),
//     );
//   }

//   AppBar _buildAppBar(BuildContext context) {
//     return AppBar(
//       leading: const Icon(Icons.home),
//       title: const Text('Welcome User'),
//       actions: <Widget>[
//         IconButton(
//           icon: const Icon(Icons.notifications),
//           onPressed: () {
//             // Toggle between showing the notification page and the default tab view
//             setState(() {
//               showNotification = !showNotification;
//             });
//           },
//         ),
//       ],
//       bottom: const TabBar(
//         isScrollable: true,
//         tabs: [
//           Tab(text: "New Opportunities (25)"),
//           Tab(text: "Ongoing Task (12)"),
//           Tab(text: "Completed Task(10)"),
//         ],
//       ),
//     );
//   }

//   Widget _buildTabView() {
//     // Since the DefaultTabController is removed from the root, it's added here to wrap the TabBarView
//     return DefaultTabController(
//       length: 3,
//       child: Column(
//         children: <Widget>[
//           Expanded(
//             child: TabBarView(
//               children: <Widget>[
//                 SingleChildScrollView(
//                   child: Column(
//                     children: [Text("Content for New Opportunities")],
//                   ),
//                 ),
//                 SingleChildScrollView(
//                   child: Column(
//                     children: [Text("Content for Ongoing Task")],
//                   ),
//                 ),
//                 SingleChildScrollView(
//                   child: Column(
//                     children: [Text("Content for Completed Task")],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }



// correct but in notification not back arrow



// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:vishwamitra_uidesign/presentation/BottomNavigation/Home/AppBar/notification.dart';

// class HomeTab extends StatefulWidget {
//   @override
//   State<HomeTab> createState() => _HomeTabState();
// }

// class _HomeTabState extends State<HomeTab> with SingleTickerProviderStateMixin {
//   bool showNotification = false;
//   TabController? _tabController;

//   @override
//   void initState() {
//     super.initState();
//     _tabController = TabController(length: 3, vsync: this);
//   }

//   @override
//   void dispose() {
//     _tabController?.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: showNotification ? null : _buildAppBar(context),
//       body: showNotification ?  NotificationPage() : _buildTabView(),
//     );
//   }

//   AppBar _buildAppBar(BuildContext context) {
//     return AppBar(
//       leading: const Icon(Icons.home),
//       title: const Text('Welcome User'),
//       actions: <Widget>[
//         IconButton(
//           icon: const Icon(Icons.notifications),
//           onPressed: () {
//             setState(() {
//               showNotification = !showNotification;
//             });
//           },
//         ),
//       ],
//       bottom: TabBar(
//         tabAlignment: TabAlignment.start,
//         controller: _tabController,
//         isScrollable: true,
//         tabs: [
//           Tab(text: "New Opportunities (25)"),
//           Tab(text: "Ongoing Task (12)"),
//           Tab(text: "Completed Task(10)"),
//         ],
//       ),
//     );
//   }

//   Widget _buildTabView() {
//     return TabBarView(
//       controller: _tabController,
//       children: <Widget>[
//         SingleChildScrollView(
//           child: Column(
//             children: [Text("Content for New Opportunities")],
//           ),
//         ),
//         SingleChildScrollView(
//           child: Column(
//             children: [Text("Content for Ongoing Task")],
//           ),
//         ),
//         SingleChildScrollView(
//           child: Column(
//             children: [Text("Content for Completed Task")],
//           ),
//         ),
//       ],
//     );
//   }
// }



