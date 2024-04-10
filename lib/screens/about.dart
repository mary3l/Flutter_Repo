import 'package:flutter/material.dart';

import 'package:programming_partner_two/widgets/drawer_widget.dart';

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('About Page'),
      // ),
      // drawer: webview_drawer_widget(),
      body: Container(
        child: Row(
          children: [
            Flexible(
              child: DashboardScreen(),
            ),
            Expanded(
              child: Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                      "Syntax is really different to React but the logic is the same."),
                  Text(
                      "It was all jargons at first but was bearable especially if you use Flutter Snippets Extension"),
                  Text(
                      "Every time the code runs perfectly at the first run is one of the nicest moments, then lows are if there are a lot of bugs"),
                  Text(
                      "The first bug you got your legit frustration while coding"),
                  Text("The first eureka moment."),
                ],
              )),
            ),
          ],
        ),
      ),
    );
  }
}
