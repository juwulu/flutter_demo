import 'package:flutter/material.dart';

void main() => runApp(SnackBarApp());

class SnackBarApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        title: "RichTextApp",
        home: Scaffold(
          appBar: AppBar(
            title: Text('SnackBar'),
          ),
          body: Center(
              child:HomePage('SnakerBar')
          ),
        ));
  }
}

class HomePage extends StatefulWidget {
  String title;

  HomePage(this.title);

  @override
  State<StatefulWidget> createState() {
    return HomePageState(title);
  }
}

class HomePageState extends State<HomePage> {
  String title;

  HomePageState(this.title);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text('弹个SnackBar试试'),
      onPressed: () {
        Scaffold.of(context).showSnackBar(SnackBar(
          content: Text('怕你不成,试试就试试'),
          backgroundColor: Colors.red,
        ));
      },
    );
  }
}
