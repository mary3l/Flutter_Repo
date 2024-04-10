import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        // Check the screen width to determine which drawer to display
        if (constraints.maxWidth > 600) {
          // For larger screens, display the webview drawer
          return webviewDrawerWidget(context);
        } else {
          // For smaller screens, display the mobile drawer
          return mobileviewDrawerWidget(context);
        }
      },
    );
  }

  Widget webviewDrawerWidget(BuildContext context) {
    return Container(
      width: 300,
      color: Colors.white,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "/logo_image.png",
                    width: 100,
                    height: 100,
                  ),
                  Text('Mariel Mabano'),
                ],
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/home');
            },
          ),
          ListTile(
            leading: Icon(Icons.info),
            title: Text('About'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/about');
            },
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Logout'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/');
            },
          ),
        ],
      ),
    );
  }

  Widget mobileviewDrawerWidget(BuildContext context) {
    return Container(
      width: 70,
      color: Colors.white,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "/logo_image.png",
                    width: 50,
                    height: 50,
                  ),
                  // Text('Mariel Mabano'),
                ],
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/home');
            },
          ),
          ListTile(
            leading: Icon(Icons.info),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/about');
            },
          ),
          ListTile(
            leading: Icon(Icons.logout),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/');
            },
          ),
        ],
      ),
    );
  }
}
// class webview_drawer_widget extends StatelessWidget {
//   const webview_drawer_widget({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: ListView(
//         padding: EdgeInsets.zero,
//         children: [
//           Container(
//             decoration: BoxDecoration(
//               color: Colors.blue,
//             ),
//             child: Column(
//               children: [
//                 Container(
//                   child: Image.asset(
//                     "icons/logo_image.png", // Changed to relative path
//                     width: 100,
//                     height: 100,
//                   ),
//                 ),
//                 Text('Mariel Mabano'),
//               ],
//             ),
//           ),
//           ListTile(
//             title: Text('Home'),
//             onTap: () {
//               Navigator.pop(context);
//               Navigator.pushNamed(context, '/home');
//             },
//           ),
//           ListTile(
//             title: Text('About'),
//             onTap: () {
//               Navigator.pop(context);
//               Navigator.pushNamed(context, '/about');
//             },
//           ),
//           ListTile(
//             title: Text('Logout'),
//             onTap: () {
//               Navigator.pop(context);
//               Navigator.pushNamed(context, '/');
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }
