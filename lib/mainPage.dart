// ignore_for_file: file_names, sized_box_for_whitespace, unnecessary_const

import 'dart:ui';

import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  static const max = 180;
  int seconds = max;

  Color prime = const Color(0xFFFFFFFF);
  Color dark = const Color(0xFF1A1720);
  Color semiOrange = const Color(0xFFB23D23);
  Color softChoco = const Color(0xFF3A2E2C);
  Color softDark = const Color(0xFF191919);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(90),
            height: MediaQuery.of(context).size.height / 1.75,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      semiOrange,
                      softChoco,
                      softDark,
                    ]),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25.0),
                  bottomRight: Radius.circular(25.0),
                )),
            width: MediaQuery.of(context).size.width,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(25.0),
                child: Image(
                  image: AssetImage('assets/images/SelenaGomez.PNG'),
                )),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 15.0,
                  sigmaY: 15.0,
                ),
                child: Container(
                  height: MediaQuery.of(context).size.height / 1.75,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    gradient: LinearGradient(
                        begin: Alignment.bottomRight,
                        end: Alignment.topLeft,
                        colors: [
                          Colors.white10.withOpacity(0.2),
                          Colors.white10.withOpacity(0.2)
                        ]),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(18.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    splashColor: prime,
                    icon: Icon(Icons.arrow_back_ios_new_rounded),
                    iconSize: 30.0,
                    onPressed: () {

                    },
                    color: prime.withOpacity(0.9),
                  ),
                  IconButton(
                    splashColor: Colors.white,
                    icon: Icon(Icons.info),
                    iconSize: 30.0,
                    onPressed: () {

                    },
                    color: prime.withOpacity(0.9),
                  )
                ]),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(top: 18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Come & Get It",
                    style: TextStyle(
                      color: Colors.black87.withOpacity(0.5),
                      fontSize: 25,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Pop',
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    "Selena Gomez",
                    style: TextStyle(
                      fontWeight: FontWeight.w200,
                      fontSize: 20,
                      color: Colors.black.withOpacity(0.8),
                      fontFamily: 'Pop',
                    ),
                  ),
                  SizedBox(height: 18.0),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 48.0,
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              margin: EdgeInsets.only(top: 275, right: 10.0, left: 10.0),
              height: MediaQuery.of(context).size.height / 5,
              width: MediaQuery.of(context).size.width,
              child: Container(
                padding: EdgeInsets.all(18.0),
                child: RichText(
                  text: TextSpan(
                      text: "Selena Marie Gomez ",
                      style: TextStyle(
                          height: 1.5,
                          letterSpacing: 2,
                          wordSpacing: 1,
                          fontFamily: 'Pop',
                          fontWeight: FontWeight.w800,
                          fontSize: 12.0,
                          color: softDark),
                      children: [
                        TextSpan(
                            text:
                                "adalah seorang penyanyi, aktris, dan produser berkebangsaan ",
                            style: TextStyle(
                              fontSize: 12.0,
                              fontFamily: 'Pop',
                              fontWeight: FontWeight.w400,
                              color: softChoco,
                            )),
                        TextSpan(
                            text: "Amerika Serikat ",
                            style: TextStyle(
                                color: softDark,
                                fontWeight: FontWeight.w800,
                                fontFamily: 'Pop',
                                fontSize: 12.0)),
                        TextSpan(
                            text: "Sebagai artis solo, ",
                            style: TextStyle(
                                color: softChoco,
                                fontFamily: 'Pop',
                                fontWeight: FontWeight.w400,
                                fontSize: 12.0)),
                        TextSpan(
                            text: "Gomez ",
                            style: TextStyle(
                                height: 1.5,
                                color: softDark,
                                fontWeight: FontWeight.w800,
                                fontFamily: 'Pop',
                                fontSize: 12.0)),
                        TextSpan(
                            text:
                                "telah merilis tiga album yaitu Stars Dance(2013), Revival(2015), dan Rare(2020)",
                            style: TextStyle(
                              height: 1.5,
                              color: softChoco,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Pop',
                              fontSize: 12.0,
                            ))
                      ]),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
