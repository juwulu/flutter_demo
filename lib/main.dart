import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: '湖人队Lakes',
        home: Scaffold(
          appBar: AppBar(
            title: Text('湖人队Lakes'),
          ),
          body: ListView(
            children: <Widget>[
              Image.asset(
                "imgs/lake.jpg",
                height: 240.0,
                fit: BoxFit.cover,
              ),
              Container(
                padding: EdgeInsets.all(20.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Column(
                        children: <Widget>[
                          Text(
                            '湖人队打败勇士队获得季后赛冠军',
                            textAlign: TextAlign.left,
                          ),
                          Text(
                            '湖人队66666666666到飞起啊，勇士队不牛逼',
                            style: TextStyle(
                                fontSize: 14.0, color: Colors.black12),
                          )
                        ],
                        crossAxisAlignment: CrossAxisAlignment.start,
                      ),
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.red,
                    ),
                    Text('41')
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    child: Column(
                      children: <Widget>[
                        Icon(
                          Icons.call,
                          color: Colors.blue,
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 8.0),
                          child: Text('电话'),
                        )
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                    ),
                  ),
                  Container(
                    child: Column(
                      children: <Widget>[
                        Icon(
                          Icons.near_me,
                          color: Colors.blue,
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 8.0),
                          child: Text('位置'),
                        )
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                    ),
                  ),
                  Container(
                    child: Column(
                      children: <Widget>[
                        Icon(
                          Icons.share,
                          color: Colors.blue,
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 8.0),
                          child: Text('分享'),
                        )
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                    ),
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.all(20.0),
                child: Text(
                  'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. Activities enjoyed here include rowing, and riding the summer toboggan run.'
                  ,
                ),
              )
            ],
          ),
        ));
  }
}
