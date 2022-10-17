import 'dart:io';

import 'package:flutter/material.dart';
import 'package:plant_disease_detector/constants/constants.dart';
import 'package:plant_disease_detector/services/disease_provider.dart';
import 'package:plant_disease_detector/src/home_page/models/disease_model.dart';
import 'package:plant_disease_detector/src/suggestions_page/components/plant_image.dart';
import 'package:plant_disease_detector/src/suggestions_page/components/text_property.dart';
import 'package:provider/provider.dart';

class Suggestions extends StatelessWidget {
  const Suggestions({Key? key}) : super(key: key);

  static const routeName = '/suggestions';

  @override
  Widget build(BuildContext context) {
    // Get disease from provider
    final _diseaseService = Provider.of<DiseaseService>(context);

    Disease _disease = _diseaseService.disease;
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: kMain,
        title: const Text('Sugerencias'),
      ),
      body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/4.jpg'), fit: BoxFit.cover),
          ),
          child: Padding(
            padding: EdgeInsets.all((0.004 * size.height)),
            child: Column(
              children: [
                Flexible(
                    child: Center(
                        child: PlantImage(
                  size: size,
                  
                  imageFile: File(_disease.imagePath),
                ))),
                
                
                
                Divider(
                  thickness: (0.0066 * size.height),
                  height: (0.013 * size.height),
                  
                  
                ),
                
                SizedBox(
                  height: size.height * 0.5,
                  child: ListView(
                    children: [
                      TextProperty(
                        title: 'Nombre de la Planta',
                        value: _disease.name,
                        height: size.height,
                      ),
                      /** 
                       * Text(
                        'Nombre Comun',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'SFBold'
                          ),
                      ),
                       * 
                      */
                      Divider(
                  thickness: (0.0066 * size.height),
                  height: (0.013 * size.height),
                ),
                      TextProperty(
                        title: 'Nombre Comun',
                        value: _disease.nombre_comun,
                        height: size.height,
                      ),
                      Divider(
                  thickness: (0.0066 * size.height),
                  height: (0.013 * size.height),
                ),
                      TextProperty(
                        title: 'Nombre cientifico',
                        value: _disease.nombre_cientifico,
                        height: size.height,
                      ),
                      Divider(
                  thickness: (0.0066 * size.height),
                  height: (0.013 * size.height),
                ),
                      TextProperty(
                        title: 'Lugar de donde proviene',
                        value: _disease.lugar_proviene,
                        height: size.height,
                      ),
                      Divider(
                  thickness: (0.0066 * size.height),
                  height: (0.013 * size.height),
                ),
                      TextProperty(
                        title: 'Lugar de adaptacion',
                        value: _disease.lugar_adaptacion,
                        height: size.height,
                      ),
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}
