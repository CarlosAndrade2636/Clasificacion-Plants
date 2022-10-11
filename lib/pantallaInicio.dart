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


    return Scaffold(
        appBar: AppBar(
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
                if (_confidence > 0.5) {   //0.8
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


                  _customShapeSnackBar(context: context);


                }
              },
            ),
          ],
        ),


        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(12),
            child: Column(
              children: [
                Container(
                  child: Container(
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Opacity(
                            opacity: 0.82,
                            child: Image(
                              width: 75,
                              height: 75,
                              image: AssetImage(
                                'assets/images/GIHP4C-2.png',
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'APP v1.0',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Bienvenidos al identificador de Plantas Medicinales',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(7)),
                    image: DecorationImage(
                      // colorFilter: ColorFiltered(colorFilter: C),
                        scale: 0.1,
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/solo-green-nature-plants-wallpaper-preview.jpg')),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Material(
                  elevation: 5.0,
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(7)),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: RichText(
                      textAlign: TextAlign.left,
                      text: TextSpan(children: [
                        TextSpan(
                          text:
                          'Esta aplicacion le permitira detectar plantas medicinales.Las plantas Fueron tomadas del Jardin Botanico de Cuenca. \n',
                          style: TextStyle(color: Colors.black54, fontSize: 18),
                        ),
                        TextSpan(
                          text: 'Esta Aplicacion le ayuda a traves de la fotografia de la planta a identificarla y a conocer sus propiedades medicinales.\n',
                          style: TextStyle(color: Colors.black54, fontSize: 18),
                        ),
                        TextSpan(
                          text:
                          'Esta aplicacion puede ser utilizada por personas que no tienen conocimientos de botanica y  '
                              'que desean conocer las propiedades medicinales de las plantas.',
                          style: TextStyle(color: Colors.black54, fontSize: 18),
                        ),
                      ]),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Material(
                  elevation: 5.0,
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(7)),
                  child: Container(
                    height: 50,
                    child: Center(
                      child: Text('Developed 🖤 By: Jonathan Atancuri &\n                                      Carlos Andrade'),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }

}

void _customShapeSnackBar({required BuildContext context}) {
  final snackBar = SnackBar(
    content: Text("Enfoque mejor la planta "),
    duration: Duration(seconds: 5),
    backgroundColor: Colors.green,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(5.00),
      ),
    ),
    behavior: SnackBarBehavior.floating,
  );

  _displaySnackBar(context: context, snackBar: snackBar);
}

void _displaySnackBar(
    {required BuildContext context, required SnackBar snackBar}) {
  //Scaffold.of(context).showSnackBar(snackBar);
  ScaffoldMessenger.of(context).showSnackBar(snackBar);

}