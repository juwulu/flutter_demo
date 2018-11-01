import 'package:flutter/material.dart';

void main() => runApp(RichTextApp());

class RichTextApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(title: "RichTextApp", home: new HomePage());
  }
}

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int _count = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('富文本'),
      ),
      floatingActionButton: FloatingActionButton(onPressed: _increase,child: Icon(Icons.add),),
      body: Center(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            'Flutter is a mobile app SDK for building high-performance, high-fidelity, apps for iOS and Android, from a single codebase.',
            style: TextStyle(fontSize: 18.0, color: Colors.teal[500]),
            softWrap: true,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            textAlign: TextAlign.left,
          ),
          Text(
            'Flutter 是一个用一套代码就可以构建高性能安卓和苹果应用的移动应用 SDK。 ',
            style: TextStyle(fontSize: 16.0),
            softWrap: true,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            textAlign: TextAlign.left,
          ),
          RichText(
            text: TextSpan(
                text: '您点击了',
                style: TextStyle(
                    fontSize: 16.0, color: Colors.amber, inherit: true),
                children: <TextSpan>[
                  TextSpan(
                      text: '$_count', style: TextStyle(color: Colors.blue)),
                  TextSpan(text: '次')
                ]),
          )
        ],
      )),
    );
  }

  void _increase() {
    setState(() {
      _count++;
    });
  }
}
