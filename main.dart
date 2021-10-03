import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:You_App_Name/animation/fade_animation.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
        ),
      ),
      home: const LoginPage2(),
      
    );
  }
}

// ! Here Page Login Ui

class LoginPage2 extends StatefulWidget {
  const LoginPage2({Key? key}) : super(key: key);

  @override
  _LoginPage2State createState() => _LoginPage2State();
}

class _LoginPage2State extends State<LoginPage2> {
  @override
  Widget build(BuildContext context) {
    var wid = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                color: const Color(0xfff96d34),
                // color: const Color(0xFFC73800),
                width: wid,
                height: 350,
                child: SvgPicture.asset(
                  "images/wave8.svg",
                  fit: BoxFit.fill,
                ),
              ),
              // ! 0x00FFFFFF
              const Positioned(
                top: 100,
                left: 45,
                child: FadeAnimation(
                  2,
                  Text(
                    "Yoovi ™",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2,
                        fontFamily: "Lobster"),
                  ),
                ),
              )
            ],
          ),
          // ! Here input

          Expanded(
            child: Container(
              color: const Color(0xfff96d34),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    FadeAnimation(
                      2,
                      Container(
                          width: double.infinity,
                          height: 240,
                          margin: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 5),
                          decoration: const BoxDecoration(
                              // border: Border.all(
                              //     color: const Color(0xff4f1ed2), width: 1),
                              // boxShadow: const [
                              //   BoxShadow(
                              //       color: Color(0xff4f1ed2),
                              //       blurRadius: 10,
                              //       offset: Offset(1, 1)),
                              // ],
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const Icon(Icons.person_outline),
                                  Expanded(
                                    child: Container(
                                      margin: const EdgeInsets.only(left: 10),
                                      child: TextFormField(
                                        maxLines: 1,
                                        decoration: const InputDecoration(
                                          label: Text(" User-Name ..."),
                                          border: InputBorder.none,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const Divider(
                                height: 5,
                                thickness: 3,
                                indent: 50,
                                endIndent: 50,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const Icon(Icons.email_outlined),
                                  Expanded(
                                    child: Container(
                                      margin: const EdgeInsets.only(left: 10),
                                      child: TextFormField(
                                        maxLines: 1,
                                        decoration: const InputDecoration(
                                          label: Text(" E-mail ..."),
                                          border: InputBorder.none,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const Divider(
                                height: 5,
                                thickness: 3,
                                indent: 50,
                                endIndent: 50,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const Icon(Icons.password_outlined),
                                  Expanded(
                                    child: Container(
                                      margin: const EdgeInsets.only(left: 10),
                                      child: TextFormField(
                                        maxLines: 1,
                                        decoration: const InputDecoration(
                                          label: Text(" Password ..."),
                                          border: InputBorder.none,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          )),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    FadeAnimation(
                      2,
                      Container(
                        margin: const EdgeInsets.only(left: 22, right: 22),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              onPrimary: const Color(0xff4f1ed2),
                              shadowColor: const Color(0xff4f1ed2),
                              elevation: 18,
                              padding: EdgeInsets.zero,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15))),
                          child: Ink(
                            decoration: BoxDecoration(
                              gradient: const LinearGradient(colors: [
                                Color(0xff4f1ed2),
                                Color(0xff4f1ed2)
                              ]),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Container(
                              width: wid - 20,
                              height: 50,
                              alignment: Alignment.center,
                              child: const Text(
                                'Login',
                                style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.white,
                                  letterSpacing: 2,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 30),
                      child: const Text(
                        "SingUp if don't have account ",
                        style: TextStyle(
                          color: Colors.white,
                          letterSpacing: 2,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}



