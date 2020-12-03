import 'package:Blog_app/Screens/favpage.dart';
import 'package:Blog_app/Screens/homepage.dart';
import 'package:Blog_app/Screens/searchpage.dart';
import 'package:Blog_app/authenicateScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int index = 0;

  List screens = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    screens = [HomePage(), Favoriate(), Search()];
  }

  @override
  Widget build(BuildContext context) {
    bool isUser = false;
    return Listener(
      behavior: HitTestBehavior.opaque,
      onPointerDown: (_) {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasFocus && currentFocus.focusedChild != null) {
          currentFocus.focusedChild.unfocus();
        }
      },
      child: MaterialApp(
        home: isUser
            ? Scaffold(
                bottomNavigationBar: BottomNavigationBar(
                  items: [
                    BottomNavigationBarItem(
                        icon: Icon(Feather.home), title: Text("Home")),
                    BottomNavigationBarItem(
                        icon: Icon(Feather.heart), title: Text("Favoriate")),
                    BottomNavigationBarItem(
                        icon: Icon(Feather.search), title: Text("Search")),
                  ],
                  currentIndex: index,
                  onTap: (value) => setState(() => index = value),
                  showSelectedLabels: false,
                  showUnselectedLabels: false,
                ),
                body: screens[index],
              )
            : AuthScreen(),
      ),
    );
  }
}
