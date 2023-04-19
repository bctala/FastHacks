import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import '../screens/screens.dart';
import 'package:flutter/src/rendering/box.dart';

class FirstPlace extends StatefulWidget {
  const FirstPlace({super.key});

  @override
  State<FirstPlace> createState() => _FirstPlaceState();
}

class _FirstPlaceState extends State<FirstPlace> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Image(image: Svg('assets/photos/clip.svg')),
          ),
          title:
              Row(mainAxisAlignment: MainAxisAlignment.center, children: const [
            Text('جبل أُحُد',
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
                      'assets/photos/Uhud.JPG',
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Icon(
                          Icons.bookmark_add_rounded,
                          color: Color(0xff3f382e),
                          size: 30,
                        ),
                      ]),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Text('جبل أُحُد',
                            style: TextStyle(
                                fontSize: 40,
                                color: Color(0xffb4a79e),
                                fontFamily: 'Careem')),
                      ]),
                  const SizedBox(
                    height: 20,
                  ),
                  Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Text(
                          " جبل أحد هو جبل يقع في المدينة المنورة في المملكة العربية السعودية و يشتهر هذا الجبل بأنه كان موقعًا لمعركة أحد التي وقعت بين المسلمين و قريش في عام ٦٢٥ ميلادي، و تعد معركة أحد من أشهر المعارك التي خاضها الإسلام في تاريخه حيث كانت تجربة مؤلمة للمسلمين حيث قتل فيها عدد من الصحابة الكرام و لكنها كانت بمنزلة اختبار لايمان المسلمين و تحملهم للمصاعب و المحن. و يعد جبل أحد مزارًا دينيًا يزوره الحجاج و المعتمرون و يتميز بإطلالة جميلة على المدينة المنورة",
                          style: TextStyle(
                              fontSize: 20,
                              color: Color(0xff3f382e),
                              fontFamily: 'Careem'),
                          textAlign: TextAlign.right,
                        ),
                      ]),
                ]))));
  }
}
