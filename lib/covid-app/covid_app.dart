import 'package:flutter/material.dart';
import 'package:random_ui/covid-app/covid-app1.dart';

class CovidApp extends StatefulWidget {
  @override
  _CovidAppState createState() => _CovidAppState();
}

class _CovidAppState extends State<CovidApp> {

  bool tapped = false;

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
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40.0,
              ),
              Container(
                child: Text(
                  "1st check-in reported!",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 64.0,
                    fontFamily: "FiraSans",
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Container(
                child: Text(
                  "Share the app so that more people can help researchers track COVID-19.",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontFamily: "VarelaRound",
                  ),
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
              Container(
                  alignment: Alignment.topLeft,
                  child: Image.asset("assets/corona_check.png")),
              SizedBox(
                height: 30.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          tapped=tapped?false:true;
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => CovidAppPage1()));
                        });
                      },
                      child: Container(
                        height: 70.0,
                        width: 200.0,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 255, 207, 96),
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Continue",
                              style: TextStyle(
                                color: tapped?Color.fromARGB(255, 115, 96, 54):Color.fromARGB(128, 115, 96, 54),
                                fontFamily: "VarelaRound",
                                fontSize: 26.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: tapped?Color.fromARGB(128, 115, 96, 54):Color.fromARGB(255, 115, 96, 54),
                              size: 20.0,
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: tapped?Color.fromARGB(255, 115, 96, 54):Color.fromARGB(128, 115, 96, 54),
                              size: 20.0,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 16.0,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
