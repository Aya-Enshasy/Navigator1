import 'package:flutter/material.dart';
import 'package:flutter_app_task3/yourPlace.dart';
import 'yourPlace.dart';

class City extends StatefulWidget {

  var city ;

  @override
  _CityState createState() => _CityState();
}

class _CityState extends State<City> {
  var city;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF000000),
          centerTitle: true,
          title: Text("العنوان"),
          titleTextStyle: TextStyle(color: Colors.white,fontSize: 18),
        ),
        body: Container(
          child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 30),
                          child: Text(
                            'ما هي مدينتك',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ),
                        Container(
                            width: 300,
                            child: TextField(
                              onChanged: (value) {
                                city = value;
                              },
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'ادخل اسم مدينتك',
                                hintText: this.city,
                              ),
                            ),),

                        Container(
                            margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                            width: 300,
                            height: 50,
                            child:   ElevatedButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context){
                                  return YourPlace(city);
                                }));


                              },
                                child: Text('التالي'),
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.black,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(6)),
                                  elevation: 4.0,
                                )
                            )

                        )



                      ],
                    )
                  ],
                ),
          )),
      ),
    );
  }
}










