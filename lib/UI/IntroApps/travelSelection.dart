// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hotelbooking/UI/Bottom_Nav_Bar/bottomNavBar.dart';

class MainSelection extends StatefulWidget {
  MainSelection({Key? key}) : super(key: key);

  @override
  State<MainSelection> createState() => _MainSelectionState();
}

class _MainSelectionState extends State<MainSelection> {
  ///
  ///
  /// Bool to set true or false color button
  ///
  ///
  bool button1 = true;
  bool button2 = true;
  bool button3 = true;
  bool button4 = true;
  bool button5 = true;
  bool button6 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const SizedBox(
              height: 10.0,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Text(
                "Choose your Favorite Destination",
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 30.0,
                  fontWeight: FontWeight.w700,
                  fontFamily: "Sofia",
                ),
              ),
            ),
            // SizedBox(
            //   height: 40,
            //   width: Get.width * 0.6,
            //   child: ElevatedButton(
            //     onPressed: () async {
            //       TypesController typesController = Get.put(TypesController());
            //       List? types = await typesController.getData();
            //       print("types: ${types}");
            //
            //       // CategoriesController categoriesController = Get.put(CategoriesController());
            //       //
            //       // String imgPath = "${await f.getExternalStorage()}/logo.jpg";
            //       // // File imgFile = File(imgPath);
            //       // XFile? xFile = await ImagePicker().pickImage(source: ImageSource.gallery, imageQuality: 50);
            //       // File imgFile = File(xFile!.path);
            //       // print("imgFile: ${imgFile.path}");
            //       //
            //       // String? message = await categoriesController.addData(
            //       //   params: {
            //       //     "name": "crazy5",
            //       //   },
            //       //   files: [imgFile],
            //       // );
            //       // print("message: ${message}");
            //       //
            //       // // List? categories = await categoriesController.getData();
            //       // // print("categories: ${categories}");
            //     },
            //     child: Text("Get categories"),
            //   ),
            // ),
            const SizedBox(
              height: 50.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                InkWell(
                  onTap: () {
                    setState(() {
                      if (button1 == true) {
                        button1 = false;
                      } else {
                        button1 = true;
                      }
                    });
                  },
                  child: button1
                      ? itemCard(
                          image:
                              "assets/image/destinationPopuler/destination1.png",
                          title: "Museum",
                        )
                      : itemCardSelected(
                          image:
                              "assets/image/destinationPopuler/destination1.png",
                          title: "Museum",
                          sizeFont: 25.0,
                        ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      if (button2 == true) {
                        button2 = false;
                      } else {
                        button2 = true;
                      }
                    });
                  },
                  child: button2 //assets/image/homeImage/hotel.png
                      ? itemCard(
                          image:
                              "assets/image/destinationPopuler/destination5.jpg",
                          title: "Park",
                        )
                      : itemCardSelected(
                          image:
                              "assets/image/destinationPopuler/destination5.jpg",
                          title: "Park",
                          sizeFont: 25.0,
                        ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                InkWell(
                  onTap: () {
                    setState(() {
                      if (button3 == true) {
                        button3 = false;
                      } else {
                        button3 = true;
                      }
                    });
                  },
                  child: button3
                      ? itemCard(
                          image: "assets/image/destinationPopuler/populer2.png",
                          title: "Beach",
                        )
                      : itemCardSelected(
                          image: "assets/image/destinationPopuler/populer2.png",
                          title: "Beach",
                          sizeFont: 22.0,
                        ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      if (button4 == true) {
                        button4 = false;
                      } else {
                        button4 = true;
                      }
                    });
                  },
                  child: button4
                      ? itemCard(
                          image:
                              "assets/image/destinationPopuler/destination4.jpg",
                          title: "Mountain",
                        )
                      : itemCardSelected(
                          image:
                              "assets/image/destinationPopuler/destination4.jpg",
                          title: "Mountain",
                          sizeFont: 25.0,
                        ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                InkWell(
                  onTap: () {
                    setState(() {
                      if (button5 == true) {
                        button5 = false;
                      } else {
                        button5 = true;
                      }
                    });
                  },
                  child: button5
                      ? itemCard(
                          image: "assets/image/homeImage/hotel.png",
                          title: "Hotel",
                        )
                      : itemCardSelected(
                          image: "assets/image/homeImage/hotel.png",
                          title: "Hotel",
                          sizeFont: 25.0,
                        ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      if (button6 == true) {
                        button6 = false;
                      } else {
                        button6 = true;
                      }
                    });
                  },
                  child: button6
                      ? itemCard(
                          image: "assets/image/homeImage/experience.png",
                          title: "Experience",
                        )
                      : itemCardSelected(
                          image: "assets/image/homeImage/experience.png",
                          title: "Experience",
                          sizeFont: 25.0,
                        ),
                ),
              ],
            ),
            const SizedBox(
              height: 70.0,
            ),
            button1 && button2 && button3 && button4 && button5 && button6
                ? Container(
                    height: 55.0,
                    width: double.infinity,
                    margin: const EdgeInsets.only(
                        left: 20.0, right: 20.0, top: 0.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey,
                    ),
                    child: const Center(
                      child: Text(
                        "Next",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Sofia",
                            fontWeight: FontWeight.w500,
                            fontSize: 19.5,
                            letterSpacing: 1.2),
                      ),
                    ),
                  )
                : InkWell(
                    onTap: () {
                      setState(() {
                        if (button1 == false) {
                          Navigator.of(context).pushReplacement(
                              PageRouteBuilder(
                                  pageBuilder: (_, __, ___) =>
                                      new BottomNavBar(),
                                  transitionDuration:
                                      const Duration(milliseconds: 600),
                                  transitionsBuilder: (_,
                                      Animation<double> animation,
                                      __,
                                      Widget child) {
                                    return Opacity(
                                      opacity: animation.value,
                                      child: child,
                                    );
                                  }));
                        } else if (button2 == false) {
                          Navigator.of(context).pushReplacement(
                              PageRouteBuilder(
                                  pageBuilder: (_, __, ___) =>
                                      new BottomNavBar(),
                                  transitionDuration:
                                      const Duration(milliseconds: 600),
                                  transitionsBuilder: (_,
                                      Animation<double> animation,
                                      __,
                                      Widget child) {
                                    return Opacity(
                                      opacity: animation.value,
                                      child: child,
                                    );
                                  }));
                        } else if (button3 == false) {
                          Navigator.of(context).pushReplacement(
                              PageRouteBuilder(
                                  pageBuilder: (_, __, ___) =>
                                      new BottomNavBar(),
                                  transitionDuration:
                                      const Duration(milliseconds: 600),
                                  transitionsBuilder: (_,
                                      Animation<double> animation,
                                      __,
                                      Widget child) {
                                    return Opacity(
                                      opacity: animation.value,
                                      child: child,
                                    );
                                  }));
                        } else if (button4 == false) {
                          Navigator.of(context).pushReplacement(
                              PageRouteBuilder(
                                  pageBuilder: (_, __, ___) =>
                                      new BottomNavBar(),
                                  transitionDuration:
                                      const Duration(milliseconds: 600),
                                  transitionsBuilder: (_,
                                      Animation<double> animation,
                                      __,
                                      Widget child) {
                                    return Opacity(
                                      opacity: animation.value,
                                      child: child,
                                    );
                                  }));
                        } else if (button5 == false) {
                          Navigator.of(context).pushReplacement(
                              PageRouteBuilder(
                                  pageBuilder: (_, __, ___) =>
                                      new BottomNavBar(),
                                  transitionDuration:
                                      const Duration(milliseconds: 600),
                                  transitionsBuilder: (_,
                                      Animation<double> animation,
                                      __,
                                      Widget child) {
                                    return Opacity(
                                      opacity: animation.value,
                                      child: child,
                                    );
                                  }));
                        } else if (button6 == false) {
                          Navigator.of(context).pushReplacement(
                              PageRouteBuilder(
                                  pageBuilder: (_, __, ___) =>
                                      new BottomNavBar(),
                                  transitionDuration:
                                      const Duration(milliseconds: 600),
                                  transitionsBuilder: (_,
                                      Animation<double> animation,
                                      __,
                                      Widget child) {
                                    return Opacity(
                                      opacity: animation.value,
                                      child: child,
                                    );
                                  }));
                        }
                      });
                    },
                    child: Container(
                      height: 55.0,
                      width: double.infinity,
                      margin: const EdgeInsets.only(
                          left: 20.0, right: 20.0, top: 0.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: const LinearGradient(
                              colors: [Color(0xFF647DEE), Color(0xFF7F53AC)])),
                      child: const Center(
                        child: Text(
                          "Next",
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
            const SizedBox(
              height: 30.0,
            )
          ],
        ),
      ),
    );
  }
}

