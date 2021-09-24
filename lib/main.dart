import 'package:demo/Constants/textStyle.dart';
import 'package:demo/MemoryGame/MemoryGame.dart';
import 'package:demo/Tetris/game.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Constants/colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Kclr12,
      body: Container(
        margin: EdgeInsets.fromLTRB(20, 42, 20, 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Hii Gamer",
                  style: ktext,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Icon(
                    Icons.category_rounded,
                    color: Kclr14,
                    size: 30,
                  ),
                ),
              ],
            ),
            Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Row(
                  children: [
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 18, right: 18, top: 8, bottom: 8),
                        child: Text(
                          'Games',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(111, 0, 244, 1),
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                      ),
                    ),
                    SizedBox(
                      width: 18,
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 18, right: 18, top: 8, bottom: 8),
                        child: Text(
                          'Categories',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.indigo[900],
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                      ),
                    ),
                  ],
                )),
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: Text(
                'Continue Playing',
                style: ktext,
              ),
            ),
            // TODO Memory Game
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Transform(
                    transform: Matrix4.skewY(-0.05),
                    child: Container(
                      margin: EdgeInsets.only(top: 14),
                      padding: EdgeInsets.all(15),
                      height: MediaQuery.of(context).size.height * .22,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color.fromRGBO(209, 4, 43, 1),
                            Color.fromRGBO(214, 61, 99, 1),
                            // Kclr01, Kclr13,
                            // Kclr02, Kclr03,
                          ],
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Eddies Of Thoughts',
                          style: ktext,
                        ),
                        Text(
                          'Testing Your Mind',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return MemoryGame();
                            }));
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 10, right: 15, left: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Transform(
                                  transform: Matrix4.skewX(-0.05),
                                  origin: Offset(50.0, 50.0),
                                  child: Material(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 30,
                                          right: 30,
                                          top: 10,
                                          bottom: 10),
                                      child: Text(
                                        'PLAY',
                                        style: TextStyle(
                                            color: Colors.red.shade600,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height * .07,
                    right: MediaQuery.of(context).size.width * -.1,
                    child: Image(
                      image: AssetImage('images/MemoryGame.png'),
                      height: 170,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: Text(
                'Discover Games',
                style: ktext,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return Game();
                      }));
                    },
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Transform(
                          transform: Matrix4.skewY(-0.15),
                          origin: Offset(50.0, 50.0),
                          child: Container(
                            padding: EdgeInsets.all(15),
                            height: MediaQuery.of(context).size.height / 3.5,
                            width: MediaQuery.of(context).size.width / 2.4,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Color.fromRGBO(234, 70, 61, 1),
                                  Color.fromRGBO(238, 109, 43, 1),
                                ],
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 40, left: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Tetris',
                                style: ktext,
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(245, 196, 148, 1)
                                      .withOpacity(0.5),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 15, right: 15, top: 5, bottom: 5),
                                  child: Row(
                                    children: [
                                      Text(
                                        '3.5',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                        ),
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.white,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Text(
                                '100M+',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          bottom: MediaQuery.of(context).size.height * .10,
                          left: MediaQuery.of(context).size.width * .10,
                          child: Image(
                            image: AssetImage('images/TetrisIcon.png'),
                            height: 250,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Transform(
                        transform: Matrix4.skewY(-0.15),
                        origin: Offset(50.0, 50.0),
                        child: Container(
                          padding: EdgeInsets.all(15),
                          height: MediaQuery.of(context).size.height / 3.5,
                          width: MediaQuery.of(context).size.width / 2.4,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Kclr01,
                                Kclr13,
                                Kclr13,
                              ],
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 40, left: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Flappy',
                              style: ktext,
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(245, 196, 148, 1)
                                    .withOpacity(0.5),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 15, right: 15, top: 5, bottom: 5),
                                child: Row(
                                  children: [
                                    Text(
                                      '4.5',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                      ),
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Text(
                              '500M+',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        bottom: MediaQuery.of(context).size.height * .22,
                        right: MediaQuery.of(context).size.width * -.05,
                        child: Image(
                          image: AssetImage('images/FlappyBird.png'),
                          height: 100,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
