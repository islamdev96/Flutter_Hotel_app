import 'package:flutter/material.dart';
import 'package:hotelbooking/Library/SupportingLibrary/Animation/LoginAnimation.dart';
import 'package:hotelbooking/UI/IntroApps/Login.dart';

class reset extends StatefulWidget {
  final String user;
  reset(this.user);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<reset> with TickerProviderStateMixin {
  TextEditingController codeController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  void rese(String code, password) async {
    try {
      ;
    } catch (e) {
      print(e.toString());
    }
  }

  //Animation Declaration
  late AnimationController sanimationController;

  var tap = 0;

  @override

  /// set state animation controller
  void initState() {
    sanimationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 800))
      ..addStatusListener((statuss) {
        if (statuss == AnimationStatus.dismissed) {
          setState(() {
            tap = 0;
          });
        }
      });
    super.initState();
  }

  /// Dispose animation controller
  @override
  void dispose() {
    sanimationController.dispose();
    super.dispose();
  }

  /// Playanimation set forward reverse
  Future<Null> _PlayAnimation() async {
    try {
      await sanimationController.forward();
      await sanimationController.reverse();
    } on TickerCanceled {}
  }

  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          // Text(widget.user),
          Stack(
            alignment: AlignmentDirectional.bottomCenter,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                    height: 270,
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                            height: 300,
                            width: width + 20,
                            child: Container(
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/image/destinationPopuler/tripBackground.png'),
                                      fit: BoxFit.fill)),
                            ))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 20,
                      right: 20.0,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        /// Fade Animation for transtition animaniton

                        const Text(
                          "Update Password",
                          style: TextStyle(
                              fontFamily: "Sofia",
                              fontWeight: FontWeight.w800,
                              fontSize: 37.5,
                              wordSpacing: 0.1),
                        ),
                        const SizedBox(
                          height: 30,
                        ),

                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                              boxShadow: [
                                const BoxShadow(
                                  color: Color.fromRGBO(196, 135, 198, .3),
                                  blurRadius: 20,
                                  offset: Offset(0, 10),
                                )
                              ]),
                          child: Column(
                            children: <Widget>[
                              Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            color: Colors.grey[200]!))),
                                child: TextField(
                                  controller: codeController,
                                  decoration: const InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "CODE",
                                      icon: Icon(
                                        Icons.email,
                                        color: Colors.black12,
                                      ),
                                      hintStyle: TextStyle(
                                          color: Colors.grey,
                                          fontFamily: "sofia")),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(10),
                                child: TextField(
                                  controller: passwordController,
                                  obscureText: true,
                                  decoration: const InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "New Password",
                                      icon: Icon(
                                        Icons.vpn_key,
                                        color: Colors.black12,
                                      ),
                                      hintStyle: TextStyle(
                                          color: Colors.grey,
                                          fontFamily: "sofia")),
                                ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        InkWell(
                            onTap: () {
                              rese(codeController.text.toString(),
                                  passwordController.text.toString());
                            },
                            child: const Text(
                              "Submit",
                              style: TextStyle(
                                  color: Colors.black38,
                                  fontFamily: "bold",
                                  fontWeight: FontWeight.w900,
                                  letterSpacing: 1.3),
                            )),
                        const SizedBox(height: 110)
                      ],
                    ),
                  ),
                ],
              ),

              /// Set Animaion after user click buttonLogin
              tap == 0
                  ? InkWell(
                      splashColor: Colors.yellow,
                      onTap: () {
                        setState(() {
                          tap = 1;
                        });
                        new LoginAnimation(
                          animationController:
                              sanimationController.view as AnimationController,
                        );
                        _PlayAnimation();
                      },
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Login()),
                                (route) => false);
                          },
                          child: Container(
                            height: 55.0,
                            margin: const EdgeInsets.only(
                                left: 20.0, right: 20.0, top: 0.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: const Color(0xFF8DA2BF),
                            ),
                            child: const Center(
                              child: Text(
                                "Return Login ",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "Sofia",
                                    fontWeight: FontWeight.w500,
                                    fontSize: 19.5,
                                    letterSpacing: 1.2),
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  : new LoginAnimation(
                      animationController:
                          sanimationController.view as AnimationController,
                    )
            ],
          ),
        ],
      ),
    );
  }
}
