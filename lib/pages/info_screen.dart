import 'package:flutter/material.dart';
import 'package:flutteruicovid19second/style/details_ui.dart';
import 'package:flutteruicovid19second/widgets/my_header.dart';

class InfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            MyHeader(
              image: "assets/images/image3.png",
              textTop: "Get to know",
              textBottom: "About Covid-19",
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Symptoms',
                    style: TextStyle(
                        color: mainColor, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SymptomsStatus(
                        title: 'High fever',
                        image: 'assets/images/symptoms1.png',
                        isActive: true,
                      ),
                      SymptomsStatus(
                        title: 'Sore troath',
                        image: 'assets/images/symptoms2.png',
                      ),
                      SymptomsStatus(
                        title: 'Headache',
                        image: 'assets/images/symptoms3.png',
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Prevention',
                    style: TextStyle(
                        color: mainColor, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(height: 10),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 20,
                          color: cardShadowColor,
                        ),
                      ],
                    ),
                    child: Stack(
                      children: <Widget>[
                        Image.asset(
                          'assets/images/image4.png',
                          height: 140,
                          width: 140,
                        ),
                        Positioned(
                          left: 130,
                          child: Container(
                            height: 150,
                            width: MediaQuery.of(context).size.width - 200,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'stay at home',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                    color: mainColor,
                                  ),
                                ),
                                Text(
                                  'Stay at home and stay safe. ... Helping you and your family stay safe ... Face-to-face contact with a COVID-19 case within two metres for more than',
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: textLightColors,
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class SymptomsStatus extends StatelessWidget {
  final String title;
  final String image;
  final bool isActive;

  const SymptomsStatus({
    Key key,
    this.title,
    this.image,
    this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          isActive
              ? BoxShadow(
                  offset: Offset(0, 10),
                  blurRadius: 20,
                  color: subActiveShadowColor,
                )
              : BoxShadow(
                  offset: Offset(0, 3),
                  blurRadius: 20,
                  color: cardShadowColor,
                ),
        ],
      ),
      child: Column(
        children: <Widget>[
          Image.asset(image, width: 80, height: 80),
          Text(
            title,
            style: TextStyle(
              color: mainColor,
              fontSize: 12,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}
