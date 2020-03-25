import 'package:flutter/material.dart';
import 'package:the_forecast_club/constants.dart';
import 'package:the_forecast_club/screens/login.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: kHomePage,
      child: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(16, 50, 16, 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      height: 60,
                      width: 5,
                      color: kTitle,
                    ),
                    SizedBox(width: 5),
                    Text('The\nForecast\nClub', style: kTitleStyle)
                  ],
                ),
                SizedBox(height: 25),
                Text('Let\'s create your\nown style', style: kSTitle),
                SizedBox(height: 10),
                Text(
                    'Let\'s create your own style. Everyone has their own style and we will give you with the most accurate trend forecast',
                    style: kSubTitle),
                SizedBox(height: 40),
                Align(
                  alignment: Alignment.center,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Login()));
                    },
                    child: Container(
                      height: 60,
                      width: 220,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: kHButtonColor,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text('Let\'s get started', style: kHButtonStyle),
                          Icon(Icons.arrow_forward,
                              color: kButtonContent, size: 25)
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 405,
            left: 15,
            child: Container(
              height: 130,
              width: 130,
              decoration: BoxDecoration(
                  color: kOrange, borderRadius: BorderRadius.circular(130 / 2)),
            ),
          ),
          Positioned(
            top: 480,
            left: 65,
            child: Container(
              height: 230,
              width: 230,
              decoration: BoxDecoration(
                  color: kOrange, borderRadius: BorderRadius.circular(230 / 2)),
            ),
          ),
          Positioned(
              top: 420,
              right: -30,
              child: Container(
                  height: 300,
                  width: MediaQuery.of(context).size.width * 0.9,
                  child:
                      Image.asset('assets/images/lady1.png', fit: BoxFit.fill)))
        ],
      ),
    ));
  }
}
