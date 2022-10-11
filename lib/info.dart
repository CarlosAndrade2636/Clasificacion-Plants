import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InfoPage extends StatefulWidget {
  @override
  _InfoPageState createState() => _InfoPageState();
  static const routeName = '/info';
}

class _InfoPageState extends State<InfoPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(

        //floatingActionButton: new FloatingActionButton(
        //onPressed: ()=> SystemNavigator.pop(),
        //onPressed: ()=> exit(0),
        //tooltip: 'Close app',
        //child: new Icon(Icons.close),

        //),

        appBar: AppBar(
            //title: Image.asset('assets/images/logo_ups.jpeg',
            //height: 50, fit: BoxFit.contain),
            title: Text("Acerca de ")),
        backgroundColor: Color.fromARGB(255, 177, 233, 180),
        body: Stack(//Stack

            children: <Widget>[
          //Image.asset('assets/images/solo-green-nature-plants-wallpaper-preview.jpg',
          //width: size.width, height: size.height, fit: BoxFit.cover),
          Container(
            width: size.width,
            child: Padding(
              padding: EdgeInsets.all(32.0),
              child: ListView(
                //Column
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  /** 
                  Image.asset(
                    'assets/images/GIHP4C-2.png',
                    width: 100,
                    height: 100,
                    //fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'assets/images/jardin-png.png',
                    width: 300,
                    height: 200,
                  ),*/

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Image.asset(
                          'assets/images/GIHP4C-2.png',
                          width: 100,
                          height: 100,
                        ),
                      ),
                      Expanded(
                        child: Image.asset(
                          'assets/images/jardin-png.png',
                          width: 100,
                          height: 100,
                        ),
                      ),
                    ],
                  ),
                  Text("                              "),
                  /** 
                  Text(
                    "Creado por :",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 32.0,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Jonathan Atancuri & Carlos Andrade",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black, fontSize: 21.0),
                    softWrap: true,
                  ),
                  Text(
                    "Carrera de :",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 32.0,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Ingeniera de Sistemas",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black, fontSize: 21.0),
                    softWrap: true,
                  ),
                  Text(
                    "Grupo de :",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 32.0,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Cloud Computing-Smart Cities-High Performance Computing",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black, fontSize: 21.0),
                    softWrap: true,
                  ),
                  Text(
                    "Universidad :",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 32.0,
                        fontWeight: FontWeight.bold),
                  ),


                  Text(
                    "Politecnica Salesiana (SEDE CUENCA)",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black, fontSize: 21.0),
                    softWrap: true,
                  ),*/
                  SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    flex: 5,
                    child: Container(
                      color: Colors.grey[200],

                      child: Center(

                          child: Card(
                              margin: EdgeInsets.fromLTRB(0.0, 45.0, 0.0, 0.0),

                              child: Container(
                                  width: 310.0,
                                  height: 290.0,
                                  child: Padding(
                                    padding: EdgeInsets.all(10.0),

                                    child: Column(

                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        //-----------------------

                                        Text(
                                          "Informacion",
                                          style: TextStyle(
                                            fontSize: 17.0,
                                            fontWeight: FontWeight.w800,
                                          ),
                                        ),

                                        Divider(
                                          color: Colors.grey[300],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Icon(
                                              Icons.home,
                                              color: Colors.blueAccent[400],
                                              size: 35,
                                            ),
                                            SizedBox(
                                              width: 20.0,
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Creado por :",
                                                  style: TextStyle(
                                                    fontSize: 15.0,
                                                  ),
                                                ),
                                                Text(
                                                  '''Jonnathan Atancuri & Carlos Andrade ''',
                                                  style: TextStyle(
                                                    fontSize: 12.0,
                                                    color: Colors.black,
                                                  ),
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: 20.0,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Icon(
                                              Icons.computer,
                                              color: Color.fromARGB(
                                                  255, 162, 0, 255),
                                              size: 35,
                                            ),
                                            SizedBox(
                                              width: 20.0,
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Carrera de :",
                                                  style: TextStyle(
                                                    fontSize: 15.0,
                                                  ),
                                                ),
                                                Text(
                                                  "Ingenieria de Sistemas",
                                                  style: TextStyle(
                                                    fontSize: 12.0,
                                                    color: Colors.black,
                                                  ),
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: 20.0,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Icon(
                                              Icons.group,
                                              color: Colors.black,
                                              size: 35,
                                            ),
                                            SizedBox(
                                              width: 20.0,
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Grupo :",
                                                  style: TextStyle(
                                                    fontSize: 15.0,
                                                  ),
                                                ),
                                                Text(
                                                  "Cloud Computing-Smart Cities-High  ",
                                                  style: TextStyle(
                                                    fontSize: 12.0,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                                Text(
                                                  "Performance Computing",
                                                  style: TextStyle(
                                                    fontSize: 12.0,
                                                    color: Colors.black,
                                                  ),
                                                ),


                                              ],
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: 20.0,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Icon(
                                              Icons.corporate_fare,
                                              color: Colors.blue,
                                              size: 35,
                                            ),
                                            SizedBox(
                                              width: 20.0,
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Universidad :",
                                                  style: TextStyle(
                                                    fontSize: 15.0,
                                                  ),
                                                ),
                                                Text(
                                                  "Politecnica Salesiana (SEDE CUENCA)",
                                                  style: TextStyle(
                                                    fontSize: 12.0,
                                                    color: Colors.black,
                                                  ),
                                                ),



                                              ],
                                            ),

                                          ],

                                        ),
                                      ],
                                    ),
                                  )
                              )
                          )
                      ),

                    ),
                  ), //
                ],
              ),
            ),
          )
        ]));
  }
}
