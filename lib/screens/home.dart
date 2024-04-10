import 'package:flutter/material.dart';
import 'package:programming_partner_two/widgets/card_widget.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:programming_partner_two/widgets/drawer_widget.dart';
import 'package:programming_partner_two/models/card_model.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late Future<List<CardModel>> _fetchCards;

  @override
  void initState() {
    super.initState();
    _fetchCards = _fetchData();
  }

  Future<List<CardModel>> _fetchData() async {
    final response = await http
        .get(Uri.parse('https://6616d5e0ed6b8fa434817aaa.mockapi.io/Faker'));

    if (response.statusCode == 200) {
      List<dynamic> data = json.decode(response.body);
      return data.map((item) => CardModel.fromJson(item)).toList();
    } else {
      throw Exception('Failed to load data');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Row(
          children: [
            Flexible(
              child: DashboardScreen(),
            ),
            Expanded(
              child: FutureBuilder<List<CardModel>>(
                future: _fetchCards,
                builder: (context, cardWidgetData) {
                  if (cardWidgetData.connectionState ==
                      ConnectionState.waiting) {
                    return Center(child: CircularProgressIndicator());
                  } else if (cardWidgetData.hasError) {
                    return Center(
                        child: Text('Error: ${cardWidgetData.error}'));
                  } else {
                    return ListView.builder(
                      itemCount: cardWidgetData.data!.length,
                      itemBuilder: (context, index) {
                        return CardWidget(card: cardWidgetData.data![index]);
                      },
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
