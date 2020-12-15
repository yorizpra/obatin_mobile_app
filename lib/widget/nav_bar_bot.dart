import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:obatin_app/bantuan/constants.dart';
import 'file:///C:/Users/arief/AndroidStudioProjects/obatin_app/lib/halaman/akun/akun.dart';
import 'package:obatin_app/halaman/keranjang/keranjang.dart';
import 'file:///C:/Users/arief/AndroidStudioProjects/obatin_app/lib/halaman/layanan/layanan.dart';
import 'package:obatin_app/home/home.dart';

class NavBar extends StatefulWidget{
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> with TickerProviderStateMixin {
  int _currentTab = 0;
  DateTime _currentBackPressTime;
  TabController _tabController;
  AnimationController _animationController;
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  List<Widget> _viewList = [
    Home(),
    Keranjang(),
    Layanan(),
    Akun(),
  ];

  @override
  void initState(){
    super.initState();
    _tabController = TabController(vsync: this,length: _viewList.length);
    _animationController = AnimationController(vsync: this, duration: Duration(milliseconds: 200));
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => _willPopCallBack(context),
      child: Scaffold(
        key: _scaffoldKey,
        drawerEdgeDragWidth: 0,
        body: Stack(
          children: [
            NotificationListener<UserScrollNotification>(
              child: TabBarView(
                children: _viewList,
                controller: _tabController,
                physics: NeverScrollableScrollPhysics(),
              ),
              onNotification: (UserScrollNotification notification){
                if(true){
                  if(notification.direction == ScrollDirection.reverse &&
                  notification.metrics.extentAfter > kToolbarHeight &&
                      notification.metrics.axis == Axis.vertical
                  ){
                    _animationController.forward();
                  }
                  else if(notification.direction == ScrollDirection.forward){
                    _animationController.reverse();
                  }
                }
                return true;
              },
            ),
          ],
        ),

        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: kPrimaryColor,
          currentIndex: _currentTab,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white,
          onTap: (index){
            setState(() {
              _currentTab = index;
              _tabController.animateTo(_currentTab);
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: 'Keranjang',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.medical_services),
              label: 'Layanan',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_rounded),
              label: 'Akun',
            )
          ],
        ),
    ),
    );
  }

  _willPopCallBack(BuildContext context){
    DateTime now = DateTime.now();
    if(_currentTab != 1){
      if(_currentBackPressTime == null || now.difference(_currentBackPressTime) > Duration(seconds: 4)){
        _currentBackPressTime = now;
        _scaffoldKey.currentState.showSnackBar(
          SnackBar(
            content: Text('Tekan Lagi untuk Keluar'),
          ),
        );
        return Future.value(false);
      }
      return Future.value(false);
    }
  }

}