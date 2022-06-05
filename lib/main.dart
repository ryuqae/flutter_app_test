import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_test/mypage.dart';
import 'package:flutter_app_test/page_one.dart';
import 'package:flutter_app_test/page_two.dart';

const fontsize = 18.0;
const email = 'ryuqae@gmail.com';
const name = 'jeongwoo';

void main() => runApp(const MaterialApp(home: MyApp()));

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  static const _widgetOptions = <Widget>[
    PageOne(),
    PageTwo(),
    MyPage(),
  ];
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Main',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.business),
                label: 'Second',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'MyPage',
              ),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.amber[800],
            unselectedItemColor: Colors.white.withOpacity(.60),
            backgroundColor: Colors.amber[400],
            onTap: (int index) {
              setState(() {
                _selectedIndex = index;
              });
              // ignore: avoid_print
              print(_selectedIndex);
            }),
        backgroundColor: Colors.amber[300],
        appBar: AppBar(
          title: const Text("Main"),
          elevation: 0.0,
          backgroundColor: Colors.amber[400],
        ),
        drawer: const Drawer(
            child: UserAccountsDrawerHeader(
          accountEmail: Text(email),
          accountName: Text(name),
        )),
        body: _widgetOptions.elementAt(_selectedIndex));
  }
}
