import 'package:demo_food/explore.dart';
import 'package:demo_food/utils/AppConstant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: appBar(),
        body: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left:15.0),
              child: Row(
                children: [
                  Text(
                    "Cooklist",
                    style: TextStyle(color: AppConstant.primaryColor, fontWeight: FontWeight.bold, fontSize: 35),
                  ),
                  Text(
                    "_",
                    style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 35),
                  ),
                  Text(
                    "Recipes",
                    style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ],
              ),
            ),
            SizedBox(height: 50, child: tabBar()),
            Expanded(
              child: TabBarView(
                children: [
                  // first tab bar view widget
                  ExploreContainer(),
                  ExploreContainer(),
                  ExploreContainer(),


                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  TabBar tabBar() {
    return TabBar(
      indicatorColor: Color(0xff00b69a),
      labelStyle: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold), //For Selected tab
      unselectedLabelStyle: TextStyle(fontSize: 16.0, color: Colors.grey),
      tabs: [
        Tab(
          child: Row(
            children: [
              Text("Explore"),
            ],
          ),
        ),
        Tab(
          child: Row(
            children: [
              Text("Cook now"),
            ],
          ),
        ),
        Tab(
          child: Row(
            children: [
              Text("Favorite"),
            ],
          ),
        ),
      ],
    );
  }

  Container tabItems(String name) {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 5),
        child: Text('$name'),
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
      elevation: 0,
      leading: Icon(Icons.menu, color: Colors.grey),
      title: Container(
        padding: EdgeInsets.only(top: 5, right: 10, left: 10, bottom: 5),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.grey[100]),
        child: Row(
          children: [
            Icon(Icons.search, color: Colors.grey),
            SizedBox(
              width: 10,
            ),
            Text(
              'Search',
              style: TextStyle(color: Colors.grey),
            )
          ],
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right:8.0),
          child: Icon(Icons.shopping_bag_outlined,size: 30,),
        ),
      ],
    );
  }
}

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    Path path = Path();

    // Path number 1

    paint.color = Color(0xffffffff).withOpacity(0);
    path = Path();
    path.lineTo(size.width * 0.94, size.height);
    path.cubicTo(size.width * 0.94, size.height, 0, size.height, 0, size.height);
    path.cubicTo(0, size.height, size.width * 0.18, size.height / 2, size.width * 0.18, size.height / 2);
    path.cubicTo(size.width * 0.18, size.height / 2, 0, 0, 0, 0);
    path.cubicTo(0, 0, size.width * 0.94, 0, size.width * 0.94, 0);
    path.cubicTo(size.width * 0.97, 0, size.width, size.height * 0.02, size.width, size.height * 0.03);
    path.cubicTo(size.width, size.height * 0.03, size.width, size.height * 0.96, size.width, size.height * 0.96);
    path.cubicTo(size.width, size.height * 0.98, size.width * 0.97, size.height, size.width * 0.94, size.height);
    path.cubicTo(size.width * 0.94, size.height, size.width * 0.94, size.height, size.width * 0.94, size.height);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
