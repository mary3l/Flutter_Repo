import 'package:flutter/material.dart';
import 'package:programming_partner_two/widgets/login_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LoginWidget();
    //   body: Center(
    //     child: Card(
    //       color: Colors.white,
    //       child: Container(
    //         height: 600,
    //         width: 1000,
    //         child: Row(
    //           mainAxisAlignment: MainAxisAlignment.center,
    //           crossAxisAlignment: CrossAxisAlignment.center,
    //           mainAxisSize: MainAxisSize.max,
    //           children: [
    //             Container(
    //               height: 600,
    //               width: 350,
    //               color: Colors.white,
    //               child: Center(
    //                 child: Column(
    //                   mainAxisAlignment: MainAxisAlignment.center,
    //                   children: [
    //                     Row(
    //                       mainAxisAlignment: MainAxisAlignment.center,
    //                       children: [
    //                         Container(
    //                           child: Icon(
    //                             Icons.favorite,
    //                             color: Colors.grey[300],
    //                           ),
    //                         ),
    //                         Container(
    //                           child: Text(
    //                             "SHANGHAI CONSERVATORY OF MUSIC",
    //                             style: TextStyle(fontSize: 15),
    //                           ),
    //                         ),
    //                       ],
    //                     ),
    //                     Padding(
    //                       padding: const EdgeInsets.all(8.0),
    //                       child: Container(
    //                         child: Image.asset(
    //                           "/logo_image.png",
    //                           width: 100,
    //                           height: 100,
    //                         ),
    //                       ),
    //                     ),
    //                     Padding(
    //                       padding: const EdgeInsets.all(8.0),
    //                       child: Container(
    //                         child: Column(
    //                           children: [
    //                             Padding(
    //                               padding: const EdgeInsets.all(8.0),
    //                               child: SizedBox(
    //                                 width: 300,
    //                                 child: TextField(
    //                                   decoration: InputDecoration(
    //                                       border: OutlineInputBorder(),
    //                                       prefixIcon: Icon(
    //                                         Icons.email,
    //                                         color: Colors.grey[300],
    //                                       ),
    //                                       hintText: 'Email Address'),
    //                                 ),
    //                               ),
    //                             ),
    //                             Padding(
    //                               padding: const EdgeInsets.all(8.0),
    //                               child: SizedBox(
    //                                 width: 300,
    //                                 child: TextField(
    //                                   decoration: InputDecoration(
    //                                       border: OutlineInputBorder(),
    //                                       prefixIcon: Icon(
    //                                         Icons.password,
    //                                         color: Colors.grey[300],
    //                                       ),
    //                                       hintText: 'Password'),
    //                                 ),
    //                               ),
    //                             ),
    //                             Padding(
    //                               padding: const EdgeInsets.all(8.0),
    //                               child: SizedBox(
    //                                   width: 300,
    //                                   child: TextField(
    //                                     decoration: InputDecoration(
    //                                       border: OutlineInputBorder(),
    //                                       prefixIcon: Icon(
    //                                         Icons.code,
    //                                         color: Colors.grey[300],
    //                                       ),
    //                                       hintText: 'Verification Code',
    //                                       suffixIcon: Padding(
    //                                         padding: const EdgeInsets.all(8.0),
    //                                         child: Row(
    //                                           children: [
    //                                             Text(
    //                                               'vD450F',
    //                                               style: TextStyle(
    //                                                   color: Colors.grey[300]),
    //                                             )
    //                                           ],
    //                                           mainAxisSize: MainAxisSize.min,
    //                                         ),
    //                                       ),
    //                                     ),
    //                                   )),
    //                             ),
    //                           ],
    //                         ),
    //                       ),
    //                     ),
    //                     SizedBox(height: 10),
    //                     Row(
    //                       mainAxisAlignment: MainAxisAlignment.center,
    //                       children: [
    //                         SizedBox(
    //                           height: 45,
    //                           width: 150,
    //                           child: TextButton(
    //                             style: ButtonStyle(
    //                               shape: MaterialStateProperty.all<
    //                                   RoundedRectangleBorder>(
    //                                 RoundedRectangleBorder(
    //                                   borderRadius: BorderRadius.circular(50),
    //                                 ),
    //                               ),
    //                               backgroundColor:
    //                                   MaterialStateProperty.all<Color>(
    //                                       Colors.blue),
    //                             ),
    //                             onPressed: () {
    //                               Navigator.push(
    //                                 context,
    //                                 MaterialPageRoute(
    //                                     builder: (context) => HomeScreen()),
    //                               );
    //                             },
    //                             child: Text(
    //                               'Login',
    //                               style: TextStyle(
    //                                 fontWeight: FontWeight.bold,
    //                                 fontSize: 14,
    //                                 color: Colors.white,
    //                               ),
    //                             ),
    //                           ),
    //                         ),
    //                         SizedBox(width: 5),
    //                         SizedBox(
    //                           height: 45,
    //                           width: 150,
    //                           // child: TextButton(
    //                           //   style: ButtonStyle(
    //                           //     shape: MaterialStateProperty.all<
    //                           //         RoundedRectangleBorder>(
    //                           //       RoundedRectangleBorder(
    //                           //         borderRadius: BorderRadius.circular(50),
    //                           //       ),
    //                           //     ),
    //                           //     backgroundColor:
    //                           //         MaterialStateProperty.all<Color>(
    //                           //             Colors.blue),
    //                           //   ),
    //                           //   onPressed: () {
    //                           //     Navigator.push(
    //                           //       context,
    //                           //       MaterialPageRoute(
    //                           //           builder: (context) => SignUpPage()),
    //                           //     );
    //                           //   },
    //                           //   child: Text(
    //                           //     'Sign Up',
    //                           //     style: TextStyle(
    //                           //       fontWeight: FontWeight.bold,
    //                           //       fontSize: 14,
    //                           //       color: Colors.white,
    //                           //     ),
    //                           //   ),
    //                           // ),
    //                         ),
    //                       ],
    //                     ),
    //                   ],
    //                 ),
    //               ),
    //             ),
    //             Container(
    //               height: 600,
    //               width: 650,
    //               decoration: BoxDecoration(
    //                 image: DecorationImage(
    //                   image: NetworkImage(
    //                       "https://png.pngtree.com/png-clipart/20210310/original/pngtree-business-high-tech-building-png-image_5911359.jpg"),
    //                   fit: BoxFit.cover,
    //                 ),
    //               ),
    //             )
    //           ],
    //         ),
    //       ),
    //     ),
    //   ),
    // );
  }
}
