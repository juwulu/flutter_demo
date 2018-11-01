import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'AppBar',
      home: new AppBarWidget(),
    );
  }
  
}

class AppBarWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return AppBarState();
  }
}

class AppBarState extends State<AppBarWidget> with SingleTickerProviderStateMixin {
  TabController _tabController;
  int _currentItem = 0;

  bool flag = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 7, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(flag ? '主页' : 'Home'),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.alarm,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          PopupMenuButton<String>(
            itemBuilder: (BuildContext context) =>
            <PopupMenuItem<String>>[
              PopupMenuItem<String>(
                value: 'Chinese',
                child: Text(flag ? '中文' : 'chinese'),
              ),
              PopupMenuItem<String>(
                value: 'English',
                child: Text(flag ? '英文' : 'english'),
              )
            ],
            onSelected: (String action) {
              switch (action) {
                case 'Chinese':
                  debugPrint('$action');
                  setState(() {
                    flag = true;
                  });
                  break;
                case 'English':
                  debugPrint('$action');
                  setState(() {
                    flag = false;
                  });
                  break;
              }
            },
          ),
        ],
        bottom: TabBar(
          tabs: <Tab>[
            Tab(
              text: flag ? '英语' : 'English',
            ),
            Tab(
              text: flag ? '数学' : 'Math',
            ),
            Tab(
              text: flag ? '语文' : 'Chinese',
            ),
          ],
          controller: _tabController,
        ),
      ),
      body: TabBarView(
        children: <Widget>[
          Center(
            child: Text(flag ? '英语' : 'English'),
          ),
          Center(
            child: Text(flag ? '数学' : 'Math'),
          ),
          Center(
            child: Text(flag ? '语文' : 'Chinese'),
          ),
        ],
        controller: _tabController,
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('jwluuu'),
              accountEmail: Text('jwluuu@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    'http://img4.duitang.com/uploads/item/201410/03/20141003160129_nUfjf.thumb.700_0.jpeg'),
              ),
              otherAccountsPictures: <Widget>[
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      'http://img4.duitang.com/uploads/item/201410/03/20141003160129_nUfjf.thumb.700_0.jpeg'),
                ),
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      'http://img4.duitang.com/uploads/item/201410/03/20141003160129_nUfjf.thumb.700_0.jpeg'),
                ),
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      'http://img4.duitang.com/uploads/item/201410/03/20141003160129_nUfjf.thumb.700_0.jpeg'),
                ),
              ],
              onDetailsPressed: () {},
            ),
            ListTile(
              leading: CircleAvatar(
                child: Text('A'),
              ),
              title: Text('Android'),
              subtitle: Text("Java&Kolin"),
            ),
            ListTile(
              leading: CircleAvatar(
                child: Text('I'),
              ),
              title: Text('IOS'),
              subtitle: Text("ObjectC&Swift"),
            ),
            ListTile(
              leading: CircleAvatar(
                child: Text('F'),
              ),
              title: Text('Flutter'),
              subtitle: Text("Dart"),
            ),
            AboutListTile(
              icon: CircleAvatar(
                child: Text('AB'),
              ),
              applicationIcon: CircleAvatar(
                child: Image.network(
                    'http://img4.duitang.com/uploads/item/201410/03/20141003160129_nUfjf.thumb.700_0.jpeg'),
              ),
              applicationName: 'Flutter',
              applicationVersion: '1.0.1',
              applicationLegalese: 'applicationLegalese',
              aboutBoxChildren: <Widget>[
                Text('aboutBoxChildren'),
                Text('aboutBoxChildren'),
                Text('aboutBoxChildren'),
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(
                Icons.restaurant,
              ),
              title: Text('食堂'),
              backgroundColor: Colors.red),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.library_books,
              ),
              backgroundColor: Colors.blue,
              title: Text('图书馆')),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.pool,
              ),
              backgroundColor: Colors.black,
              title: Text('游泳池')),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.school,
              ),
              backgroundColor: Colors.yellow,
              title: Text('教学楼')),
        ],
        currentIndex: _currentItem,
        onTap: (index) {
          setState(() {
            _currentItem = index;
          });
        },
      ),
    );

  }
}
