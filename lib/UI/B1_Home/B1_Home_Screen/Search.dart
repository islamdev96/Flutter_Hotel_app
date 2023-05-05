// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:hotelbooking/data/database/functions_response/get_cities%20copy.dart';
import 'package:hotelbooking/main.dart';

class search extends StatefulWidget {
  @override
  _searchState createState() => _searchState();
}

class _searchState extends State<search> {
  var _appBar = AppBar(
    iconTheme: const IconThemeData(
      color: Colors.deepPurpleAccent,
    ),
    title: const Text(
      "Search",
      style: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 18.0,
          color: Colors.black,
          fontFamily: "Gotik"),
    ),
    actions: <Widget>[
      Padding(
        padding: const EdgeInsets.only(right: 20.0),
        child: CircleAvatar(
          backgroundColor: Colors.black54,
          radius: 15.0,
          child: Image.asset("assets/image/images/GirlProfile.png"),
        ),
      )
    ],
    centerTitle: true,
    backgroundColor: Colors.white,
    elevation: 0.0,
  );

  var _textHello = Padding(
    padding: EdgeInsets.only(right: 50.0, left: 20.0),
    child: Text(
      "Hello, ${sharedPreferences.getString('username') ?? 'ahmed'}. \nWhat would you like to search ?",
      style: TextStyle(
          letterSpacing: 0.1,
          fontWeight: FontWeight.w600,
          fontSize: 27.0,
          color: Colors.black54,
          fontFamily: "Gotik"),
    ),
  );

  static final txtButton = const TextStyle(
      color: Colors.black54, fontFamily: "Gotik", fontWeight: FontWeight.w500);

  /// Item TextFromField Search
  var _search = Padding(
      padding: const EdgeInsets.only(top: 65.0, right: 20.0, left: 20.0),
      child: Column(
        children: <Widget>[
          Container(
            height: 50.0,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 5.0,
                      spreadRadius: 0.0)
                ]),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 10.0),
                child: Theme(
                  data: ThemeData(hintColor: Colors.transparent),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        icon: const Icon(
                          Icons.search,
                          color: Color(0xFF6991C7),
                          size: 28.0,
                        ),
                        hintText: "Find you want",
                        hintStyle: txtButton),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Row(
              children: <Widget>[
                Container(
                  height: 50.0,
                  width: 120.0,
                  decoration: BoxDecoration(color: Colors.white, boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 2.0,
                        spreadRadius: 0.0)
                  ]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      const Padding(
                        padding: EdgeInsets.only(left: 15.0),
                        child: Icon(
                          Icons.access_time,
                          color: Colors.black26,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Text(
                          "Now",
                          style: txtButton,
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Container(
                    height: 50.0,
                    width: 190.0,
                    decoration: BoxDecoration(color: Colors.white, boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 2.0,
                          spreadRadius: 0.0)
                    ]),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        const Padding(
                          padding: EdgeInsets.only(left: 15.0),
                          child: Icon(
                            Icons.location_on,
                            color: Colors.black26,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Text(
                            "Location",
                            style: txtButton,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: InkWell(
              onTap: () {
                try {
                  getSearchbytextRespon();
                } catch (e) {
                  print(e);
                }
                print('------------------');
              },
              child: Container(
                height: 50.0,
                decoration: const BoxDecoration(
                  color: Colors.deepPurpleAccent,
                ),
                child: const Center(
                  child: Text(
                    "Search",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.0,
                        fontFamily: "Gotik",
                        fontWeight: FontWeight.w800),
                  ),
                ),
              ),
            ),
          )
        ],
      ));

  var _popular = Padding(
    padding: const EdgeInsets.only(top: 50.0),
    child: Container(
      height: 234.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text(
              "Popular",
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontFamily: "Gotik",
                  fontSize: 16.0,
                  color: Colors.black),
            ),
          ),
          const Padding(padding: EdgeInsets.only(top: 10.0)),
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                const Padding(
                    padding: EdgeInsets.only(
                  left: 20.0,
                )),
                cardLastActivity(
                  image: 'assets/image/images/search1.png',
                  title: 'Amanda Hotel Sillicon Valey',
                  Rating: "4.8",
                  Salary: '\$ 500 ',
                  sale: '200',
                ),
                cardLastActivity(
                  image: 'assets/image/images/search2.png',
                  title: 'Hotel de lahoya',
                  Rating: "5.0",
                  Salary: '\$ 1400 ',
                  sale: '200',
                ),
                cardLastActivity(
                  image: 'assets/image/images/search3.png',
                  title: 'Star Hotel',
                  Rating: "2.0",
                  Salary: '\$ 1000 ',
                  sale: '200',
                ),
                const Padding(padding: EdgeInsets.only(right: 10.0)),
              ],
            ),
          )
        ],
      ),
    ),
  );

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar,
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                /// Caliing a variable
                _textHello,
                _search,
                _popular,
                const Padding(padding: EdgeInsets.only(bottom: 30.0, top: 2.0))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

///Favorite Item Card
class cardLastActivity extends StatelessWidget {
  String? image, Rating, Salary, title, sale;

  cardLastActivity(
      {this.image, this.Rating, this.Salary, this.title, this.sale});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 2.0, right: 5.0, bottom: 10.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.all(Radius.circular(10.0)),
            boxShadow: [
              BoxShadow(
                color: const Color(0xFF656565).withOpacity(0.15),
                blurRadius: 4.0,
                spreadRadius: 1.0,
//           offset: Offset(4.0, 10.0)
              )
            ]),
        child: Wrap(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                  height: 110.0,
                  width: 150.0,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(7.0),
                          topRight: Radius.circular(7.0)),
                      image: DecorationImage(
                          image: AssetImage(image!), fit: BoxFit.cover)),
                ),
                const Padding(padding: EdgeInsets.only(top: 15.0)),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                  child: Container(
                    width: 110.0,
                    child: Text(
                      title!,
                      style: const TextStyle(
                          letterSpacing: 0.5,
                          color: Colors.black54,
                          fontFamily: "Sans",
                          fontWeight: FontWeight.w500,
                          fontSize: 13.0),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
                const Padding(padding: EdgeInsets.only(top: 1.0)),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                  child: Text(
                    Salary!,
                    style: const TextStyle(
                        fontFamily: "Sans",
                        fontWeight: FontWeight.w500,
                        fontSize: 14.0),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 15.0, right: 15.0, top: 5.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text(
                            Rating!,
                            style: const TextStyle(
                                fontFamily: "Sans",
                                color: Colors.black26,
                                fontWeight: FontWeight.w500,
                                fontSize: 12.0),
                          ),
                          const Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 14.0,
                          )
                        ],
                      ),
                      Text(
                        sale!,
                        style: const TextStyle(
                            fontFamily: "Sans",
                            color: Colors.black26,
                            fontWeight: FontWeight.w500,
                            fontSize: 12.0),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
