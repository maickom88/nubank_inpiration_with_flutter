import 'package:flutter/material.dart';
import 'package:nubank_app/pages/home/widgets/bottom_menu.dart';
import 'package:nubank_app/pages/home/widgets/item_menu_bottom.dart';
import 'package:nubank_app/pages/home/widgets/menu_app.dart';
import 'package:nubank_app/pages/home/widgets/my_dots_app.dart';
import 'package:nubank_app/pages/home/widgets/page_view_app.dart';
import 'widgets/my_app_bar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _showMenu;
  int _currentIndex;
  double _yPosition;

  @override
  void initState() {
    super.initState();
    _showMenu = false;
    _currentIndex = 0;
    _yPosition = null;
  }

  @override
  Widget build(BuildContext context) {
    double _screeHeight = MediaQuery.of(context).size.height;

    if (_yPosition == null) {
      setState(() {
        _yPosition = _screeHeight * .24;
      });
    }

    return Scaffold(
        backgroundColor: Colors.purple[800],
        body: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            MyAppBar(
              showMenu: _showMenu,
              onTap: () {
                setState(() {
                  _showMenu = !_showMenu;
                  _yPosition =
                      _showMenu ? _screeHeight * .74 : _screeHeight * .24;
                });
              },
            ),
            MenuApp(
              showMenu: _showMenu,
              top: _screeHeight * 0.18,
            ),
            BottomMenu(showMenu:  _showMenu,),
            PageViewApp(
              showMenu: _showMenu,
              top:
                  _yPosition, // !_showMenu ? _screeHeight * .24 : _screeHeight * .75 ,
              onChanged: (index) {
                setState(() {
                  _currentIndex = index;
                });
              },
              onPanUpdate: (details) {
                setState(() {
                  double bottomLimit = _screeHeight * .75;
                  double topLimit = _screeHeight * .24;
                  double midlePosition = bottomLimit - topLimit;
                  midlePosition = midlePosition / 2;
                  _yPosition += details.delta.dy;

                  _yPosition = _yPosition < topLimit ? topLimit : _yPosition;
                  _yPosition =
                      _yPosition > bottomLimit ? bottomLimit : _yPosition;
                  if (_yPosition != bottomLimit && details.delta.dy > 0) {
                    _yPosition = _yPosition > topLimit + midlePosition
                        ? bottomLimit
                        : _yPosition;
                  }
                  if (_yPosition != topLimit && details.delta.dy < 0) {
                    _yPosition = _yPosition < bottomLimit - midlePosition
                        ? topLimit
                        : _yPosition;
                  }
                  if (_yPosition == bottomLimit) {
                    _showMenu = true;
                  } else if (_yPosition == topLimit) {
                    _showMenu = false;
                  }
                });
              },
            ),
            MyDotsApp(
              showMenu: _showMenu,
              top: _screeHeight * .73,
              currentIndex: _currentIndex,
            ),
           
          ],
        ));
  }
}
