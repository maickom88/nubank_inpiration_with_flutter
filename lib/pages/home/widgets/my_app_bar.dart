import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {

  final bool showMenu;
  final VoidCallback onTap;


  const MyAppBar({Key key, this.showMenu, this.onTap}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: MediaQuery.of(context).padding.top,
        ),
        GestureDetector(
          onTap: onTap,
          child: Container(
              color: Colors.transparent,
              height: MediaQuery.of(context).size.height * 0.18,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.network(
                        'https://logodownload.org/wp-content/uploads/2019/08/nubank-logo.png',
                        height: 45,
                        color: Colors.white
                      ),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                  SizedBox(height: 5,),
                  Icon(
                    !showMenu? Icons.expand_more : Icons.expand_less
                  )
                ],
              )),
        ),
      ],
    );
  }
}
