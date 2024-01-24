import 'package:flutter/material.dart';
import 'package:imi_v2/services/api_service.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final apiService = ApiService(baseUrl: 'http://10.0.2.2:3000');
  String data = "";

  @override
  void initState() {
    super.initState();
    _fetchData();
  }

  _fetchData() async {
    var response = await apiService.fetchTpt900();
    setState(() {
      data = response.body;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: Center(child: Text(data)),
    );
  }
}
