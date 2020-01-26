import 'package:flutter/material.dart';
import 'package:flutter_webpage/pages/homepage.dart';
import 'package:flutter_webpage/Navbar/navbar_indicator.dart';
import 'pages/about_us.dart';
import 'pages/support.dart';
import 'pages/services.dart';


class IbdNet extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ibdNet();
  }
}


class _ibdNet extends State<IbdNet> with TickerProviderStateMixin{
  TabController _nestedTabController;
  @override
  void initState() {
    super.initState();
    _nestedTabController = new TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _nestedTabController.dispose();
  }



  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(90.0),
        child: AppBar(
          elevation: 0.0,
          flexibleSpace: Container(
              alignment: Alignment.bottomCenter,
              padding:  EdgeInsets.symmetric(horizontal:30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  //SizedBox(width: 5,),
                 Text(
                      "City Online Ltd",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize:35),
                 ),
                  TabBar(
                    controller: _nestedTabController,
                    indicator: new BubbleTabIndicator(
                      indicatorHeight: 25.0,
                      indicatorColor: Color.fromRGBO(0, 0, 51, 1.0),
                      tabBarIndicatorSize: TabBarIndicatorSize.tab,
                    ),
                    unselectedLabelColor: Colors.white,
                    isScrollable: true,
                    tabs: <Widget>[
                      Tab(
                        text: "Home",
                      ),
                      Tab(
                        text: "About Us",
                      ),
                      Tab(
                        text: "Services",
                      ),
                      Tab(
                        text: "Support",
                      ),
                    ],
                  ),
                ],
            ) ,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    Color.fromRGBO(195, 20, 50, 1.0),
                    Color.fromRGBO(36, 11, 54, 1.0)

//                    Color.fromRGBO(0, 0, 51, 1.0),
//                    Color.fromRGBO(51, 153, 153, 1.0)
                  ]),
            ),
          ),
        ),
      ),
      body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Color.fromRGBO(195, 20, 50, 1.0),
                  Color.fromRGBO(36, 11, 54, 1.0)
//                  Color.fromRGBO(0, 0, 51, 1.0),
//                  Color.fromRGBO(51, 153, 153, 1.0)
                ]),
          ),
              child: TabBarView(
                controller: _nestedTabController,
                children: <Widget>[
                  homepage(context),
                  About_Us(),
                  Support(),
                  ServicePage(),
                ],
              ),
            )
    );
  }
}