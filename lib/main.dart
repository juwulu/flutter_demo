import 'package:flutter/material.dart';

void main() => runApp(new ListApp());

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
                  'LakeOeschinenliesatthefootoftheBlüemlisalpintheBerneseAlps.Situated1,578metersabovesealevel,itisoneofthelargerAlpineLakes.AgondolaridefromKandersteg,followedbyahalf-hourwalkthroughpasturesandpineforest,leadsyoutothelake,whichwarmsto20degreesCelsiusinthesummer.Activitiesenjoyedhereincluderowing,andridingthesummertobogganrun.',
                ),
              )
            ],
          ),
        ));
  }
}

class ListApp extends StatelessWidget {
  final List<Building> buildings = [
    Building(BuildingType.theater, 'CineArtsattheEmpire', '85WPortalAve'),
    Building(BuildingType.theater, 'TheCastroTheater', '429CastroSt'),
    Building(BuildingType.theater, 'AlamoDrafthouseCinema', '2550MissionSt'),
    Building(BuildingType.theater, 'RoxieTheater', '311716thSt'),
    Building(BuildingType.theater, 'UnitedArtistsStonestownTwin',
        '501BuckinghamWay'),
    Building(BuildingType.theater, 'AMCMetreon16', '1354thSt#3000'),
    Building(BuildingType.restaurant, 'K\'sKitchen', '1923OceanAve'),
    Building(
        BuildingType.restaurant, 'ChaiyaThaiRestaurant', '72ClaremontBlvd'),
    Building(BuildingType.restaurant, 'LaCiccia', '29130thSt'), //double一下
    Building(BuildingType.theater, 'CineArtsattheEmpire', '85WPortalAve'),
    Building(BuildingType.theater, 'TheCastroTheater', '429CastroSt'),
    Building(BuildingType.theater, 'AlamoDrafthouseCinema', '2550MissionSt'),
    Building(BuildingType.theater, 'RoxieTheater', '311716thSt'),
    Building(BuildingType.theater, 'UnitedArtistsStonestownTwin',
        '501BuckinghamWay'),
    Building(BuildingType.theater, 'AMCMetreon16', '1354thSt#3000'),
    Building(BuildingType.restaurant, 'K\'sKitchen', '1923OceanAve'),
    Building(
        BuildingType.restaurant, 'ChaiyaThaiRestaurant', '72ClaremontBlvd'),
    Building(BuildingType.restaurant, 'LaCiccia', '29130thSt'),
  ];

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "ListApp",
      home: new Scaffold(
          appBar: AppBar(
            title: Text('ListView'),
          ),
          body: new BuildingListView(buildings,((index)=> debugPrint('$index 被点击了')))),
    );
  }
}

enum BuildingType { theater, restaurant }

class Building {
  final BuildingType type;
  final String title;
  final String address;

  Building(this.type, this.title, this.address);
}

typedef OnItemClickListener = void Function(int position);

class ItemView extends StatelessWidget {
  final int position;
  final Building building;
  final OnItemClickListener listener;

  ItemView(this.position, this.building, this.listener);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final icon = Icon(
      building.type == BuildingType.restaurant
          ? Icons.restaurant
          : Icons.theaters,
      color: Colors.blue,
    );

    final widget = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(10.0),
          child: icon,
        ),
        Expanded(
          child: Column(
            children: <Widget>[
              Text(
                building.title,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                building.address,
                style: TextStyle(
                    color: Colors.black12,
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold),
              )
            ],
            crossAxisAlignment: CrossAxisAlignment.start,
          ),
        )
      ],
    );

    return InkWell(
      child: widget,
      onTap: () => listener(position),
    );
  }
}

class BuildingListView extends StatelessWidget {
  final List<Building> buildings;
  final OnItemClickListener listener;

  BuildingListView(this.buildings, this.listener);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
      itemCount: buildings.length,
      itemBuilder: (context, index) {
        return new ItemView(index, buildings[index], listener);
      },
    );
  }
}
