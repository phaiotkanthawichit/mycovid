import 'package:flutter/material.dart';

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
