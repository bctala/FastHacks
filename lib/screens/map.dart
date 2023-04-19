import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import '../screens/screens.dart';

class Map extends StatefulWidget {
  @override
  State<Map> createState() => _MapState();
}

class _MapState extends State<Map> {
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
          title:
              Row(mainAxisAlignment: MainAxisAlignment.center, children: const [
            Text('الرئيسية',
                style: TextStyle(
                    fontSize: 20,
                    color: Color(0xff3f382e),
                    fontFamily: 'Careem',
                    fontWeight: FontWeight.bold)),
          ]),
        ),
        body: SafeArea(
            child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Align(
                    child: Image.asset(
                      alignment: Alignment.topCenter,
                      'assets/photos/map.png',
                    ),
                  ),
                  Column(children: [
                    Align(
                      child: Container(
                        height: 50,
                        width: 395,
                        decoration: BoxDecoration(
                          color: Color(0xff3f382e),
                          borderRadius: BorderRadius.circular(18),
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: TextButton(
                          style: ButtonStyle(
                              overlayColor: MaterialStateProperty.resolveWith(
                            (states) => Colors.black12,
                          )),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomePage()));
                          },
                          child: const Text(
                            "التفاصيل",
                            style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'Careem',
                                color: Colors.white),
                          ),
                        ),
                        alignment: Alignment.bottomCenter,
                      ),
                    )
                  ])
                ]))));
  }
}
