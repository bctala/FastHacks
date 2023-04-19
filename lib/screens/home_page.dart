import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import '../screens/screens.dart';
import 'package:flutter/src/rendering/box.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Image(image: Svg('assets/photos/clip.svg')),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(children: [
            Flexible(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    const Center(
                      child: Text(" :مساجد قريبة",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20,
                              color: Color(0xff3f382e),
                              fontFamily: 'Careem')),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Scrollbar(
                      child: GridView.count(
                        shrinkWrap: true,
                        physics: BouncingScrollPhysics(),
                        primary: true,
                        crossAxisCount: 2,
                        children: <Widget>[
                          Container(
                            child: TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Rating()));
                                },
                                child: Column(children: <Widget>[
                                  Image.asset(
                                    'assets/photos/mosque.png',
                                    height: 100,
                                    width: 100,
                                  ),
                                  const Text("مسجد عبدالرحمن الدبل",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Color(0xff3f382e),
                                          fontFamily: 'Careem')),
                                  Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: const [
                                        Icon(
                                          Icons.star,
                                          color: Color.fromARGB(
                                              255, 243, 219, 101),
                                          size: 20,
                                        ),
                                        Text("5",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: Color(0xff3f382e),
                                                fontFamily: 'Careem')),
                                      ])
                                ])),
                          ),
                          Container(
                            child: TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Rating()));
                                },
                                child: Column(children: <Widget>[
                                  Image.asset(
                                    'assets/photos/mosque.png',
                                    height: 100,
                                    width: 100,
                                  ),
                                  const Text("مسجد راشد العثمان ",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Color(0xff3f382e),
                                          fontFamily: 'Careem')),
                                  Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: const [
                                        Icon(
                                          Icons.star,
                                          color: Color.fromARGB(
                                              255, 243, 219, 101),
                                          size: 20,
                                        ),
                                        Text("3",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: Color(0xff3f382e),
                                                fontFamily: 'Careem')),
                                      ])
                                ])),
                          ),
                          Container(
                            child: TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Rating()));
                                },
                                child: Column(children: <Widget>[
                                  Image.asset(
                                    'assets/photos/mosque.png',
                                    height: 100,
                                    width: 100,
                                  ),
                                  const Text("مسجد الإخلاص ",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Color(0xff3f382e),
                                          fontFamily: 'Careem')),
                                  Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: const [
                                        Icon(
                                          Icons.star,
                                          color: Color.fromARGB(
                                              255, 243, 219, 101),
                                          size: 20,
                                        ),
                                        Text("4",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: Color(0xff3f382e),
                                                fontFamily: 'Careem')),
                                      ])
                                ])),
                          ),
                          Container(
                            child: TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Rating()));
                                },
                                child: Column(children: <Widget>[
                                  Image.asset(
                                    'assets/photos/mosque.png',
                                    height: 100,
                                    width: 100,
                                  ),
                                  const Text(" مسجد التقوى ",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Color(0xff3f382e),
                                          fontFamily: 'Careem')),
                                  Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: const [
                                        Icon(
                                          Icons.star,
                                          color: Color.fromARGB(
                                              255, 243, 219, 101),
                                          size: 20,
                                        ),
                                        Text("5",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: Color(0xff3f382e),
                                                fontFamily: 'Careem')),
                                      ])
                                ])),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Center(
                      child: Text(" :معالم تاريخية إسلامية قريبة",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20,
                              color: Color(0xff3f382e),
                              fontFamily: 'Careem')),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Scrollbar(
                      child: GridView.count(
                        shrinkWrap: true,
                        physics: BouncingScrollPhysics(),
                        primary: true,
                        crossAxisCount: 2,
                        children: <Widget>[
                          Container(
                            child: TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => FirstPlace()));
                                },
                                child: Column(children: <Widget>[
                                  Image.asset(
                                    'assets/photos/historic.png',
                                    height: 100,
                                    width: 100,
                                  ),
                                  const Text("خيبر",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Color(0xff3f382e),
                                          fontFamily: 'Careem')),
                                ])),
                          ),
                          Container(
                            child: TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => FirstPlace()));
                                },
                                child: Column(children: <Widget>[
                                  Image.asset(
                                    'assets/photos/historic.png',
                                    height: 100,
                                    width: 100,
                                  ),
                                  const Text("مسجد جواثا",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Color(0xff3f382e),
                                          fontFamily: 'Careem')),
                                ])),
                          ),
                        ],
                      ),
                    ),
                  ]),
            ),
          ]),
        ),
      ),
    );
  }
}
