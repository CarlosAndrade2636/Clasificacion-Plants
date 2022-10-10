import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'package:plant_disease_detector/constants/constants.dart';
import 'package:plant_disease_detector/services/classify.dart';
import 'package:plant_disease_detector/services/disease_provider.dart';
import 'package:plant_disease_detector/services/hive_database.dart';
import 'package:plant_disease_detector/src/home_page/components/greeting.dart';
import 'package:plant_disease_detector/src/home_page/models/disease_model.dart';
import 'package:plant_disease_detector/src/suggestions_page/suggestions.dart';
import 'package:provider/provider.dart';

class PantallaInicio extends StatefulWidget {
  //const PantallaInicio({Key? key}) : super(key: key);

  @override
  _PantallaInicioState createState() => _PantallaInicioState();
  static const routeName = '/';
}

class _PantallaInicioState extends State<PantallaInicio> {
  @override
  Widget build(BuildContext context) {
    // Get disease from provider
    final _diseaseService = Provider.of<DiseaseService>(context);

    // Hive service
    HiveService _hiveService = HiveService();

    // Data
    Size size = MediaQuery.of(context).size;
    final Classifier classifier = Classifier();
    late Disease _disease;

    return new Scaffold(





        appBar: AppBar(
          //title:Image.asset('assets/images/logo_ups.jpeg',
          //height: 50, fit: BoxFit.contain),

          title: Text("Acerca de "),
          actions: <Widget>[
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, "/info");
              },
              icon: Icon(Icons.info),
            )


                //const Text('Extended'),
                //const SizedBox(width: 16),


          ],
        ),

        //------------------------------------------
        


        //---------------------------------------


       

        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: SpeedDial(  //SpeedDial
          //onPressed: ()=> exit(0),
          //tooltip: 'Close app',
          //child: new Icon(Icons.close),
          icon: Icons.camera_alt,  
          label: const Text('Identificar'),
          spacing: 10,
          children: [
           // SpeedDialChild(
                /** 
            child: const FaIcon(
              FontAwesomeIcons.file,
              color: kWhite,
            ),*/
                /** 
            label: "Seleccionar foto",
            backgroundColor: kMain,
            onTap: () async {
              late double _confidence;
              await classifier.getDisease(ImageSource.gallery).then((value) {
                _disease = Disease(
                    name: value![0]["label"],
                    imagePath: classifier.imageFile.path);

                _confidence = value[0]['confidence'];
              });
              // Check confidence
              if (_confidence > 0.8) {
                // Set disease for Disease Service
                _diseaseService.setDiseaseValue(_disease);

                // Save disease
                _hiveService.addDisease(_disease);

                Navigator.restorablePushNamed(
                  context,
                  Suggestions.routeName,
                );
              } else {
                // Display unsure message

              }
            },
            */
                //),
            SpeedDialChild(   //SpeedDialChild
              
              child: const FaIcon(
                FontAwesomeIcons.camera,
                color: kWhite,
              ),
        
              label: "Tomar foto",
              backgroundColor: kMain,
              onTap: () async {    //
                late double _confidence;

                 await classifier.getDisease(ImageSource.camera).then((value) {  //await
                  _disease = Disease(
                      name: value![0]["label"],
                      imagePath: classifier.imageFile.path);

                  _confidence = value[0]['confidence'];
                });

                // Check confidence
                if (_confidence > 0.8) {
                  // Set disease for Disease Service
                  _diseaseService.setDiseaseValue(_disease);

                  // Save disease
                  _hiveService.addDisease(_disease);

                  Navigator.restorablePushNamed(
                    context,
                    Suggestions.routeName,
                  );
                } else {
                  // Display unsure message
                  

                }
              },
            ),
          ],
        ),
        backgroundColor: Color.fromARGB(255, 25, 25, 27),
        body: Stack(children: <Widget>[
          Image.asset(
              'assets/images/solo-green-nature-plants-wallpaper-preview.jpg',
              width: size.width,
              height: size.height,
              fit: BoxFit.cover),
          Container(
            width: size.width,
            child: ListView(
              //Pading por ListView
              padding: EdgeInsets.all(32.0),
              //child: Column(
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Bienvenidos al Detector de Plantas Medicinales",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 32.0,
                      fontWeight: FontWeight.bold),
                ),
                Image.asset(
                  'assets/images/FullLogo.png',
                  width: 300,
                  height: 200,
                ),
                Text(
                  "Esta aplicacion le permitira detectar plantas medicinales.Las plantas Fueron tomadas del Jardin Botanico de Cuenca",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 19.0),
                  softWrap: true,
                ),
                Text(
                  "Esta Aplicacion le ayuda a traves de la fotografia de la planta a identificarla y a conocer sus propiedades medicinales",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 19.0),
                  softWrap: true,
                ),
                Text(
                  "Esta aplicacion puede ser utilizada por personas que no tienen conocimientos de botanica y que desean conocer las propiedades medicinales de las plantas",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 19.0),
                  softWrap: true,
                ),
              ],
              //),
            ),
          )
        ]
        )
        );
  }
}
