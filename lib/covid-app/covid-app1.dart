import 'package:flutter/material.dart';

class CovidAppPage1 extends StatefulWidget {
  @override
  _CovidAppPage1State createState() => _CovidAppPage1State();
}

class _CovidAppPage1State extends State<CovidAppPage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 68, 70, 173),
          //borderRadius: BorderRadius.circular(25.0),
        ),
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 40.0,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.65,
              width: MediaQuery.of(context).size.width * 0.9,
              padding: EdgeInsets.all(32.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 240, 240, 250),
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        child: Column(
                          children: [
                            Text(
                              "May",
                              style: TextStyle(
                                fontFamily: "FiraSans",
                                fontSize: 18.0,
                                color: Color.fromARGB(255, 142, 141, 179),
                              ),
                            ),
                            Text(
                              "25th",
                              style: TextStyle(
                                fontFamily: "FiraSans",
                                fontSize: 18.0,
                                color: Color.fromARGB(255, 142, 141, 179),
                              ),
                            )
                          ],
                        ),
                      ),
                      Icon(
                        Icons.all_inclusive,
                        color: Color.fromARGB(255, 68, 70, 173),
                        size: 35.0,
                      )
                    ],
                  ),
                  SizedBox(height: 10.0,),
                  Text(
                    "How people feel in",
                    style: TextStyle(
                      fontSize: 22.0,
                      color: Color.fromARGB(255, 68, 70, 173),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.location_on,
                        size: 35.0,
                        color: Color.fromARGB(255, 255, 107, 87),
                      ),
                      Text(
                        "Los Angeles",
                        style: TextStyle(
                          fontFamily: "FiraSans",
                          fontWeight: FontWeight.bold,
                          fontSize: 32.0,
                          color: Color.fromARGB(255, 68, 70, 173),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.0,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      cardIconWellnessWidget(
                        150,
                        MediaQuery.of(context).size.width * 0.3,
                        Icons.insert_emoticon,
                        458,
                        "Feeling Well",
                        Color.fromARGB(255, 231, 250, 246),
                        Color.fromARGB(255, 28, 147, 119),
                      ),
                      cardIconWellnessWidget(
                        150,
                        MediaQuery.of(context).size.width * 0.3,
                        Icons.insert_emoticon,
                        14,
                        "Not Well",
                        Color.fromARGB(255, 255, 242, 241),
                        Color.fromARGB(255, 130, 89, 83),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              "9,877 people checked in today",
              style: TextStyle(
                fontFamily: "VarelaRound",
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 165, 167, 216),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              height: 70.0,
              width: MediaQuery.of(context).size.width * 0.7,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
                color: Color.fromARGB(255, 255, 207, 96),
              ),
              child: Center(
                child: Text(
                  "Check in again later!",
                  style: TextStyle(
                    fontFamily: "VarelaRound",
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 115, 96, 54),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget cardIconWellnessWidget(double height, double width, IconData icon,
      int value, String string, Color bgColor, Color textColor) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25.0),
        color: bgColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: Colors.yellow,
            size: 35.0,
          ),
          SizedBox(
            height: 20.0,
          ),
          Text(
            value.toString(),
            style: TextStyle(
              fontFamily: "FiraSans",
              fontWeight: FontWeight.bold,
              fontSize: 24.0,
              color: textColor,
            ),
          ),
          Text(
            string,
            style: TextStyle(
              fontFamily: "FiraSans",
              fontWeight: FontWeight.bold,
              fontSize: 18.0,
              color: textColor,
            ),
          )
        ],
      ),
    );
  }
}
