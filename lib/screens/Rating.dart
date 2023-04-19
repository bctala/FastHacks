import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import '../screens/screens.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

class Rating extends StatefulWidget {
  @override
  State<Rating> createState() => _RatingState();
}

class _RatingState extends State<Rating> {
  playSound() async {
    AssetsAudioPlayer audioPlayer = AssetsAudioPlayer();
    await audioPlayer.open(
      Audio(
        'assets/audio/one.mp3',
      ),
    );
  }

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
            Text('مسجد عبدالرحمن الدبل',
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
                    height: 50,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Text(":صوت المؤذن",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                fontSize: 18,
                                color: Color(0xff3f382e),
                                fontFamily: 'Careem')),
                      ]),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () => playSound(),
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xff3f382e),
                        ),
                        child: Text(
                          'ايقاف',
                        ),
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      ElevatedButton(
                        onPressed: () => playSound(),
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xff3f382e),
                        ),
                        child: Text(
                          'تشغيل',
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Text(":تقييم الممتلكات العامة",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                fontSize: 18,
                                color: Color(0xff3f382e),
                                fontFamily: 'Careem')),
                      ]),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Text(":دورات المياه",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                fontSize: 18,
                                color: Color(0xff3f382e),
                                fontFamily: 'Careem')),
                      ]),
                  Column(
                    children: [
                      RatingBar.builder(
                          itemCount: 5,
                          initialRating: 2,
                          minRating: 1,
                          itemSize: 40,
                          itemPadding: EdgeInsets.all(8),
                          itemBuilder: (context, index) =>
                              const Icon(Icons.star, color: Color(0xffb4a79e)),
                          onRatingUpdate: (value) {
                            print(value);
                          })
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Text(":النظافة",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                fontSize: 18,
                                color: Color(0xff3f382e),
                                fontFamily: 'Careem')),
                      ]),
                  Column(
                    children: [
                      RatingBar.builder(
                          itemCount: 5,
                          initialRating: 2,
                          minRating: 1,
                          itemSize: 40,
                          itemPadding: EdgeInsets.all(8),
                          itemBuilder: (context, index) =>
                              const Icon(Icons.star, color: Color(0xffb4a79e)),
                          onRatingUpdate: (value) {
                            print(value);
                          })
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Text(":مناسب لكبار السن",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                fontSize: 18,
                                color: Color(0xff3f382e),
                                fontFamily: 'Careem')),
                      ]),
                  Column(children: [
                    RatingBar.builder(
                        itemCount: 5,
                        initialRating: 2,
                        minRating: 1,
                        itemSize: 40,
                        itemPadding: EdgeInsets.all(8),
                        itemBuilder: (context, index) =>
                            const Icon(Icons.star, color: Color(0xffb4a79e)),
                        onRatingUpdate: (value) {
                          print(value);
                        })
                  ]),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Text(":التهوية و وضوح الصوت",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                fontSize: 18,
                                color: Color(0xff3f382e),
                                fontFamily: 'Careem')),
                      ]),
                  Column(children: [
                    RatingBar.builder(
                        itemCount: 5,
                        initialRating: 2,
                        minRating: 1,
                        itemSize: 40,
                        itemPadding: EdgeInsets.all(8),
                        itemBuilder: (context, index) =>
                            const Icon(Icons.star, color: Color(0xffb4a79e)),
                        onRatingUpdate: (value) {
                          print(value);
                        })
                  ]),
                  SizedBox(height: 50),
                  Container(
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
                        "إرسال",
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Careem',
                            color: Colors.white),
                      ),
                    ),
                  )
                ]))));
  }
}
