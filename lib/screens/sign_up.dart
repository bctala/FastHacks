// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import '../screens/screens.dart';

class SignUpPage extends StatefulWidget {
  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool isPasswordVisible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 100,
                      ),
                      Center(
                        child: Text("!مرحبًا",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 40,
                                color: Color(0xff3f382e),
                                fontFamily: 'Careem')),
                      ),
                      Center(
                        child: Text("قم بإنشاء حساب للإستفادة من خدمات التطبيق",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 20,
                                color: Color(0xff3f382e),
                                fontFamily: 'Careem')),
                      ),
                      SizedBox(
                        height: 70,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: TextField(
                          keyboardType: TextInputType.text,
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(20),
                            hintText: 'اسم المستخدم',
                            prefixIcon: Icon(
                              Icons.person,
                              color: Color(0xff3f382e),
                            ),
                            hintStyle: TextStyle(
                                fontSize: 14,
                                color: Color(0xffb4aaa1),
                                fontFamily: 'Careem'),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey,
                                width: 1.5,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xff3f382e),
                                width: 1.5,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: TextField(
                          keyboardType: TextInputType.text,
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(20),
                            hintText: ' البريد الإلكتروني',
                            prefixIcon: Icon(
                              Icons.mail,
                              color: Color(0xff3f382e),
                            ),
                            hintStyle: TextStyle(
                                fontSize: 14,
                                color: Color(0xffb4aaa1),
                                fontFamily: 'Careem'),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey,
                                width: 1.5,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xff3f382e),
                                width: 1.5,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: TextField(
                          obscureText: isPasswordVisible,
                          keyboardType: TextInputType.text,
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                            suffixIcon: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8),
                              child: IconButton(
                                onPressed: () {
                                  setState(() {
                                    isPasswordVisible = !isPasswordVisible;
                                  });
                                },
                                icon: Icon(Icons.visibility),
                                color: Colors.grey,
                              ),
                            ),
                            contentPadding: EdgeInsets.all(20),
                            hintText: 'كلمة السر',
                            prefixIcon: Icon(
                              Icons.lock,
                              color: Color(0xff3f382e),
                            ),
                            hintStyle: TextStyle(
                                fontSize: 14,
                                color: Color(0xffb4aaa1),
                                fontFamily: 'Careem'),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey,
                                width: 1.5,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xff3f382e),
                                width: 1.5,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
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
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => Map()));
                          },
                          child: const Text(
                            "إكمال",
                            style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'Careem',
                                color: Colors.white),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text("لديك حساب بالفعل؟",
                      style: TextStyle(
                          fontSize: 20,
                          color: Color(0xff3f382e),
                          fontFamily: 'Careem')),
                ]),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 50,
                  width: 395,
                  decoration: BoxDecoration(
                    color: Color(0xffb4aaa1),
                    borderRadius: BorderRadius.circular(18),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextButton(
                    style: ButtonStyle(
                        overlayColor: MaterialStateProperty.resolveWith(
                      (states) => Colors.black12,
                    )),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LogIn()));
                    },
                    child: const Text(
                      "تسجيل الدخول",
                      style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'Careem',
                          color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
