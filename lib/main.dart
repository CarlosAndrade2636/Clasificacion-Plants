import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:plant_disease_detector/info.dart';
import 'package:plant_disease_detector/pantallaInicio.dart';
import 'package:plant_disease_detector/services/disease_provider.dart';
import 'package:plant_disease_detector/src/home_page/home.dart';
import 'package:plant_disease_detector/src/home_page/models/disease_model.dart';
import 'package:plant_disease_detector/src/suggestions_page/suggestions.dart';
import 'package:provider/provider.dart';
import 'dart:async';

String username = '';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(DiseaseAdapter());

  await Hive.openBox<Disease>('plant_diseases');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<DiseaseService>(
      //debugShowCheckedModeBanner: false,
      //title: 'Login PHP My Admin',
      create: (context) => DiseaseService(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Detectar Planta',
        // home: LoginPage(),
        routes: <String, WidgetBuilder>{
          // '/LoginPage': (BuildContext context) => LoginPage(),
          //'/home': (BuildContext context) => Home(),
          //'/pantallaInicio':(context) => PantallaInicio(),
          //'/profile': (context) => Profile(),
        },
        theme: ThemeData(primarySwatch: Colors.green, fontFamily: 'SFRegular'),
        onGenerateRoute: (RouteSettings routeSettings) {
          return MaterialPageRoute<void>(
              settings: routeSettings,
              builder: (BuildContext context) {
                switch (routeSettings.name) {
                  case Suggestions.routeName:
                    return const Suggestions();
                  case PantallaInicio.routeName:
                    return PantallaInicio();
                  case InfoPage.routeName:
                    return  InfoPage();
                  //case Home.routeName:
                    default:
                    //return const Home();
                    return  PantallaInicio();
                }
              });
        },
      ),
    );
  }
}