///
/// Create item card
///
class itemCard extends StatelessWidget {
  String? image, title;
  itemCard({this.image, this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(left: 5.0, right: 5.0, top: 5.0, bottom: 10.0),
      child: Container(
        height: 85.0,
        width: 165.0,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(15.0))),
        child: Material(
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.all(Radius.circular(15.0)),
              image:
                  DecorationImage(image: AssetImage(image!), fit: BoxFit.cover),
              boxShadow: [
                BoxShadow(
                  color: const Color(0xFFABABAB).withOpacity(0.7),
                  blurRadius: 4.0,
                  spreadRadius: 3.0,
                ),
              ],
            ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(15.0)),
                color: Colors.black12.withOpacity(0.1),
              ),
              child: Center(
                child: Text(
                  title!,
                  style: TextStyle(
                    shadows: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.7),
                          blurRadius: 10.0,
                          spreadRadius: 2.0)
                    ],
                    color: Colors.white,
                    fontFamily: "Sofia",
                    fontWeight: FontWeight.w800,
                    fontSize: 25.0,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

///
/// Create item card
///
class itemCardSelected extends StatelessWidget {
  String? image, title;
  double? sizeFont;
  itemCardSelected({this.image, this.title, this.sizeFont});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(left: 5.0, right: 5.0, top: 5.0, bottom: 10.0),
      child: Container(
        height: 85.0,
        width: 165.0,
        decoration: const BoxDecoration(
            gradient:
                LinearGradient(colors: [Color(0xFF647DEE), Color(0xFF7F53AC)]),
            borderRadius: BorderRadius.all(Radius.circular(15.0))),
        child: Material(
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.all(Radius.circular(15.0)),
              image:
                  DecorationImage(image: AssetImage(image!), fit: BoxFit.cover),
              boxShadow: [
                BoxShadow(
                  color: const Color(0xFFABABAB).withOpacity(0.7),
                  blurRadius: 4.0,
                  spreadRadius: 3.0,
                ),
              ],
            ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(15.0)),
                gradient: LinearGradient(colors: [
                  const Color(0xFF647DEE).withOpacity(0.5),
                  const Color(0xFF7F53AC).withOpacity(0.5),
                ]),
              ),
              child: Center(
                child: Text(
                  "Selected",
                  style: TextStyle(
                    shadows: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.7),
                          blurRadius: 10.0,
                          spreadRadius: 2.0)
                    ],
                    color: Colors.white,
                    fontFamily: "Sofia",
                    fontWeight: FontWeight.w800,
                    fontSize: 25.0,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
