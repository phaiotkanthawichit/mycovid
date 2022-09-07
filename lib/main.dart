import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:mycovid/data_api.dart';
import 'dart:async';
import 'dart:convert';

class MainPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MainPageState();
  }
}

class MainPageState extends State<MainPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    print('init state');
    getData();
  }

  Future<void> getData() async {
    print('get data');
    //https://covid19.ddc.moph.go.th/api/Cases/today-cases-all

    var Url = Uri.https('covid19.ddc.moph.go.th', '/api/Cases/today-cases-all');

    var response = await http.get(Url);
    print('----------DATA -------');
    print(response.body);
    dataAllFromJson(response.body);

    //var result = json.decode(response.body);
    //var v1 = result["new_case"];

    // setState(() {
    //   confirmed.text = v1;
    // });
  }

  @override
  Widget build(BuildContext context) {
    print('build');

    return Scaffold(
      appBar: AppBar(
        title: Text('ITem'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_alert),
        onPressed: (() {}),
      ),
      body: Column(
        children: <Widget>[
          ListTile(
            title: Text('ผู้ติดเชื้อสะสม'),
            subtitle: Text('0'),
          ),
          ListTile(
            title: Text('ผู้ติดเชื้อสะสม'),
            subtitle: Text('0'),
          ),
          ListTile(
            title: Text('ผู้ติดเชื้อสะสม'),
            subtitle: Text('0'),
          )
        ],
      ),
    );
  }
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My covid',
      home: MainPage(),
    );
  }
}

void main() {
  runApp(App());
}
